# ===== 玩家按下快速通关按钮 =====
# 当玩家按下快速通关按钮后，执行此处的代码

# 重置按钮
setblock -11 60 0 stone_button ["facing_direction"=1,"button_pressed_bit"=false]

# 如果没有通关过，阻止之
execute if score 9_the_end_boss_finished data matches 0 run tellraw @a {"rawtext":[{"text":"§e你还没有通关过，不能快速通关！"}]}
# 如果通关过，但是还没开始，阻止之
execute if score 9_the_end_boss_finished data matches 1 if score 9_the_end_boss data matches !2..3 run tellraw @a {"rawtext":[{"text":"§e请先召唤终末之地的梦境守卫！"}]}
# 如果通关过，且已开始，则在 1 阶段清除所有的末地水晶，2 阶段清除末影龙
execute if score 9_the_end_boss_finished data matches 1 if score 9_the_end_boss data matches 2 run kill @e[type=ender_crystal]
execute if score 9_the_end_boss_finished data matches 1 if score 9_the_end_boss data matches 2 run tellraw @a {"rawtext":[{"text":"§e已经炸掉了所有的末地水晶！"}]}
execute if score 9_the_end_boss_finished data matches 1 if score 9_the_end_boss data matches 3 run kill @e[type=ender_dragon]
execute if score 9_the_end_boss_finished data matches 1 if score 9_the_end_boss data matches 3 run tellraw @a {"rawtext":[{"text":"§e已经杀死了末影龙！"}]}
