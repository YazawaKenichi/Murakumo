#### モータの PWM 制御

DRV8874 の PMODE ピンが GND に落ちているので PN/EN 制御となる。

PN/EN 制御は EN に 0 を入れると無条件でモータが Break する。

PN に 1 を入れて正転、0 を入れて逆転となる。

∴PN には常に 1 を入れ続けて、EN を PWM 制御する

#### ADC の話

正直複数チャンネル ADC (マルチプレクサ ADC ともいうらしい) のメリットが全然わからん。

#### ADC の Pin と Channel と Rank と analog[Index] の対応表
<table>
  <tr><th>Pin</th><td>PB1</td><td>PB0</td><td>PC5</td><td>PC4</td><td>PA7</td><td>PA6</td><td>PA5</td><td>PA4</td><th>Pin</th><td>PA3</td><td>PA2</td><td>PA1</td><td>PA0</td><td>PC3</td><td>PC2</td><td>PC1</td><td>PC0</td><th>Pin</th></tr>
  <tr><th>Channel</th><td>9</td><td>8</td><td>15</td><td>14</td><td>7</td><td>6</td><td>5</td><td>4</td><th>Channel</th><td>3</td><td>2</td><td>1</td><td>0</td><td>13</td><td>12</td><td>11</td><td>10</td><th>Channel</th></tr>
  <tr><th>Rank</th><td>1</td><td>3</td><td>5</td><td>7</td><td>9</td><td>11</td><td>13</td><td>15</td><th>Rank</th><td>16</td><td>14</td><td>12</td><td>10</td><td>8</td><td>6</td><td>4</td><td>2</td><th>Rank</th></tr>
  <tr><th>Index</th><td>0</td><td>2</td><td>4</td><td>6</td><td>8</td><td>10</td><td>12</td><td>14</td><th>Index</th><td>15</td><td>13</td><td>11</td><td>9</td><td>7</td><td>5</td><td>3</td><td>1</td><th>Index</th></tr>
</table>

偶数インデックスに左のセンサ、奇数インデックスに右のセンサが入る。<br>
[0] ~ [11] に本体のセンサ、[12] ~ [15] にセンサバーが入る。<br>
こうすることで、for 関数を使ってアナログ値をより簡単に扱うことが可能になる。<br>

#### 自分のプログラムの説明
C14 : SW1

キャリブレーションの動作
``` C
// int main(void) {
for(int i = 0; !HAL_GPIO_ReadPin(GPIOc, GPIO_PIN_14); i++)  // SW1 が押されるまで処理する
{
  for(int j = 0; ADC_CONVERTED_DATA_BUFFER_SIZE > 0; j++) // センサの最大値と最小値を更新する
  {
    // そこのセンサを使おうが使わなかろうがとにかくすべての ADC の値で最大値を出す。
    analogmax[j] = (analogmax[j] < analog[j]) ? analog[j] : analogmax[j];
    // そこのセンサを使おうが使わなかろうがとにかくすべての ADC の値で最小値を出す。
    analogmin[j] = (analogmin[j] > analog[j]) ? analog[j] : analobmin[j];
  }
}
```

デューティー比の算出
必要な要件
最大値と最小値
最大値を上回ってしまったら最大値を更新する
最小値を下回ってしまったら最小値を更新する
``` C
unsigned short int analogl, analogr;  // 最大でも 8000 までしか入らない。
unsigned short int analograte[CALIBRATIONSIZE] = {0};

// TIM6
// センサの個体差を無視するための計算処理
// #define USE_LONGSENSOR 1 の時はこの処理ではうまくいかないので注意。
for(int i = 0; i < CALIBRATIONSIZE; i++)
{
//  こうすると for の途中から analograte の値が変に変わる時ができてしまう。for 処理を一旦終わらせてから最小値と最大値を更新する処理をしてもいいと思う。
//  analogmax[j] = (analogmax[j] < analog[j]) ? analog[j] : analogmax[j]; // 自分に自分を代入するのは効率が悪いだろうか？いつか実験してみたい。
//  analogmin[j] = (analogmin[j] > analog[j]) ? analog[j] : analobmin[j];
  analograte[i] = ((analog[i] - analogmin[i]) * 1000) / analogmax[i]; // 最大値と最小値の間で 1000 分割した値出す。

  // こうなったら analograte の総和を取るのもアリ
  if(i % 2 == 0)
  {
    analogl += analograte[i];
  }
  else
  {
    analogr += analograte[i];
  }
  // CALIBRATIONSIZE が既に、使用するセンサの数と一致してくれているので、Long Sensor が未接続状態でもそこまでで総和を出してくれる。
}
```

センサ値をソートするプログラム
``` C
analogbuffers[SENSGETCOUNT][CALIBRATIONSIZE];

if(htim->Instance == TIM7)	// TIM7 // 0.1ms
{
  // 0.9ms かけて配列を埋める
  if(sensgettime >= SENSGETCOUNT) // public char sensgettime; #define SENSGETCOUNT 9
  {
    sensgettime = 0;
  }
  for(char index = 0; CALIBRATIONSIZE > index; index++)
  {
    analogbuffers[sensgettime][index] = analograw[index];
  }
}

if(htim->Instance == TIM11)  // TIM11 // 1ms
{
		for(unsigned char index = CALIBRATIONSIZE - 1; index > 0; index--)	// DownCounter
		{
			for(unsigned char count = SENSGETCOUNT - 1; count > 0; count--)	// DownCounter
			{
				for(unsigned char alphaindex = count; alphaindex > 0; alphaindex--)	// DownCounter
				{
					if(analogbuffers[alphaindex - 1][index] > analogbuffers[alphaindex][index])
					{
						uint16_t analogbuffer = analogbuffers[alphaindex - 1][index];
						analogbuffers[alphaindex - 1][index] = analogbuffers[alphaindex][index];
						analogbuffers[alphaindex][index] = analogbuffer;
					}
				}
			}
		}
}
```

```analogbuffers[][]``` の中身。
<table>
  <tr>
    <th>index \ alphaindex</th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>
    <th></th>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>sens_i</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
つまり ```alphaindex``` はそのままのセンサの値が入っている。```index``` はセンサの位置の値が入っている。
```alphaindex``` を捜査して ```index``` 番目のセンサの値をソートする。
```count``` には

### エンコーダのプログラムを実装する
1パルスあたりにタイヤが進む距離を求める。
2 PI * (タイヤ径 mm) * (ピニオンギア) / (スパーギア) / (エンコーダ分解能)
単位は mm / pulse となる。
タイヤ径をメートルで計算すれば1パルスあたりのメートルが出る。
変位次元についての式なので、計算周期（時間次元）は式から消去される。

【復習】

マルチプレクサとは、回路選択信号を受け取って回路を選択する。n 回路 n + 1 接点トグルスイッチのようなもの。

先輩の説明も、ネットの説明も、「二つのアナログが読めるよ」的なことをおっしゃる。

でも俺としては、「チャンネルが二つ以上あっても ADC ピンの数はひとつなんだから、二つのチャンネルで ADC を読んでも意味がないのでは？」という疑問がわく。

////////////////////////////// 従来のノート //////////////////////////////

プログラムのノート

センサの位置と Rank の対応表
奥 Rank                 05, 04 | 03, 02
前 Rank 16, 15, 14, 13, 07, 06 | 01, 00, 12, 11, 10, 09

analog 配列は uint16_t と、16bit で定義されてはいるものの、実際に入る値は 0 ~ 4095 (4096 かも...) の間なので、16bit すべては使っておらず、12bit で表現できる。
例えば、すべてのセンサの値が 4095 になったとして、これを片側 8 個分だけ足すと、
4095 * 8 = 32760
すなわち、片側のセンサの最大値は 32760 であり、片側のセンサの合計値を格納する変数のサイズは unsigned 15bit (最大値 32767) でギリギリ足りるはずである。
∴片側のセンサの合計値は uint16_t で格納しておけば良さそう。

  疑問
unsigned int 16bit 型から unsigned int 16bit 型を引く、計算結果は unsigned int 16bit 型で大丈夫だろうか？
ここでは便宜的に、右側のセンサ値を AnalogR とし、左側のセンサ値を AnalogL とする。
AnalogR >= AnalogL を満たしている場合は AnalogR - AnalogL > 0 となるので、計算結果を uint16_t としても大丈夫だろう。
しかし問題は AnalogR < AnalogL となっている場合である。
この場合は AnalogL - AnalogR に計算式を変更する必要が出てきてしまう。

ここで計算結果にマイナスを許したとしよう。
例えば、計算結果を格納する変数を signed int 型にする。
すると格納できる値の範囲は -32767 ~ 0 ~ 32768 の 65536 通りとなる。
これなら万が一 AnalogL == 32760 && AnalogR == 0 を満たしてしまった場合でも、AnalogR - AnalogL = -32760 となり、オーバーフローせずに値を格納することができる。
∴全センサの計算結果を格納する変数は signed int 型で問題ないことが分かった。
  以上
  
rightmotor, leftmotor に代入する式を考える。
「片側のモータがギリギリ反転しない」を目指して作った式。
leftmotor = commspeed + direction * (1000 - commspeed) / 32768;
rightmotor = commspeed - direction * (1000 - commspeed) / 32768;
こうするとどちらか一方が「めっちゃ黒！」ってなった時に白線がある方のタイヤが止まり、めっちゃ黒な方が 100% duty で回転する。
この式は PID 制御の比例のみ制御と似た式となっている。
分かりやすく書き換えると
PGain = (AnalogL - AnalogR) * KP
という式になっており、(AnalogL - AnalogR) == 0 を満たしたときに前進するための commspeed と、0 <= leftmotor, rightmotor <= 10000 を満たすような KP の値を計算している。
二度も計算させるのは嫌なので direction * (1000 - commspeed) / 32768 は変数に格納してもいい希ガス。
この値は -32,768,000 ~ 32,767,000 の値を取るので、型は int 型。
（int の範囲 -2,147,483,648 ~ 2,147,483,648)

# エンコーダ
PA8 -> 41 -> Encoder1_A -> EncoderLeft_A (TIM1_CH1)<br>
PA9 -> 42 -> Encoder1_B -> EncoderLeft_B (TIM1_CH2)<br>
PB4 -> 56 -> Encoder2_A -> EncoderRight_A (TIM3_CH1)<br>
PB5 -> 57 -> Encoder2_B -> EncoderRight_B (TIM3_CH2)<br>



