# 表示用のスコアボードを用意
## 総メダル獲得数
scoreboard objectives add _SHOW_MEDAL dummy "総メダル獲得数"
scoreboard players operation 赤チーム _SHOW_MEDAL = $r _MEDAL
scoreboard players operation 青チーム _SHOW_MEDAL = $b _MEDAL
scoreboard players operation 黄チーム _SHOW_MEDAL = $y _MEDAL
scoreboard players operation 緑チーム _SHOW_MEDAL = $g _MEDAL

## チームポイント
scoreboard objectives add _SHOW_POINT dummy "チーム合計ポイント"
scoreboard players operation 赤チーム _SHOW_POINT = $r POINT
scoreboard players operation 青チーム _SHOW_POINT = $b POINT
scoreboard players operation 黄チーム _SHOW_POINT = $y POINT
scoreboard players operation 緑チーム _SHOW_POINT = $g POINT
