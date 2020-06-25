# nubesuko-fantasy-kit
nubesuko-fantasyはlinuxのコマンドラインで動く簡易的なゲームを作るためのキットです

## BGMデータはセットされていません。各自で用意してください
## 仕様
nubesuko-fantasy-kitは以下のような構造になっています
### boss
ここには各種類の敵との対戦シーンのスクリプト、およびその素材が入っています。
#### nubesuko.sh
バトルシーンのメインのプログラム
#### nubesuko.txt
敵の姿(AA)
#### nubesuko-nano.txt
nubesuko.txtと同じ内容。nanoを使用する際に使用します
#### bgm.mp3


### op.sh
オープニングのプログラム
### op.txt
op1.txt→op2.txt→...→op.txt

という流れでスライドショーされます
### op.mp3

### nubesuko-fantasy
これを実行することでゲームが始まります
