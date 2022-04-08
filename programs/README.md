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
``` C
// TIM6
analogl = analog[16]
```

【復習】

マルチプレクサとは、回路選択信号を受け取って回路を選択する。n 回路 n + 1 接点トグルスイッチのようなもの。

先輩の説明も、ネットの説明も、「二つのアナログが読めるよ」的なことをおっしゃる。

でも俺としては、「チャンネルが二つ以上あっても ADC ピンの数はひとつなんだから、二つのチャンネルで ADC を読んでも意味がないのでは？」という疑問がわく。



