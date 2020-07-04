# ゴール処理
scoreboard players operation $temp _ = @s _ID

# チームスコアも更新
execute if entity @s[team=r] run scoreboard players operation $r SCORE = $time _
execute if entity @s[team=b] run scoreboard players operation $b SCORE = $time _
execute if entity @s[team=y] run scoreboard players operation $y SCORE = $time _
execute if entity @s[team=g] run scoreboard players operation $g SCORE = $time _

# 同一ID (同じチーム)のメンバーも一緒に対応する
execute as @a[predicate=util:join] if score @s _ID = $temp _ run gamemode spectator @s
execute as @a[predicate=util:join] if score @s _ID = $temp _ run clear @s
execute as @a[predicate=util:join] if score @s _ID = $temp _ run scoreboard players operation @s SCORE = $time _
execute as @a[predicate=util:join] if score @s _ID = $temp _ run scoreboard players reset @s PLAY
