# サッカーの処理
## スコアボードなどのフラグ
- _HAS: 0(ボールを持っていない人) / 1(ボールを持っている人)
- _COOL: 0(ボールを奪う権利のある人) / 1..(ボールを奪う権利のない人 + 奪う権利を得るまでのtick数)

## 基本処理
### 切り替わったタイミングでエフェクトを付ける
- _COOL=0の人はLuckをつける
- _COOL=1..の人はLuckを消す
- _COOL=1..の人は毎tick_COOLを1下げる
- _HAS=0の人はSpeedをつける
- _HAS=1の人は3秒Speedupしてから消す

### 落ちているボールを拾う
- _COOL=0の人が拾える
- 全員を_HAS=0にする
- 拾ったら_HAS=1にする
- distance=..5の人を_COOL=60にする

### ボールを持っている人から奪う
- _COOL=0の人が_HAS=1の人をなぐったときに奪う
- 全員を_HAS=0にする
- 奪った人を_HAS=1にする
- distance=..10の人を_COOL=100にする

### ボールを蹴る(投げる)
- _HAS=1の人が雪玉を投げたときに蹴る
- 全員を_HAS=0にする
- 投げた人を_COOL=100にする

## コーナー処理
- 赤の枠外に出たら、赤のエリアに落とす
- 白の枠外に出たら、白のエリアに落とす
- 橙の枠外に出たら、橙のエリアに落とす

## ゴール後の処理
- 得点を入れられた方のエリア(赤 or 橙)に落とす
- 全員を_COOL=0にする
- 全員を_HAS=0にする
