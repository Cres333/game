# 背番号の設定
scoreboard players set @a[predicate=util:join] _ID 0

execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=r,scores={_ID=0}] _ID 1
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=r,scores={_ID=0}] _ID 2
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=b,scores={_ID=0}] _ID 3
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=b,scores={_ID=0}] _ID 4
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=y,scores={_ID=0}] _ID 5
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=y,scores={_ID=0}] _ID 6
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=g,scores={_ID=0}] _ID 7
execute if data storage main {mode:multi} run scoreboard players set @r[limit=1,team=g,scores={_ID=0}] _ID 8

execute unless data storage main {mode:multi} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 1
execute unless data storage main {mode:multi} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 2
execute unless data storage main {mode:multi} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 3
execute unless data storage main {mode:multi} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 4
execute unless data storage main {mode:multi} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 5
execute unless data storage main {mode:multi} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 6
execute unless data storage main {mode:multi} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 7
execute unless data storage main {mode:multi} run scoreboard players set @r[limit=1,scores={_ID=0}] _ID 8
