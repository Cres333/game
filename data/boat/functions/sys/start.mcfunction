# システム開始処理
## 全員に弓を渡す
give @a bow{Unbreakable:true,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Amount:-1,Operation:1,UUID:[I;0,0,0,1]}]}

## 壁を消す
fill 1109 37 -1347 1091 39 -1352 air

function boat:sys/wait/loop
