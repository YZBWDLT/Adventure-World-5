# ===== 更新五色山 =====

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#刷新怪物
kill @e[family=monster]
scoreboard players set badland_enemy1 data 0
scoreboard players set badland_enemy2 data 0

#播放音乐
scoreboard players set music data 141
function music/replay