# ゲームの機構
## 初期化
scoreboard players set $end _ 0

## 選手をTPする
function fenc:sys/priv/setting-position

## 選手に剣を持たせる
give @a[predicate=util:play] iron_sword{Enchantments:[{id:"minecraft:knockback",lvl:100}]}

## スピード上昇エフェクトをかける
effect give @a[predicate=util:play] speed 100000 5 true

## 何回戦かの表示
title @a times 10 80 10
execute if score $round _ matches 1 run title @a title {"interpret":true,"storage":"lang","nbt":"fenc.round[0]"}
execute if score $round _ matches 2 run title @a title {"interpret":true,"storage":"lang","nbt":"fenc.round[1]"}
execute if score $round _ matches 3 run title @a title {"interpret":true,"storage":"lang","nbt":"fenc.round[2]"}

## カウントダウン開始
schedule function util:count/start 5s

## カウントダウン中の攻撃判定
schedule function fenc:sys/priv/count 5s
