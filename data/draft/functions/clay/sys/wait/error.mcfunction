# 台から降りたら強制終了
execute as @p[predicate=util:play] at @s if block ~ ~-1 ~ red_concrete run function clay:sys/priv/play/error

# 豚のエフェクト
execute as @e[type=pig] at @s run particle minecraft:cloud ~ ~ ~-1 0 0 0 0 3

execute if score $summon _ matches ..4 run schedule function draft:clay/sys/wait/error 5t