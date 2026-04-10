# ===== 更新逍遥矿井 =====

#当每次进入逍遥矿井时执行此命令
#怪物会重新生成，但机关不会
#在通关之前BOSS会重新生成

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#复原陶罐等场景
fill -155 -59 72 -155 -59 74 aw:decorated_pot_type1
setblock -167 -59 120 aw:decorated_pot_type2
fill -153 -41 45 -152 -41 46 aw:decorated_pot_type1
fill -153 -41 28 -152 -41 29 aw:decorated_pot_type1
setblock -120 -54 53 aw:decorated_pot_type2
setblock -120 -54 41 aw:decorated_pot_type2
setblock -108 -54 41 aw:decorated_pot_type2
setblock -108 -54 53 aw:decorated_pot_type2
setblock -131 -52 47 deepslate
setblock -114 -52 64 deepslate
setblock -97 -52 47 deepslate
setblock -114 -52 30 deepslate

#复原坐标笔记
clone -133 -60 97 -133 -60 97 -133 -57 97

#刷新怪物
function lib/modify_states/timeline/disable 
kill @e[family=monster]
kill @e[type=arrow]
scoreboard players set 3_shaft_enemy1 data 0
scoreboard players set 3_shaft_enemy2 data 0
scoreboard players set 3_shaft_enemy3 data 0

#多人游戏有人失败时，清理BOSS战场地玩家
kill @a[x=-134,y=-60,z=27,dx=40,dy=17,dz=40]

#播放音乐
scoreboard players set music data 51
function music/replay