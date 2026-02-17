# ===== 初始化场景 =====
# 用于将 BOSS 战的场景初始化，在玩家初次进入末地后进行初始化。
# 调用此方法时：需修饰条件为未初始化（execute if score 9_the_end_init data matches 0 ...）。

# 恢复黑曜石柱
function game/the_end/events/recover_obsidian_pillar

# 清空所有可放置方块的点位附近的方块
execute positioned -36 100 24 run fill ~-3~-3~-3~3~3~3 air replace gray_glazed_terracotta
execute positioned -36 100 24 run fill ~-3~-3~-3~3~3~3 air replace silver_glazed_terracotta
execute positioned -36 100 24 run fill ~-3~-3~-3~3~3~3 air replace white_glazed_terracotta
execute positioned 29 74 -24 run fill ~-3~-3~-3~3~3~3 air replace gray_glazed_terracotta
execute positioned 29 74 -24 run fill ~-3~-3~-3~3~3~3 air replace silver_glazed_terracotta
execute positioned 29 74 -24 run fill ~-3~-3~-3~3~3~3 air replace white_glazed_terracotta
execute positioned 40 60 0 run fill ~-3~-3~-3~3~3~3 air replace gray_glazed_terracotta
execute positioned 40 60 0 run fill ~-3~-3~-3~3~3~3 air replace silver_glazed_terracotta
execute positioned 40 60 0 run fill ~-3~-3~-3~3~3~3 air replace white_glazed_terracotta
execute positioned 40 90 0 run fill ~-3~-3~-3~3~3~3 air replace gray_glazed_terracotta
execute positioned 40 90 0 run fill ~-3~-3~-3~3~3~3 air replace silver_glazed_terracotta
execute positioned 40 90 0 run fill ~-3~-3~-3~3~3~3 air replace white_glazed_terracotta

# 恢复栖息点
setblock 0 100 0 air

# 阻止时间流逝
function lib/modify_states/timeline/disable_time_lapse

# 将 BOSS 阶段改为开战前
scoreboard players set 9_the_end_boss data 0

# 提示玩家放置末地水晶
tellraw @a[c=1] {"rawtext":[{"text":"§e守卫梦境的最终魔物就藏在此处！你已获得末地水晶，在龙巢四边放下末地水晶，战斗即打响！"}]}

# 如果这是玩家第二次或之后打 BOSS，则出现一个快速通关的按钮，否则就把这里清除掉
execute if score 9_the_end_boss_finished data matches 0 run fill -11 59 -1 -11 60 0 air
execute if score 9_the_end_boss_finished data matches 1 run clone -11 56 -1 -11 57 0 -11 59 -1

# 清除多余实体
kill @e[type=ender_crystal]
kill @e[family=monster]
event entity @e[rm=0,type=aw:marker] aw:remove_immediately
kill @e[type=arrow]
kill @e[type=ender_dragon]
