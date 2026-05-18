# ===== 开始船上的动画 =====

# 恢复标题时间
title @a reset

# 跳转到离开小岛的剧情
scoreboard players set timeline active 65
function lib/modify_data/states/timeline/enable_time_lapse

# 传送玩家到船内部，并设置玩家的出生点和重生点
tp @a 35 82 -10 facing 38 82 -10
spawnpoint @a 38 82 -12
setworldspawn 38 82 -12

# 继续对玩家锁定视角
execute as @a at @s anchored eyes run camera @s set minecraft:free pos ^^^0.5 facing ^^^1
function lib/utils/start_dialogue
hud @a reset all

# 对玩家添加迷雾
fog @a remove aw:sky
fog @a push aw:sky aw:sky
scoreboard players set fog_type data 1

# 停止播放音乐
scoreboard players set music data 114514
music stop

# 移除临时常加载区域
tickingarea remove temp
