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
<br>
<br>
<br>
<br>
<br>



