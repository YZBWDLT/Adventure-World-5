# ===== BOSS 一阶段时间线 =====
# 在 BOSS 战过程中的 BOSS 一阶段（战斗中）的循环命令于此执行

# --- 黑曜石柱 1：游泳 ---
# (33 79 24)

## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned 33 79 24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run setblock 12 59 -37 redstone_block
execute positioned 33 79 24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e1号柱子的末地水晶被炸掉了！"}]}
execute positioned 33 79 24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 2：射箭 ---
# (12 94 39)

## 如果按下按钮，则移除牢笼
execute if block 16 80 39 lit_redstone_lamp if block 16 81 39 aw:glowing_obsidian as @a at @s run playsound solve_puzzle @s
execute if block 16 80 39 lit_redstone_lamp if block 16 81 39 aw:glowing_obsidian run fill 14 95 39 12 97 37 air
execute if block 16 80 39 lit_redstone_lamp if block 16 81 39 aw:glowing_obsidian run fill 16 79 40 16 81 38 obsidian replace aw:glowing_obsidian
## 如果末地水晶爆炸，则提示玩家
execute positioned 12 94 39 unless entity @e[type=ender_crystal,r=2] unless block ~-2~1~ air run setblock 12 62 -37 redstone_block
execute positioned 12 94 39 unless entity @e[type=ender_crystal,r=2] unless block ~-2~1~ air run tellraw @a {"rawtext":[{"text":"§e2号柱子的末地水晶被炸掉了！"}]}
execute positioned 12 94 39 unless entity @e[type=ender_crystal,r=2] unless block ~-2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 3：南瓜头 -> 梯子 ---
# (-12 76 39)

## 如果玩家带着南瓜头，则显示一个梯子并开口牢笼（在牢笼未被破坏的前提下） | 放置梯子的代码在二阶段也执行
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -12 57 36 air unless block -10 77 39 air run fill -12 76 37 -12 77 37 air replace iron_bars
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -12 57 36 ladder unless block -10 77 39 air run fill -12 76 37 -12 77 37 iron_bars keep
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -12 57 36 air run fill -12 57 36 -12 75 36 ladder ["facing_direction"=2]
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -12 57 36 ladder run fill -12 57 36 -12 75 36 air
## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned -12 76 39 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run setblock 12 65 -37 redstone_block
execute positioned -12 76 39 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e3号柱子的末地水晶被炸掉了！"}]}
execute positioned -12 76 39 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 4：凝固岩浆 + 挖方块 + 搭方块 ---
# (-33 100 24)

## 如果玩家扔到御风珠附近则传送 | 御风珠的代码在二阶段也执行
execute if entity @e[type=aw:wind_pearl,x=-32.5,y=93,z=20.5,r=2] run tp @a -33 90 20
execute if entity @e[type=aw:wind_pearl,x=-32.5,y=93,z=28.5,r=2] run tp @a -33 90 28
## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned -33 100 24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run setblock 12 68 -37 redstone_block
execute positioned -33 100 24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e4号柱子的末地水晶被炸掉了！"}]}
execute positioned -33 100 24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 5：营火 ---
# (-41 97 0)

## 如果玩家扔到御风珠附近则传送 | 御风珠的代码在二阶段也执行
execute if entity @e[type=aw:wind_pearl,x=-40.5,y=96,z=-3.5,r=4] run tp @a -41 97 -4
## 如果玩家点燃了所有营火则给牢笼开个口
execute if block -40 96 -4 campfire ["extinguished"=false,"minecraft:cardinal_direction"="east"] if block -42 96 -4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="east"] if block -45 96 -1 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="north"] if block -45 96 1 campfire ["extinguished"=false,"minecraft:cardinal_direction"="north"] if block -42 96 4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="west"] if block -40 96 4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="west"] if block -37 96 1 campfire ["extinguished"=false,"minecraft:cardinal_direction"="south"] if block -37 96 -1 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="south"] if block -41 97 -2 iron_bars as @a at @s run playsound solve_puzzle @s
execute if block -40 96 -4 campfire ["extinguished"=false,"minecraft:cardinal_direction"="east"] if block -42 96 -4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="east"] if block -45 96 -1 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="north"] if block -45 96 1 campfire ["extinguished"=false,"minecraft:cardinal_direction"="north"] if block -42 96 4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="west"] if block -40 96 4 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="west"] if block -37 96 1 campfire ["extinguished"=false,"minecraft:cardinal_direction"="south"] if block -37 96 -1 soul_campfire ["extinguished"=true,"minecraft:cardinal_direction"="south"] if block -41 97 -2 iron_bars run fill -41 97 -2 -41 98 -2 air
## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned -41 97 0 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run setblock 12 71 -37 redstone_block
execute positioned -41 97 0 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e5号柱子的末地水晶被炸掉了！"}]}
execute positioned -41 97 0 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 6：御风珠 ---
# (-33 82 -24)

## 如果玩家扔到御风珠附近则传送 | 御风珠的代码在二阶段也执行
execute if entity @e[type=aw:wind_pearl,x=-32.5,y=88,z=-23.5,r=4] run tp @a -33 89 -24
## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned -33 82 -24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run setblock 12 74 -37 redstone_block
execute positioned -33 82 -24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e6号柱子的末地水晶被炸掉了！"}]}
execute positioned -33 82 -24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 7：南瓜头 + 御风珠 + 蜘蛛网 ---
# (-12 103 -39)

## 如果玩家扔到御风珠附近则传送 | 御风珠的代码在二阶段也执行
execute if entity @e[type=aw:wind_pearl,x=-16.5,y=102,z=-38.5,r=2] if block -17 102 -39 light_blue_glazed_terracotta run tp @a -17 103 -39
## 如果玩家带着南瓜头，则显示一个淡蓝色带釉陶瓦并开口牢笼（在牢笼未被破坏的前提下） | 显示淡蓝色带釉陶瓦的代码在二阶段也执行
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -9 103 -42 carved_pumpkin unless block -10 104 -39 air run fill -12 103 -41 -12 104 -41 air replace iron_bars
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -9 103 -42 carved_pumpkin unless block -10 104 -39 air run fill -12 103 -41 -12 104 -41 iron_bars keep
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -17 102 -39 obsidian run setblock -17 102 -39 light_blue_glazed_terracotta
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -17 102 -39 light_blue_glazed_terracotta run setblock -17 102 -39 obsidian
## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned -12 103 -39 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run setblock 12 77 -37 redstone_block
execute positioned -12 103 -39 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e7号柱子的末地水晶被炸掉了！"}]}
execute positioned -12 103 -39 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 8：其他柱子均爆炸 + 弓箭射击 ---
# (12 85 -39)

## 如果只剩下一个末地水晶，则开口牢笼
execute if score ender_crystal_amount data matches 1 unless block 14 86 -39 air as @a at @s run playsound solve_puzzle @s
execute if score ender_crystal_amount data matches 1 unless block 14 86 -39 air run tellraw @a {"rawtext":[{"text":"§e8号柱子的牢笼发生了一些变化！"}]}
execute if score ender_crystal_amount data matches 1 unless block 14 86 -39 air run fill 12 86 -37 14 88 -39 air replace iron_bars
## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned -12 103 -39 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e8号柱子的末地水晶被炸掉了！"}]}
execute positioned -12 103 -39 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 9：御风珠 + 标靶活塞搭方块 + 挖方块 ---
# (33 88 -24)

## 如果玩家扔到御风珠附近则传送 | 御风珠的代码在二阶段也执行
execute if entity @e[type=aw:wind_pearl,x=29.5,y=78,z=-23.5,r=2] run tp @a 29 78 -24
## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned 33 88 -24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run setblock 12 80 -37 redstone_block
execute positioned 33 88 -24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e9号柱子的末地水晶被炸掉了！"}]}
execute positioned 33 88 -24 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 黑曜石柱 10：纯搭方块 ---
# (41 91 0)

## 如果末地水晶爆炸，则移除牢笼并提示玩家
execute positioned 41 91 0 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run setblock 12 83 -37 redstone_block
execute positioned 41 91 0 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run tellraw @a {"rawtext":[{"text":"§e10号柱子的末地水晶被炸掉了！"}]}
execute positioned 41 91 0 unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air run function game/the_end/events/remove_iron_bar_cage

# --- 清除末影龙附近的箭，使它水火无敌 ---
execute as @e[type=ender_dragon] at @s run kill @e[type=arrow,r=5]

# --- 如果末地水晶数量为 0，进入下一阶段 ---
# 加 if block 是为了防止退出重进时游戏错误判断
execute if block 0 62 0 bedrock if score ender_crystal_amount data matches ..0 run function game/the_end/events/on_crystal_destroyed
