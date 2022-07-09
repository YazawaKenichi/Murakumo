## プログラムの思考

### サイドセンサを実装したい。

#### 要件<br>
左を見たら曲率変化として扱う。<br>
右を見たら止まる。<br>
四月の目標としては「右を見て止まる」実装できればいい。<br>
但し、交差で誤作動を起こさないように左右のセンサを正しく動作させる必要がある。<br>
<br>
白読みを 1, 黒読みを 0 とし、左右合わせて 2bit 保存。<br>
最大でも 2bit * 3patern あれば状態を把握できるので 6bit 使用する。<br>
uint16_t 型で保存しても上位 2bit が余る。何かに使えないかなぁ...<br>
<br>
```
uint8_t 型の値を abcd efgh とする。
abcd efgh == 0 の時
  gh の値を更新していく
abcd efgh != 0 の時
  ef != gh // 初期状態と次の状態が違う時
    ef の値を更新していく
    ef == 00 の時
      gh == 01 の時
        ef = 01
      gh == 10 の時
        ef = 10
      gh == 11
        abcd efgh = 0
  または ef == gh // 初期状態と次の状態が同じとき
    何もしない
```
こんなプログラムできたらかっこいいかも...<br>
でも失敗しそうな気がするし、考えにくいから一旦もっと簡単な方法でプログラムしたい。<br>
<br>
<br>
左右の状態を常に格納している変数と、前回の値を保存している変数と、変化が起こった時にその変化の順番を記憶しておく変数の三つを用意するともっと簡単になりそう。（賢くはないけど）<br>
```
char sidesens, sidesensbuf, sidemarker
timer_0.1ms()
{
  sidesens = !(右センサの状態) 1 : 0;
  sidesens += !(左センサの状態) 2 : 0;
}
timer_1ms()
{
  if(sidesensbuf != sidesens)
  {
    // 前回と違う時
    sidemarker += 2 << sidesens;
  }
  sidesensbuf = sidesens;

  if(sidemarker & 0b11)
  {
    if((sidemarker & 0b1100 == 0b1100) || (sidemarker & 0b0011 == 0b0011))
    {
      交差
    }
    else if(sidemarker & 0b11 == 0b01)
    {
      右読み
    }
    else if(sidemarker & 0b11 == 0b10)
    {
      左読み
    }
  }
  else
  {
    // 異常
  }
}
```
<br>
コメントを正しい処理に置き換えることをしてみる。<br>

```
char sidesens, sidesensbuf, sidemarker
timer_0.1ms()
{
  sidesens = !(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_2) 1 : 0;
  sidesens += !(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_11) 2 : 0;
}
timer_1ms()
{
  if(sidesensbuf != sidesens)
  {
    // 前回と違う時
    if(sidemarker == 0)
    {
      // サイドマーカがゼロのままなら
      sidemarker = sidesens;
      // 下位二ビットに現在の状態を保管
    }
    else
    {
      // サイドマーカがゼロじゃないとき
      sidemarker += 2 << sidesens;
      // 上位二ビットに次の状態を保管
      sidemarker += 0b10000;  // チェンジビットを立てる
    }
    // 
  }
  sidesensbuf = sidesens;

  if(sidemarker & 0b11 && sidemarker & 0b10000) // チェンジビットが立ってる時
  {
    if((sidemarker & 0b1100 == 0b1100) || (sidemarker & 0b0011 == 0b0011))
    {
      // 交差
      /*
        ここの分岐に入る状態リスト
        sidemarker
        0b0011
        0b0111
        0b1011
        0b1100
        0b1101
        0b1110
        0b1111  // 上位二ビットと下位二ビットで変化がないので本当はこれもここに来れない。
      */
    }
    else if(sidemarker & 0b11 == 0b01)
    {
      motorenable = 0;
      /*
        ここの分岐に入る状態リスト
        sidemarker
        0b0001
        0b0101  // 上位二ビットと下位二ビットで変化がないので本当はこれもここに来れない。
        0b1001  // 現実問題これはありえない
      */
    }
    else if(sidemarker & 0b11 == 0b10)
    {
      // 左読み
      // 加減速走行
      /*
        ここの分岐に入る状態リスト
        sidemarkder
        0b0010
        0b0110  // 現実問題これはありえない
        0b1010  // 上位二ビットと下位二ビットで変化がないので本当はこれもここに来れない。
      */
    }
      sidemarker = 0; // サイドマーカを初期化する

  }
  else
  {
    // 両方黒読みしてる時の処理
  }
}
int main()
{
  sidesensbuf = 0;
  sidemarker = 0;
}
```
最終的にはこうなった。
```
		// SubSensor Controller
		subsensl = !HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_11) ? 1 : 0;
		subsensr = !HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_2) ? 1 : 0;

		// SubSensor Controller
		sidesens = !(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_2)) ? 1 : 0;
		sidesens += !(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_11)) ? 2 : 0;

		if(sidesensbuf != sidesens)
		{
			//
			if(sidesensbuf != sidesens)
			{
				if(sidemarker == 0)
				{
					sidemarker = sidesens;
				}
				else
				{
					sidemarker += 2 << sidesens;
					sidemarker += 0b10000;
				}
			}
		}

		if((sidemarker & 0b11) && (sidemarker & 0b10000))
		{
			if(((sidemarker & 0b1100) == 0b1100) || ((sidemarker & 0b0011) == 0b0011))
			{
				// cross
			}
			else if((sidemarker & 0b11) == 0b01)
			{
				motorenable = 0;
			}
			else if((sidemarker & 0b11) == 0b10)
			{
				// break accel
			}
			sidemarker = 0;
		}
		else
		{
			// black
		}
		sidesensbuf = sidesens;
```
うまく挙動しなかった。
左右のどちらかが白から黒・黒から白に変化することで値（sidemarker）が更新されることは確認した。

もっと別のプログラムを考えてみようと思う。
```
サイドセンサが変化した時
  何回目の変化なのかを記憶する。カウントをインクリメント。
  今の状態を格納する。カウントを使ってビットシフト。
  今の状態がゼロゼロの時。
    二番目のパターンを見る
      二番目のパターンがイチイチの時
        交差
      二番目のパターンがゼロゼロの時
        一番目のパターンを見る
          一番目のパターンがゼロイチの時
            右読み
          一番目のパターンがイチゼロの時
            左読み
      カウントを初期化する。
  今の状態がゼロゼロではないとき
    何回目の変化なのかを記録する。
```
```
subsens = 0;
subsens = !HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_2) ? 1 : 0; // right
subsens += !HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_11) ? 2 : 0; // left
buffer = 1;
if(subsens != subsensbuf)
{
  marker += subsens << (2 * changetime);
  if(subsens == 0b00)
  {
    char first = (subsens & 0b0011);
    char second = (subsens & 0b1100) >> 2;
    if(second == 0b11)
    {
      // cross
    }
    else if(second == 0b00)
    {
      if(first == 0b01)
      {
        // right
      }
      else if(first == 0b10)
      {
        // left
      }
    }
    count = 0;
    buffer = 0;
  }
  else
  {
    count++;
  }
}
if(buffer)
{
	subsensbuf = subsens;
}
```
### エンコーダを実装したい
#### できること<br>
カウントスタートしてからカウントストップするまでにカウントしたパルス数を読み取る。

#### 要件<br>
１パルスあたりに進む長さを計算する。（理論値）<br>
(１パルスあたりに進む距離) = (円周率) * (タイヤ直径) * (ピニオンギア歯数) / (スパーギア歯数) / (モータ一回転あたりのパルス数)<br>
単位は mm / pulse となるが、これはタイヤの直径をミリメートルで計測した場合であり、メートルで直径を定義すれば m / pulse となる。<br>
実際の値を代入して計算したところ、<br>
0.041274 mm / pulse となる。<br>
マイコンでは FPU を有効化していないのですべての計算を整数で処理する必要がある。<br>
そこで、タイヤの直径をマイクロメートル単位で計算することにする。<br>
<br>
【補足】<br>
ロボトレコースの全長はルールで 60 m 以下と決められている。<br>
mm 単位とすれば uint16_t ( 最大値 65535 ) に収まる範囲となっている。<br>
mm / pulse で計算してみて、精度が欲しくなったら um / pulse にしても良いと思う。<br>
【補足の補足】<br>
mm / pulse のまま LENGTHPERPULSE を求めると 0.041274 mm / pulse となり、FPU を有効化していないマイコンでは整数で計算する必要があり、1000 倍した um / pulse 単位で計算することになる。
今回のプログラムでは FPU を有効化していないのでこの um / pulse で計算することにする。
<br>
### ロータリスイッチを使いたい
ロータリスイッチで切り替えられるようにする機能たち<br>
リセットした瞬間に決まるモード 16種類<br>
リセットする前に決めるモード 16種類<br>
256 種類のプログラムを実行することが可能。<br>
リセットした瞬間に決まるモードについてはあまり需要がないかもしれない。<br>
前提として、SW1（ロータリスイッチ側にあるやつ）が決定。<br>
SW2（中央のやつ）がストップ・キャンセル
<table>
	<tr><th>Rotary_value</th><th>起動後の機能</th><th>リセット時の機能</th></tr>
	<tr><th>0</th><td>キャリブレーション</td><td>フロントセンサ＋メインセンサ</td></tr>
	<tr><th>1</th><td>走行方法１（等速走行）（ROM 書き込み有効）</td><td>メインセンサのみ</td></tr>
	<tr><th>2</th><td>走行方法２（加減速走行）</td><td>フロントセンサのみ</td></tr>
	<tr><th>3</th><td>走行方法３（加減速走行）</td><td></td></tr>
	<tr><th>4</th><td>D_ 出力</td><td></td></tr>
	<tr><th>5</th><td>ROM データの表示</td><td></td></tr>
	<tr><th>6</th><td></td><td></td></tr>
	<tr><th>7</th><td></td><td></td></tr>
	<tr><th>8</th><td></td><td></td></tr>
	<tr><th>9</th><td></td><td></td></tr>
	<tr><th>A</th><td></td><td></td></tr>
	<tr><th>B</th><td></td><td></td></tr>
	<tr><th>C</th><td></td><td></td></tr>
	<tr><th>D</th><td></td><td></td></tr>
	<tr><th>E</th><td></td><td></td></tr>
	<tr><th>F</th><td></td><td></td></tr>
</table>
操作感を決める。<br>
電源が入っていない状態でロータリスイッチを設定する。<br>
電源を入れたときにロータリスイッチの値でプログラムを変更する。<br>
一度スイッチを押してモード選択画面に入る。<br>
モードを選択する。<br>
enter スイッチを押す。<br>
どのモードが選択されているかを判断する。<br>
モードによって処理を分岐する。<br>
esc スイッチを押す。<br>
どのモードが選択されているかを判断しなくなる。
<br>
モードの開始と終了と共にタイマーの開始と終了をすると効率がいいかも。<br>
<br>
memo<br>
TIM6 (1ms) : PID	// 走る時に有効にする。<br>
TIM10 (1ms) : SIDESENSOR, ENCODER	// 走る時に有効にする。<br>
	TIM6 とまとめることができるならまとめたい。<br>
TIM11 (1ms) : ROTARY, SWITCH	// 常に有効にしておく<br>
TIM7 (0.1ms) : sensget sort<br>
キャリブレーションするときと走る時に有効にする。<br>
割り込み周期が速すぎる場合は周期を遅くするか、そもそもソートしなくてもいいかも。<br>

### エンコーダの読み取り値から左右のモータの速度差を出して旋回半径を求める。
この辺の処理はロボット外でやってもいい。<br>
数式<br>
(右折半径) + ((トレッド) / 2) : (右折半径) - ((トレッド) / 2) = (左速度) : (右速度)<br>
右折半径を R<br>
トレッド / 2 を T<br>
左速度をVl<br>
右速度をVr<br>
とすると。<br>
<br>
Flash ROM を消して書き込んで読み込む。<br>
まずは関数の作成。<br>
```
// TARGET_SECTOR を変更したら start_address と end_address も変更する必要がある。
#define TARGET_SECTOR FLASH_SECTOR7;	// 読み書きするセクタを指定
const uint32_t start_address = 0x08060000	// Sector7 Start Address
const uint32_t end_address = 0x0807FFFF	// Sector7 End Address

// TARGET_SECTOR に指定したセクタを削除する。
void eraseFlash(void)
{
    // FLASH_EraseInitTypeDef は削除のための設定をまとめた構造体
	FLASH_EraseInitTypeDef erase;	// インスタンスの生成
    // セクタを選択して削除するか、全削除するか選択する。
	erase.TypeErase = FLASH_TYPEERASE_SECTORS;	// セクタを選ぶ
    // 削除するセクタの指定。
    erase.Sector = TARGET_SECTOR;   // #define TARGET_SECTOR FLASH_SECTORx
    // 削除したい 1 セクタ分を指定する。
    erase.NbSectors = 1;
    // マイコンの電圧を指定する。
    erase.VoltageRange = FLASH_VOLTAGE_RANGE_3;
    // 
    uint32_t pageError = 0;

    // セクタを削除する。
    // HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef * pEraseInit, uint32_t *SectorError); で定義されている。
    // uint32_t *SectorError には削除が失敗した場合にそのセクタのポインタが入る。
    // 問題なく削除できた場合は 0xFFFF が入る。
    HAL_FLASHEx_Erase(&erase, &pageError);
    /*
    if(pageError == 0xFFFF)
    {
        printf("Erase Collect!\r\n");
    }
    */
}

// 使う時は writeFlash(start_address, (uint64_t*)maze_data, sizeof(MAZE_DATA));
void writeFlash(uint32_t address, uint64_t *data, uint32_t size)
{
    // FLASH のアンロック
    HAL_FLASH_Unlock();
    // セクタの削除
    eraseFlash();

    // address から address + size まで add を移動する。
    for(uint32_t add = address; add < (address + size); add++)
    {
        // バイトを書き込む。
        // HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data); で定義される。
        // uint32_t TypeProgram で何バイト書き込むのかを設定する。
        // #define FLASH_TYPEPROGRAM_BYTE ((uint32_t)0x00U)
        // #define FLASH_TYPEPROGRAM_HALFWORD ((uint32_t)0x01U)
        // #define FLASH_TYPEPROGRAM_WORD ((uint32_t)0x02U)
        // #define FLASH_TYPEPROGRAM_DOUBLEWORD ((uint32_t)0x03U)   // 数字の末尾に U を付けると符号なし整数(unsigned)を意味する。
        // uint32_t Address に uint64_t Data を書き込む。
        HAL_FLASH_Program(FLASH_TYPEPROGRAM_BYTE, add, *data);
        // データポインタを加算する。つまり data に渡された配列または構造体の、次の要素に移る。
        data++;
    }
    
    // ライトプロテクトを有効化。
    HAL_FLASH_Lock();
}

// 使う時は loadFlash(start_address, (uint64_t*)maze_data, sizeof(MAZE_DATA));
void loadFlash(uint32_t address, uint64_t *data, uint32_t size)
{
    // データをコピーする。
    memcpy(data, (uint64_t*)address, size);
}
```
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



