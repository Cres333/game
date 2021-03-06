## ゲームモード設定
data merge storage main {game:weight}

## スコア設定
scoreboard objectives add _EFFECT minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add _CLICK minecraft.used:minecraft.carrot_on_a_stick "クリック数"
scoreboard objectives add _LIFE dummy "ライフ"
scoreboard objectives add _SHOW dummy "右クリック連打数"
scoreboard objectives add _ID dummy "ID"

## フィールド生成
clone 0 1 0 32 5 32 1043 32 -1362 masked normal

## ボスバー
bossbar add life1 "ライフ"
bossbar add life2 "ライフ"
bossbar add life3 "ライフ"
bossbar add life4 "ライフ"
bossbar add life5 "ライフ"
bossbar add life6 "ライフ"
bossbar add life7 "ライフ"
bossbar add life8 "ライフ"

## 説明の呼び出し
data modify storage lang temp merge from storage lang weight
function util:lang/description
