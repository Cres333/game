# ゲーム開始
## 初期化
scoreboard players set $gp _ 0
scoreboard players set $round _ 1

## 背番号を設定
function fenc:game/priv/setting-number

## TODO: 観覧プレイヤーを配置
gamemode spectator @a

## 選手を2人選び出す
function fenc:game/next