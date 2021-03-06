# 次の選手の準備
## 初期化
scoreboard players set $next _ 0

## 次の選手の選択
function clay:game/priv/next-player

## 次の選手がいないが、1ラウンド目の場合
execute if score $next _ matches 0 if score $round _ matches 1 run function clay:game/priv/next-round

## 次の選手がいる場合
execute if score $next _ matches 1 run function clay:sys/main

## 次の選手がいない場合
execute if score $next _ matches 0 run schedule function clay:term 5s
