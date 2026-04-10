# ===== 更新海底神殿 =====

#当每次进入海底神殿时执行此命令
#怪物会重新生成，但机关不会
#在通关之前BOSS会重新生成

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#复原陶罐
setblock -124 -48 143 aw:decorated_pot_type1
setblock -120 -48 143 aw:decorated_pot_type1
setblock -124 -48 165 aw:decorated_pot_type1
setblock -120 -48 165 aw:decorated_pot_type1
fill -117 -48 171 -117 -48 173 aw:decorated_pot_type2
setblock -100 -48 143 aw:decorated_pot_type1
setblock -96 -48 143 aw:decorated_pot_type1
setblock -148 -47 143 aw:decorated_pot_type1
setblock -144 -47 143 aw:decorated_pot_type1
fill -165 -57 161 -157 -57 161 aw:decorated_pot_type1

#复原坐标笔记
clone -127 -62 172 -127 -62 172 -127 -48 172

#刷新怪物
kill @e[family=monster]
kill @e[type=thrown_trident]
scoreboard players set 6_monument_enemy1 data 0
scoreboard players set 6_monument_enemy2 data 0
scoreboard players set 6_monument_enemy3 data 0
scoreboard players set 6_monument_enemy4 data 0
execute if score 6_monument_boss data matches 3..6 run scoreboard players set 6_monument_boss data 2

#多人游戏有人失败时，清理BOSS战场地玩家
kill @a[x=-170,y=-58,z=160,dx=18,dy=14,dz=18]

#归还盾牌
give @a[tag=shield] shield
tag @a remove shield

#播放音乐
scoreboard players set music data 111
function music/replay