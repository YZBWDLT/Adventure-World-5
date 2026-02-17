# ===== 开始岛屿消失动画 =====

# 生成华梦言
summon aw:npc -228 -14 194 90 0 skin_11

# 设置相机视角并逐渐黑屏
execute as @a at @s anchored eyes run camera @a set minecraft:free pos ~~~ facing ^^^1
camera @a fade time 1 5 1
hud @a hide all

# 将玩家传送到另一个小黑屋
tp @a -239 -9 177

# 设置音乐
scoreboard players set music data 156
function music/replay

# 设置时间线
scoreboard players set timeline active 63
function lib/modify_states/timeline/enable_time_lapse

# 允许搭建屠龙纪念塔 | 仅当屠龙纪念塔还没有搭建时重置
execute unless block -172 32 130 redstone_block run function unlock/tower
