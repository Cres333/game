# フィールド削除
# TODO: フィールド座標
## フィールドを読み込み
forceload add 0 0 0 0

## 各エリアを削除
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air

## フィールドの読み込みを解除
forceload remove 0 0 0 0

## スケジュールを削除
schedule clear relay:sys/wait/loop

## ゲーム設定を削除
scoreboard objectives remove _R
scoreboard objectives remove _B
scoreboard objectives remove _Y
scoreboard objectives remove _G

## 共通処理をリセット
function util:term/reset-common