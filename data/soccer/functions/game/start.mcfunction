# scoreboard 設定
scoreboard players set $time _ 3600

# bossbar 設定
bossbar set time players @a
bossbar set time visible true

# プレイヤー関係のscore設定
scoreboard players set @a[predicate=util:play] _COOL 0
scoreboard players set @a[predicate=util:play] _HAS 0

# チームを選択
function soccer:game/priv/select-team

# TODO: 開始前の処理
