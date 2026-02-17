# ===== 更换黑曜石柱 =====
# 用于将 BOSS 战的黑曜石柱更换掉，在 BOSS 战正式开始时更换之。
# 调用此方法时：需修饰执行维度为末地（execute in the_end ...）。

# --- 黑曜石柱 1：游泳 ---
# (33 79 24)

fill 32 60 24 32 78 24 water
fill 31 60 24 31 61 24 polished_blackstone_button ["facing_direction"=2]
fill 31 59 23 33 62 25 aw:glowing_obsidian replace obsidian
execute positioned 33 79 24 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 2：射箭 ---
# (12 94 39)

fill 16 79 39 16 81 39 aw:glowing_obsidian
fill 16 80 40 16 80 38 aw:glowing_obsidian
setblock 16 80 39 redstone_lamp
setblock 17 80 39 wooden_button ["facing_direction"=5]
execute positioned 12 94 39 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 3：南瓜头 -> 梯子 ---
# (-12 76 39)

setblock -15 57 35 carved_pumpkin ["minecraft:cardinal_direction"="north"]
execute positioned -12 76 39 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 4：凝固岩浆 + 挖方块 + 搭方块 ---
# (-33 100 24)

setblock -33 93 20 light_blue_glazed_terracotta
setblock -33 93 28 light_blue_glazed_terracotta
fill -34 90 28 -32 92 20 air
fill -34 88 25 -32 89 23 lava
fill -31 87 23 -29 90 25 aw:glowing_obsidian
fill -31 88 24 -31 89 24 polished_blackstone_button ["facing_direction"=2]
fill -30 88 24 -30 99 24 water
setblock -36 99 24 black_glazed_terracotta
execute positioned -33 100 24 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 5：营火 ---
# (-41 97 0)

setblock -41 96 -4 light_blue_glazed_terracotta
setblock -40 96 -4 campfire ["extinguished"=true,"minecraft:cardinal_direction"="east"]
setblock -42 96 -4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="east"]
setblock -45 96 -1 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="north"]
setblock -45 96 1 campfire ["extinguished"=true,"minecraft:cardinal_direction"="north"]
setblock -42 96 4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="west"]
setblock -40 96 4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="west"]
setblock -37 96 1 campfire ["extinguished"=true,"minecraft:cardinal_direction"="south"]
setblock -37 96 -1 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="south"]
execute positioned -41 97 0 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 6：御风珠 ---
# (-33 82 -24)

setblock -33 88 -24 light_blue_glazed_terracotta
execute positioned -33 82 -24 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 7：南瓜头 + 御风珠 + 蜘蛛网 ---
# (-12 103 -39)

setblock -17 100 -39 carved_pumpkin ["minecraft:cardinal_direction"="west"]
setblock -9 103 -42 carved_pumpkin ["minecraft:cardinal_direction"="north"]
fill -13 103 -38 -11 105 -40 web keep
execute positioned -12 103 -39 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 8：其他柱子均爆炸 + 弓箭射击 ---
# (12 85 -39)

setblock 12 59 -36 redstone_lamp
setblock 12 62 -36 redstone_lamp
setblock 12 65 -36 redstone_lamp
setblock 12 68 -36 redstone_lamp
setblock 12 71 -36 redstone_lamp
setblock 12 74 -36 redstone_lamp
setblock 12 77 -36 redstone_lamp
setblock 12 80 -36 redstone_lamp
setblock 12 83 -36 redstone_lamp
execute positioned 12 85 -39 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 9：御风珠 + 标靶活塞搭方块 + 挖方块 ---
# (33 88 -24)

setblock 30 78 -24 light_blue_glazed_terracotta
setblock 30 75 -24 target
setblock 31 75 -24 redstone_wire
setblock 30 74 -24 black_glazed_terracotta
setblock 31 74 -24 piston ["facing_direction"=5]
setblock 28 74 -24 structure_void
fill 31 74 -22 33 77 -24 aw:glowing_obsidian replace obsidian
fill 31 75 -22 32 76 -22 air
fill 32 75 -23 32 87 -23 water
fill 32 75 -22 32 76 -22 polished_blackstone_button ["facing_direction"=2]
fill 31 75 -22 31 76 -22 aw:dig8
execute positioned 33 88 -24 run structure load the_end:iron_bar_cage ~-2~~-2

# --- 黑曜石柱 10：纯搭方块 ---
# (41 91 0)

fill 38 59 1 41 62 -1 aw:glowing_obsidian replace obsidian
fill 40 60 0 38 61 0 air
fill 40 60 0 40 90 0 air
setblock 41 60 0 black_glazed_terracotta
setblock 41 63 0 black_glazed_terracotta
setblock 41 66 0 black_glazed_terracotta
setblock 41 69 0 black_glazed_terracotta
setblock 41 72 0 black_glazed_terracotta
setblock 41 75 0 black_glazed_terracotta
setblock 41 78 0 black_glazed_terracotta
setblock 41 81 0 black_glazed_terracotta
setblock 41 84 0 black_glazed_terracotta
setblock 41 87 0 black_glazed_terracotta
setblock 41 90 0 black_glazed_terracotta
execute positioned 41 91 0 run structure load the_end:iron_bar_cage ~-2~~-2
