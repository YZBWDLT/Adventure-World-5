# ===== 更新一号大矿洞 =====

#当每次进入一号大矿洞时执行此命令
#怪物会重新生成，但机关不会
#在通关之前BOSS会重新生成

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#复原陶罐等场景
setblock -231 -29 111 aw:decorated_pot_type1
setblock -235 -29 111 aw:decorated_pot_type1
fill -228 -29 114 -228 -29 116 aw:decorated_pot_type1
fill -204 -29 125 -204 -29 126 aw:decorated_pot_type1
fill -238 -29 143 -238 -29 146 aw:decorated_pot_type1
setblock -216 -49 101 aw:decorated_pot_type2
setblock -250 -49 101 aw:decorated_pot_type2
setblock -250 -49 135 aw:decorated_pot_type2
execute if score 1_mine_boss data matches 0 run clone -250 -40 101 -216 -39 135 -250 -49 101

#复原坐标笔记
clone -236 -32 133 -236 -32 133 -236 -29 133

#刷新怪物
kill @e[family=monster]
scoreboard players set 1_mine_enemy1 data 0
scoreboard players set 1_mine_enemy2 data 0

#多人游戏有人失败时，清理BOSS战场地玩家
kill @a[x=-251,y=-50,z=100,dx=36,dy=9,dz=36]

#播放音乐
scoreboard players set music data 21
function music/replay