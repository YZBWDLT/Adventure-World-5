# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-263.5,y=31,z=-47.5,r=1] run function game/forest/refresh
execute if score refreshArea data matches 0 if entity @a[x=-286.5,y=31,z=-47.5,r=1] run function game/forest/refresh
execute if score refreshArea data matches 0 if entity @a[x=-292.5,y=31,z=-56.5,r=1] run function game/forest/refresh
execute if score refreshArea data matches 0 if entity @a[x=-298.5,y=31,z=10.5,r=1] run function game/forest/refresh

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-292.5,y=38.5,z=-60.5,r=2] run tp @a -293 37 -60 facing -293 37 -61

#前往买卖村
execute if entity @a[x=-260.5,y=33,z=-47.5,r=1] run title @a title §o§6买卖村
execute if entity @a[x=-260.5,y=33,z=-47.5,r=1] run spawnpoint @a -257 33 -48
execute if entity @a[x=-260.5,y=33,z=-47.5,r=1] run setworldspawn -257 33 -48
execute if entity @a[x=-260.5,y=33,z=-47.5,r=1] run scoreboard players set position data 4
execute if entity @a[x=-260.5,y=33,z=-47.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-260.5,y=33,z=-47.5,r=1] run scoreboard players set lost_forest data 1
execute if entity @a[x=-260.5,y=33,z=-47.5,r=1] run tp @a -257 33 -48 facing -256 33 -48

#进入地铁
execute if block -293 32 -59 stone_button["button_pressed_bit"=true,"facing_direction"=1] run time set noon
execute if block -293 32 -59 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -233 -15 189 facing -233 -15 188 run function game/start/enter
execute if block -293 32 -59 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -232 -15 179 -232 -14 179 -238 -15 177
execute if block -293 32 -59 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -293 32 -59 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#迷失森林场景切换
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -272 30 -48 air run structure load forest:f0 -282 30 -62
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -272 30 -48 stone if score lost_forest data matches 1 run structure load forest:f1 -282 30 -62
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -272 30 -48 coal_block if score lost_forest data matches 2 run structure load forest:f2 -282 30 -62
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -272 30 -48 iron_block if score lost_forest data matches 3 run structure load forest:f3 -282 30 -62
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -272 30 -48 gold_block if score lost_forest data matches 4 run structure load forest:f4 -282 30 -62
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -272 30 -48 diamond_block if score lost_forest data matches 5 run structure load forest:f5 -282 30 -62
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -272 30 -48 netherite_block if score lost_forest data matches 6 run structure load forest:f6 -282 30 -62

#迷失森林前进
execute if entity @a[x=-271.5,y=31,z=-32.5,r=1] run scoreboard players add lost_forest data 1
execute if entity @a[x=-271.5,y=31,z=-32.5,r=1] unless score lost_forest data matches 2 unless score lost_forest data matches 3 unless score lost_forest data matches 6 run scoreboard players set lost_forest data 1
execute if entity @a[x=-271.5,y=31,z=-32.5,r=1] run tp @a -264 31 -48 facing -265 31 -48
execute if entity @a[x=-282.5,y=31,z=-47.5,r=1] run scoreboard players add lost_forest data 1
execute if entity @a[x=-282.5,y=31,z=-47.5,r=1] unless score lost_forest data matches 4 unless score lost_forest data matches 7 run scoreboard players set lost_forest data 1
execute if entity @a[x=-282.5,y=31,z=-47.5,r=1] unless score lost_forest data matches 7 run tp @a -264 31 -48 facing -265 31 -48
execute if entity @a[x=-271.5,y=31,z=-62.5,r=1] run scoreboard players add lost_forest data 1
execute if entity @a[x=-271.5,y=31,z=-62.5,r=1] unless score lost_forest data matches 5 run scoreboard players set lost_forest data 1
execute if entity @a[x=-271.5,y=31,z=-62.5,r=1] run tp @a -264 31 -48 facing -265 31 -48
execute if score lost_forest data matches 7 run title @a title §9明月森林
execute if score lost_forest data matches 7 run time set midnight
execute if score lost_forest data matches 7 run spawnpoint @a -287 31 -48
execute if score lost_forest data matches 7 run setworldspawn -287 31 -48
execute if score lost_forest data matches 7 run scoreboard players set refreshArea data 0
execute if score lost_forest data matches 7 run tp @a -287 31 -48 facing -288 31 -48
execute if score lost_forest data matches 7 run scoreboard players set lost_forest data 1

#前往逍遥平原
execute if entity @a[x=-284.5,y=31,z=-47.5,r=1] run title @a title §o§6买卖村
execute if entity @a[x=-284.5,y=31,z=-47.5,r=1] run time set noon
execute if entity @a[x=-284.5,y=31,z=-47.5,r=1] run spawnpoint @a -257 33 -48
execute if entity @a[x=-284.5,y=31,z=-47.5,r=1] run setworldspawn -257 33 -48
execute if entity @a[x=-284.5,y=31,z=-47.5,r=1] run scoreboard players set position data 4
execute if entity @a[x=-284.5,y=31,z=-47.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-284.5,y=31,z=-47.5,r=1] run tp @a -257 33 -48 facing -256 33 -48

#南瓜显示-森林地洞
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -273 28 7 grass_block run fill -274 28 7 -273 28 7 air
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -273 28 7 air run fill -274 28 7 -273 28 7 grass_block

#前往林地府邸
execute unless score 8_pe_item data matches 2 if entity @a[x=-300.5,y=32,z=10.5,r=1] run title @a title §l§4林地府邸
execute unless score 8_pe_item data matches 2 if entity @a[x=-300.5,y=32,z=10.5,r=1] run title @a subtitle §4一层——正门
execute unless score 8_pe_item data matches 2 if entity @a[x=-300.5,y=32,z=10.5,r=1] run scoreboard players set refreshArea data 0
execute unless score 8_pe_item data matches 2 if entity @a[x=-300.5,y=32,z=10.5,r=1] run scoreboard players set position data 8
execute unless score 8_pe_item data matches 2 if entity @a[x=-300.5,y=32,z=10.5,r=1] run tp @a -256.5 -48.94 -12.5 facing -257.5 -48.94 -12.5
execute unless score 8_pe_item data matches 2 if entity @a[x=-314.5,y=42,z=7.5,r=1] run title @a title §l§4林地府邸
execute unless score 8_pe_item data matches 2 if entity @a[x=-314.5,y=42,z=7.5,r=1] run title @a subtitle §4一层——西北楼梯（右上）
execute unless score 8_pe_item data matches 2 if entity @a[x=-314.5,y=42,z=7.5,r=1] run function game/5_mansion/refresh
execute unless score 8_pe_item data matches 2 if entity @a[x=-314.5,y=42,z=7.5,r=1] run tp @a -315 -45 -34 facing -315 -45 -33
execute unless score 8_pe_item data matches 2 if entity @a[x=-313.5,y=42,z=15.5,r=1] run title @a title §l§4林地府邸
execute unless score 8_pe_item data matches 2 if entity @a[x=-313.5,y=42,z=15.5,r=1] run title @a subtitle §4一层——西南楼梯（左上）
execute unless score 8_pe_item data matches 2 if entity @a[x=-313.5,y=42,z=15.5,r=1] run function game/5_mansion/refresh
execute unless score 8_pe_item data matches 2 if entity @a[x=-313.5,y=42,z=15.5,r=1] run tp @a -307 -45 15 facing -306 -45 15
execute unless score 8_pe_item data matches 2 if entity @a[x=-305.5,y=42,z=14.5,r=1] run title @a title §l§4林地府邸
execute unless score 8_pe_item data matches 2 if entity @a[x=-305.5,y=42,z=14.5,r=1] run title @a subtitle §4一层——东南楼梯（左下）
execute unless score 8_pe_item data matches 2 if entity @a[x=-305.5,y=42,z=14.5,r=1] run function game/5_mansion/refresh
execute unless score 8_pe_item data matches 2 if entity @a[x=-305.5,y=42,z=14.5,r=1] run tp @a -259 -45 7 facing -259 -45 6
execute unless score 8_pe_item data matches 2 if entity @a[x=-306.5,y=42,z=6.5,r=1] run title @a title §l§4林地府邸
execute unless score 8_pe_item data matches 2 if entity @a[x=-306.5,y=42,z=6.5,r=1] run title @a subtitle §4一层——东北楼梯（右下）
execute unless score 8_pe_item data matches 2 if entity @a[x=-306.5,y=42,z=6.5,r=1] run function game/5_mansion/refresh
execute unless score 8_pe_item data matches 2 if entity @a[x=-306.5,y=42,z=6.5,r=1] run tp @a -266 -45 -41 facing -267 -45 -41

execute if score 8_pe_item data matches 2 if entity @a[x=-300.5,y=32,z=10.5,r=1] run title @a actionbar §e别忘了田萍说的，神镐不能带进去哦
execute if score 8_pe_item data matches 2 if entity @a[x=-314.5,y=42,z=7.5,r=1] run title @a actionbar §e别忘了田萍说的，神镐不能带进去哦
execute if score 8_pe_item data matches 2 if entity @a[x=-313.5,y=42,z=15.5,r=1] run title @a actionbar §e别忘了田萍说的，神镐不能带进去哦
execute if score 8_pe_item data matches 2 if entity @a[x=-305.5,y=42,z=14.5,r=1] run title @a actionbar §e别忘了田萍说的，神镐不能带进去哦
execute if score 8_pe_item data matches 2 if entity @a[x=-306.5,y=42,z=6.5,r=1] run title @a actionbar §e别忘了田萍说的，神镐不能带进去哦

#井下音乐
execute if score music data matches 72 if entity @a[x=-317,y=25,z=-51,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-317,y=25,z=-51,dx=2,dy=2,dz=2] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-317,y=25,z=-51,dx=2,dy=2,dz=2] run function music/replay

execute if score music data matches 3 if entity @a[x=-318,y=30,z=-44,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-318,y=30,z=-44,dx=2,dy=2,dz=2] run scoreboard players set music data 72
execute if score repmusic data matches 1 if entity @a[x=-318,y=30,z=-44,dx=2,dy=2,dz=2] run function music/replay

#南瓜地道音乐
execute if score music data matches 72 if entity @a[x=-274,y=25,z=4,dx=3,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-274,y=25,z=4,dx=3,dy=2,dz=1] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-274,y=25,z=4,dx=3,dy=2,dz=1] run function music/replay

execute if score music data matches 3 if entity @a[x=-275,y=28,z=7,dx=3,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-275,y=28,z=7,dx=3,dy=2,dz=1] run scoreboard players set music data 72
execute if score repmusic data matches 1 if entity @a[x=-275,y=28,z=7,dx=3,dy=2,dz=1] run function music/replay

execute if score music data matches 72 if entity @a[x=-272,y=26,z=-22,dx=3,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-272,y=26,z=-22,dx=3,dy=2,dz=1] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-272,y=26,z=-22,dx=3,dy=2,dz=1] run function music/replay

execute if score music data matches 3 if entity @a[x=-273,y=30,z=-27,dx=3,dy=1,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-273,y=30,z=-27,dx=3,dy=1,dz=2] run scoreboard players set music data 72
execute if score repmusic data matches 1 if entity @a[x=-273,y=30,z=-27,dx=3,dy=1,dz=2] run function music/replay