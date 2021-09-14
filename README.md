# Murakumo
ロボトレ

- [x] 種類を決める
 - [x] 基板がシャーシかシャーシの上に基板か > シャーシの上に基板 ∵ 自由度が高そう（基板だけ取り換えるとかいう改造も可能）
 - [x] センサステアかステア固定か > センサ固定 ∵ シンプルな設計ができる
 - [x] 対向二輪かスキッドステアか4輪ステアか > スキッドステア

- [x] サイズ・重量
 - [x] サイズ > H W100 D (mm) 可能な限り小さくする。∵ 小さいということは必然的に質量も小さくなるから。
 - [x] 重量 > 100 (g)

- [ ] センサバーの長さ・トレッド・ホイールベース
 - [ ] センサバーの長さ > センサバー以外の部分と同じ長さ
 - [ ] トレッド > 100 - 13 ∵ トレッドが 100 でタイヤ幅が 13 というのが先に決まったから。
 - [ ] ホイールベース > 極めて短く ∵ タイヤの軸方向のモーメントを小さくするため。

- [x] 最高速度・最高加速度
 - [x] 最高速度 > 8.5 (m/s) ∵ 6 ~ 7 (m/s) あれば十分で最強が 10 (m/s) なら、間を取って 8.5 (m/s) で良いかなって
 - [x] 最高加速度 > 17 (m/s/s) 厳密には 16.9851178 (m/s/s) 数式的には 1.732 * g (但、ここにおける g とは重力加速度) ∵ 最大加速度で加速したときにスリップしないギリギリの加速度がこれだった。

- [x] タイヤ径・幅
 - [x] 径 > 20 (mm) (直径)
 - [x] 幅 > 13 (mm)
 - [x] タイヤには井口先輩の機体にくっついてるシールを使う。

- [x] 最高速度から必要な出力回転数を求める > 8117 (rpm) 厳密には 8116.902098 (rpm) 数式的には (8.5 * 10^3 * 60) / (2pi * 10) = 25500 / pi ※
- [x] 最高加速度から必要な出力トルクを求める > 17000 (mNm) 厳密には 16985.1178 (mNm) 数式的には 1.732 * g * 100 * 10 = 1732 * g ※これを超えたトルクを出すとスリップする。また、片側の車輪のトルクはこれの 1/2 倍となる。
- [x] この時点でパワー（仕事率）は 137989000 (W) 厳密には 137866538.3 (W) 数式的には (25500 / pi) * (1732 * g)

- [x] バッテリ > Hyperion G8 HV 3.7V 220mAh

- [x] モータ > DCX 10 L 貴金属ブラシ 1.5V
- ブラシレスモータは、モータ外部に複数の制御回路を組む必要があり、回路が全体的に複雑なものになってしまうため、今回はコンセプトにそぐわないとして、採用を見送りとする。 [詳細はこちら](https://www.orientalmotor.co.jp/tech/reference/brushless01/)
- 尚、優良なブラシレスモータとして、maxon EC 4 0.5W 3V をメモしておく。

- [ ] ギヤ比 > ギヤ比って回転数で決めるのかトルク比で決めるのか、どっちで決めた方がいいのか... maxon motor のカタログの P54 くらいを見てヒントを探す。
- 回転数とトルクをまとめると...
- 出力回転数
- 入力回転数
- 出力トルク
- 入力トルク

##### メモ
小さいギヤと大きいギヤが一つになってるやつの特徴（小さいやつを「入力ギヤ」、大きいやつを「出力ギヤ」とする）
- 回転数が同じ => 角速度が同じ
- 接戦方向成分の速度が大きくなる（∵v = rw）
- トルクはどうなる？半径は大きくなったが、同じ力が伝達されるとは限らないぞ？-> 同じ力が伝達されることの証明は必要？
- ゆーて普通の減速比と同じよ
- ###### ここから自分なりの考察
- (減速比) = (外側歯車の角速度) / (内側歯車の角速度) = (2pi * 外側歯車の回転数) / (2pi * 内側歯車の回転数) = (外側歯車の回転数) / (内側歯車の回転数)

- スキッドステアのトルクを考えるときは、同じ車輪径の対向二輪として考えることができる。

##### 復習
- (減速比) = (タイヤの角速度) / (モータの角速度)
- (仕事率(パワー)) = (トルク) * (角速度)
- ギヤ間で仕事率は保存される
- ∴ (減速比) = (モータのトルク) / (タイヤのトルク) とも言える。
- 深く調べてみると、減速比の定義は
- (減速比) = (ピニオンギアの歯数) / (スパーギアの歯数)　のようだ。これが結局 (スパーギアの角速度) / (ピニオンギアの角速度) になるっぽい。
- 速度伝達比 というのもあって、これは歯車列において最初と最後しか見ない。
- (速度伝達比) = (最後の歯車の歯数(作用側)) / (最初の歯車の歯数(動力側)) 二段で考えれば減速比と同じ考えで良いんじゃね？

- トルクは電流に比例し、角速度は起電力に比例する。この時の比例定数をそれぞれ、「トルク定数」「回転数定数」と呼ぶ。
- モータの等価回路は、抵抗と電源とみなすことによって V = RI + E の式が得られる。これに上記比例式を適応すると、トルクから回転数を求める一次関数が得られる。
- 回転数とトルクの関係式 : w = - (k_w / k_t) * R * t + k_w * V (w : 回転数 k_w : 回転数定数 k_t : トルク定数 R : レジスタンス V : 公称電圧)
- 定格トルク以下なら何をやってもいい。定格トルクを超えたいときは一瞬だけ！
