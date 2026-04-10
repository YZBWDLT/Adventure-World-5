# ===== 更新林地府邸 =====

#当每次进入林地府邸时执行此命令
#怪物会重新生成，但机关不会
#在通关之前BOSS会重新生成

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#复原陶罐
fill -318 -49 -23 -318 -49 -19 aw:decorated_pot_type1
fill -260 -49 -20 -258 -49 -20 aw:decorated_pot_type1
fill -260 -49 -6 -258 -49 -6 aw:decorated_pot_type3
fill -276 -49 4 -274 -49 4 aw:decorated_pot_type1
fill -297 -49 -12 -293 -49 -12 aw:decorated_pot_type3
fill -300 -49 -14 -298 -49 -14 aw:decorated_pot_type3
setblock -301 -24 18 aw:decorated_pot_type2
setblock -301 -24 12 aw:decorated_pot_type2
setblock -302 -49 -38 aw:decorated_pot_type2
setblock -270 -24 -25 aw:decorated_pot_type2
setblock -264 -24 -25 aw:decorated_pot_type2

#复原花盆等
clone -289 -52 5 -289 -51 9 -289 -49 5
clone -283 -53 -36 -281 -51 -30 -283 -49 -36
clone -280 -51 -42 -280 -51 -42 -280 -49 -42
clone -280 -27 1 -280 -26 1 -280 -24 1
clone -256 -27 -2 -256 -26 -2 -256 -24 -2
clone -274 -27 -9 -274 -26 -9 -274 -24 -9
clone -288 -27 18 -288 -26 18 -288 -24 18
clone -294 -27 -12 -294 -26 -12 -294 -18 -12
clone -267 -27 -22 -267 -26 -19 -267 -24 -22
clone -283 -27 -40 -275 -26 -35 -283 -24 -40

#复原坐标笔记
clone -279 -26 11 -279 -26 11 -279 -23 11

#为避免造成混乱，统一使用门口为出生点，刷新时生效
scoreboard players set position data 8
spawnpoint @a -256.5 -48.94 -12.5
setworldspawn -256.5 -48.94 -12.5

#刷新怪物
execute if score 5_mansion_boss data matches 1 run scoreboard players set 5_mansion_boss data 0
kill @e[family=monster]
kill @e[type=arrow]
scoreboard players set 5_mansion_enemy1 data 0
scoreboard players set 5_mansion_enemy2 data 0
scoreboard players set 5_mansion_enemy3 data 0
scoreboard players set 5_mansion_enemy4 data 0
function lib/modify_states/timeline/disable 
execute if score 5_mansion_boss data matches 0 run fill -306 -39 -16 -304 -36 -16 dark_oak_planks
execute if score 5_mansion_boss data matches 2 run clone -307 -31 -13 -303 -27 -13 -307 -39 -16

#多人游戏有人失败时，清理BOSS战场地玩家
kill @a[x=-319,y=-41,z=-53,dx=28,dy=16,dz=37]

#归还盾牌
give @a[tag=shield] shield
tag @a remove shield

#播放音乐
scoreboard players set music data 81
function music/replay