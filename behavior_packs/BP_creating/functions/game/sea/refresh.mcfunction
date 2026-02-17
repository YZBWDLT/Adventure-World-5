# ===== 更新海洋 =====

#玩家的位置信息也会更新

#记录已刷新避免重复
scoreboard players set refresh data 1

#刷新怪物
kill @e[family=monster]
scoreboard players set sea_enemy1 data 0
scoreboard players set sea_enemy2 data 0
scoreboard players set sea_enemy3 data 0

#归还盾牌
give @a[tag=shield] shield
tag @a remove shield

#播放音乐
scoreboard players set music data 91
function music/replay