# ===== BOSS 二阶段时间线 =====
# 在 BOSS 战过程中的 BOSS 二阶段（战斗中）的循环命令于此执行

# --- 一阶段下的南瓜头和御风珠的特殊代码 ---

## 黑曜石柱 3：如果玩家带着南瓜头，则显示一个梯子
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -12 57 36 air run fill -12 57 36 -12 75 36 ladder ["facing_direction"=2]
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -12 57 36 ladder run fill -12 57 36 -12 75 36 air
## 黑曜石柱 4：如果玩家扔到御风珠附近则传送
execute if entity @e[type=aw:wind_pearl,x=-32.5,y=93,z=20.5,r=2] run tp @a -33 90 20
execute if entity @e[type=aw:wind_pearl,x=-32.5,y=93,z=28.5,r=2] run tp @a -33 90 28
## 黑曜石柱 5：如果玩家扔到御风珠附近则传送
execute if entity @e[type=aw:wind_pearl,x=-40.5,y=96,z=-3.5,r=4] run tp @a -41 97 -4
## 黑曜石柱 6：如果玩家扔到御风珠附近则传送
execute if entity @e[type=aw:wind_pearl,x=-32.5,y=88,z=-23.5,r=4] run tp @a -33 89 -24
## 黑曜石柱 7：如果玩家扔到御风珠附近则传送
execute if entity @e[type=aw:wind_pearl,x=-16.5,y=102,z=-38.5,r=2] if block -17 102 -39 light_blue_glazed_terracotta run tp @a -17 103 -39
## 黑曜石柱 7：如果玩家带着南瓜头，则显示一个淡蓝色带釉陶瓦
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -17 102 -39 obsidian run setblock -17 102 -39 light_blue_glazed_terracotta
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -15 57 35 carved_pumpkin if block -17 102 -39 light_blue_glazed_terracotta run setblock -17 102 -39 obsidian
## 黑曜石柱 9：如果玩家扔到御风珠附近则传送
execute if entity @e[type=aw:wind_pearl,x=29.5,y=78,z=-23.5,r=2] run tp @a 29 78 -24

# --- 检查怪物数量 ---
# 注：末影龙不是怪物
scoreboard players set monster_amount data 0
execute as @e[family=monster,rm=0] run scoreboard players add monster_amount data 1

# --- 尝试每 10 秒生成怪物 ---
# 当怪物数量大于 4 个时则终止运行
execute if score timeline time matches 200 if score monster_amount data matches ..3 positioned 7 60 7 run function game/the_end/events/spawn_random_monster
execute if score timeline time matches 200 if score monster_amount data matches ..3 positioned 7 59 -7 run function game/the_end/events/spawn_random_monster
execute if score timeline time matches 200 if score monster_amount data matches ..3 positioned -7 59 7 run function game/the_end/events/spawn_random_monster
execute if score timeline time matches 200 if score monster_amount data matches ..3 positioned -7 59 -7 run function game/the_end/events/spawn_random_monster
execute unless score timeline time matches 0..200 run scoreboard players set timeline time 0

# --- 始终定位末影龙的位置 ---
execute as @e[type=ender_dragon] at @s run tp @e[type=aw:marker,name="enderDragonPosition"] ^^^-12 facing @s

# --- 如果末影龙死亡，进入下一阶段 ---
# 加 if block 是为了防止退出重进时游戏错误判断
execute if block 0 62 0 bedrock unless entity @e[type=ender_dragon] run function game/the_end/events/on_dragon_death
