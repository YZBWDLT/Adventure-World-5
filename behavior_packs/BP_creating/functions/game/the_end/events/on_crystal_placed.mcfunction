# ===== 玩家放置末地水晶后 =====
# 当玩家放置末地水晶后，游戏准备正式开始，此时 BOSS 战进入下一阶段
# （data.9_the_end_boss -> 1）

# 播放音乐
scoreboard players set music data 152
function music/replay

# 清除玩家的末地水晶
clear @a end_crystal

# 封死龙穴，阻止玩家进入龙穴炸毁末地水晶导致传送回主世界
function game/the_end/events/restrict_end_portal
tp @a[x=-3,y=59,z=-3,dx=7,dy=5,dz=7] 0 59 -10 facing 0 59 0

# 跳到下一阶段
scoreboard players set 9_the_end_boss data 1
