## 初期化
function storage:settings/game
function storage:settings/score
function core:init/score
function core:init/teams

## チーム分けの台を用意する
clone 7 1 37 29 5 59 1048 32 -1357

## それぞれの人数表示用のスコアボードを用意する
scoreboard objectives add _TEAM dummy ":: チーム参加人数 ::"
scoreboard objectives setdisplay sidebar _TEAM

## チーム分け完了用の看板を用意する
setblock 1048 32 -1348 birch_sign[rotation=4]{Color:"black",Text2:'{"text":"チーム分け完了","bold":true,"clickEvent":{"action": "run_command","value": "/function core:play/finish"}}'}

## キャンセル用の看板を用意する
setblock 1048 32 -1344 birch_sign[rotation=4]{Color:"black",Text2:'{"text":"キャンセル","bold":true,"clickEvent":{"action": "run_command","value": "/function core:play/cancel"}}'}

## チーム人数を変動させる
function core:play/wait/team
