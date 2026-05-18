# ===== 更新下界要塞 =====

#当每次进入下界要塞时执行此命令
#怪物会重新生成，但机关不会
#在通关之前BOSS会重新生成

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#复原陶罐
fill -308 -49 72 -306 -49 72 aw:decorated_pot_type1
fill -289 -40 45 -289 -40 49 aw:decorated_pot_type1
setblock -300 -49 47 aw:decorated_pot_type2
setblock -318 -40 81 aw:decorated_pot_type2

setblock -237 -49 77 aw:decorated_pot_type2
setblock -261 -49 77 aw:decorated_pot_type2
setblock -261 -49 87 aw:decorated_pot_type2
setblock -237 -49 87 aw:decorated_pot_type2

#复原坐标笔记
clone -286 -52 60 -286 -52 60 -279 -23 11

#刷新怪物
tp @e[family=monster] -296 -55 60
scoreboard players set 7_fortress_enemy1 data 0
scoreboard players set 7_fortress_enemy2 data 0
scoreboard players set 7_fortress_enemy3 data 0
scoreboard players set 7_fortress_enemy4 data 0
scoreboard players set 7_fortress_boss_wave data 0
function lib/modify_data/states/timeline/disable
function lib/utils/stop_dialogue 

#如果播放切换动画时死掉，会导致动画中断，恢复判定方块以保证动画重新播放
clone -281 -27 60 -281 -27 60 -281 -26 60

#归还盾牌
give @a[tag=shield] shield
tag @a remove shield

#复原BOSS战场
fill -255 -49 76 -243 -45 88 air
fill -265 -50 66 -233 -47 98 air replace fire
fill -265 -50 66 -233 -47 98 air replace soul_fire

#多人游戏有人失败时，清理BOSS战场地玩家
kill @a[x=-265,y=-51,z=66,dx=32,dy=9,dz=32]

#播放音乐
scoreboard players set music data 121
function lib/utils/music/replay