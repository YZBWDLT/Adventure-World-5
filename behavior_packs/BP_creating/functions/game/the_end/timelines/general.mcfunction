# ===== 全局游戏时间线 =====
# 在 BOSS 战过程中的所有阶段均适用的循环命令于此执行

# --- 检查在末地的末地水晶的数量 ---
scoreboard players set ender_crystal_amount data 0
execute as @e[type=ender_crystal,rm=0] run scoreboard players add ender_crystal_amount data 1

# --- 这段是巴豆加的，末影龙太恐怖了，必须常态抗性提升III ---
execute as @a at @s unless entity @e[type=ender_crystal,r=3] run effect @s resistance 1 2 true

# --- 在末地水晶附近给予无敌，防止玩家被炸亖 ---
execute as @a at @s if entity @e[type=ender_crystal,r=3] run effect @s resistance 1 9 true

# --- 如果玩家装了龙息，则倒掉 ---
give @a[hasitem={item=dragon_breath}] glass_bottle
clear @a[hasitem={item=dragon_breath}] dragon_breath -1 1

# --- 如果检查到龙蛋，移除之 ---
execute if block 0 63 0 dragon_egg run setblock 0 63 0 air

# --- 如果玩家按下快速通关的按钮，则执行代码 ---
execute if block -11 60 0 stone_button ["facing_direction"=1,"button_pressed_bit"=true] run function game/the_end/events/on_player_skip_battle
