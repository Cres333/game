# 次の競技を選択
## 初期化
function util:term/reset-common
scoreboard objectives add _NEXT dummy
scoreboard players set $game _NEXT 0

## 先頭の競技を取得する
function core:game/priv/get

## 競技に合わせて呼び出す
function core:game/priv/call

## 競技がなかったら終了
execute if score $game _NEXT matches 0 run function core:term/start

## 破棄
scoreboard objectives remove _NEXT