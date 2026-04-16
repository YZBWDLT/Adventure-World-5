# ===== 更新时间神庙 =====

#当每次进入时间神庙时执行此命令
#怪物会重新生成，但机关不会

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#复原陶罐
fill -240 -55 37 -236 -55 37 aw:decorated_pot_type1
fill -223 -55 29 -221 -55 29 aw:decorated_pot_type1

#复原坐标笔记
clone -238 -57 48 -238 -57 48 -238 -55 48

#刷新怪物
kill @e[family=monster]
scoreboard players set 8_pe_enemy1 data 0
scoreboard players set 8_pe_enemy2 data 0
scoreboard players set 8_pe_enemy3 data 0

#播放音乐
scoreboard players set music data 131
function lib/utils/music/replay