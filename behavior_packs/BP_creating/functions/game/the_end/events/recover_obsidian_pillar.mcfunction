# ===== 恢复黑曜石柱 =====
# 用于恢复 BOSS 战的黑曜石柱。
# 调用此方法时：需修饰执行维度为末地（execute in the_end ...）。

# --- 黑曜石柱 1：游泳 ---
# (33 79 24)

fill 31 59 23 33 78 25 obsidian

# --- 黑曜石柱 2：射箭 ---
# (12 94 39)

fill 16 79 40 16 81 38 obsidian
setblock 17 80 39 air
execute positioned 12 94 39 run fill ~-2~~-2 ~2~3~2 air replace iron_bars

# --- 黑曜石柱 3：南瓜头 -> 梯子 ---
# (-12 76 39)

setblock -15 57 35 air
fill -12 57 36 -12 75 36 air
execute positioned -12 76 39 run fill ~-2~~-2 ~2~3~2 air replace iron_bars

# --- 黑曜石柱 4：凝固岩浆 + 挖方块 + 搭方块 ---
# (-33 100 24)

fill -32 88 20 -34 93 28 obsidian
fill -31 87 23 -29 99 25 obsidian
setblock -36 99 24 obsidian
execute positioned -33 100 24 run fill ~-2~~-2 ~2~3~2 air replace iron_bars

# --- 黑曜石柱 5：营火 ---
# (-41 97 0)

fill -42 96 -4 -40 96 4 obsidian
fill -37 96 1 -45 96 -1 obsidian
execute positioned -41 97 0 run fill ~-2~~-2 ~2~3~2 air replace iron_bars

# --- 黑曜石柱 6：御风珠 ---
# (-33 82 -24)

setblock -33 88 -24 air

# --- 黑曜石柱 7：南瓜头 + 御风珠 + 蜘蛛网 ---
# (-12 103 -39)

setblock -17 100 -39 air
setblock -9 103 -42 air
fill -13 103 -38 -11 105 -40 air replace web
execute positioned -12 103 -39 run fill ~-2~~-2 ~2~3~2 air replace iron_bars

# --- 黑曜石柱 8：其他柱子均爆炸 + 弓箭射击 ---
# (12 85 -39)

fill 12 59 -36 12 84 -37 obsidian
execute positioned 12 85 -39 run fill ~-2~~-2 ~2~3~2 air replace iron_bars

# --- 黑曜石柱 9：御风珠 + 标靶活塞搭方块 + 挖方块 ---
# (33 88 -24)

setblock 28 74 -24 air
fill 31 74 -24 30 78 -24 obsidian
fill 31 74 -22 33 87 -24 obsidian
execute positioned 33 88 -24 run fill ~-2~~-2 ~2~3~2 air replace iron_bars
setblock 29 74 -24 air

# --- 黑曜石柱 10：纯搭方块 ---
# (41 91 0)

fill 38 59 1 41 90 -1 obsidian
execute positioned 41 91 0 run fill ~-2~~-2 ~2~3~2 air replace iron_bars
