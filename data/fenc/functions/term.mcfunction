# スコア/メダル計算
function util:score/point

# フィールド削除
# TODO: フィールド座標
fill 0 0 0 0 0 0 air

## スコアボード破棄
scoreboard objectives remove _ID
scoreboard objectives remove _GP
scoreboard objectives remove _ATTACK
scoreboard objectives remove _DAMAGE

## 次のゲーム
function core:game/next
