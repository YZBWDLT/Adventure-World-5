# ===== 末影龙死亡后 =====
# 当末影龙死亡后，游戏结束，此时 BOSS 战进入下一阶段
# （data.9_the_end_boss -> 4）

# 播放音乐
scoreboard players set music data 155
function music/replay

# 清除场上的剩余怪物
kill @e[family=monster]

# 传送玩家并锁定玩家视角
tp @a 0 59 -15 facing 0 59 0
function lib/utils/start_dialogue
execute as @e[type=aw:marker,name="enderDragonPosition"] at @s run camera @a set minecraft:free pos ~~~ facing ^^^12
execute as @e[type=aw:marker,name="enderDragonPosition"] at @s run camera @a set minecraft:free ease 12 linear pos ~~12~ facing ^^^12
event entity @e[type=aw:marker,name="enderDragonPosition"] aw:remove_immediately
effect @a resistance infinite 9 true

# 启用时间线流逝
function lib/modify_states/timeline/enable_time_lapse

# 标记 BOSS 已通过，之后再来打 BOSS 会有快速通关按钮
scoreboard players set 9_the_end_boss_finished data 1

# 跳到下一阶段
scoreboard players set 9_the_end_boss data 4
