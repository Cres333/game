# サッカー

## Storage設定
main {game:soccer,join:4,team:true}

## 全体の流れ
### 初期化
function soccer:init/init
### フィールド生成
function soccer:init/field
### ゲーム説明
function soccer:init/description
### メンバー選出
function soccer:init/select-member
### チーム構成
function soccer:init/generate-team
### ゲーム開始
function soccer:game/start
### 次のゲーム
function soccer:game/next
### スコア/メダル計算
function soccer:term/score
### 終了
function soccer:term/term