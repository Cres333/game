# 脱落検知
## ログアウトした
execute as @a[predicate=util:play,scores={_LOG=1..}] run function dodge:sys/priv/out

## 初期化
scoreboard players set $none _ 0

## ボールの存在チェック
execute unless entity @e[type=fireball] at @e[tag=ball] run scoreboard players set $none _ 1

## 爆発したらフィールドを狭める
execute if score $none _ matches 1 run function dodge:sys/priv/contract
