### プログラムの思考

#### サイドセンサを実装したい。

要件<br>
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
<br>
<br>
<br>
<br>



