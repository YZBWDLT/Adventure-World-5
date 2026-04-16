# ===== 更新浮空峰遗迹 =====

#当每次进入浮空峰遗迹时执行此命令
#怪物会重新生成，但机关不会
#在通关之前BOSS会重新生成

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#复原陶罐等场景
fill -277 -13 126 -277 -13 128 aw:decorated_pot_type1
setblock -277 -42 121 aw:decorated_pot_type2
fill -279 -13 103 -279 -13 105 aw:decorated_pot_type2

#复原坐标笔记
clone -287 -23 140 -287 -23 140 -287 -23 124

#刷新怪物
kill @e[family=monster]
scoreboard players set 2_hill_enemy1 data 0

#多人游戏有人失败时，清理BOSS战场地玩家
kill @a[x=-296,y=-14,z=95,dx=18,dy=6,dz=18]

#播放音乐
scoreboard players set music data 31
function lib/utils/music/replay