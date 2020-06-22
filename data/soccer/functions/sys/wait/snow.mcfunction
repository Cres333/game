## 雪玉
# 雪玉を追いかけさせる
execute at @e[type=snowball] run tp @e[tag=ball,limit=1] ~ ~-1.5 ~

# ゴール判定
function soccer:sys/priv/check-throw-goal

# コーナー判定
scoreboard players set $cornor _ 0
execute as @e[type=snowball] at @s if block ~ 35 ~ red_stained_glass run scoreboard players set $cornor _ 1
execute as @e[type=snowball] at @s if block ~ 35 ~ yellow_stained_glass run scoreboard players set $cornor _ 2
execute as @e[type=snowball] at @s if block ~ 35 ~ orange_stained_glass run scoreboard players set $cornor _ 3

execute if score $cornor _ matches 1.. run function soccer:sys/priv/cornor
scoreboard players reset $cornor _