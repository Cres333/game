# ゲームの機構
## 初期化
scoreboard players set $end _ 0

## エフェクト追加
effect give @a[predicate=util:join] resistance 1000000 100 true

## 選手をTPする
tp @a[predicate=util:join] 1102 37 -1364 180 0
gamemode adventure @a[predicate=util:join]
scoreboard players set @a[predicate=util:join] PLAY 1

## ボートを用意する
give @a[predicate=util:play] oak_boat

## 壁を消す
fill 1109 36 -1354 1091 40 -1346 air
fill 1109 36 -1346 1091 38 -1346 cyan_stained_glass

function draft:boat/sys/wait/loop
