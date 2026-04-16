# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-198.5,y=33,z=97.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-163.5,y=22,z=66.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-191.5,y=27,z=-34.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-199.5,y=33,z=-39.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-256.5,y=33,z=-47.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-256.5,y=35,z=86.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-122.5,y=33,z=33.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-77.5,y=31,z=23.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-142.5,y=16,z=-9.5,r=1] run function game/plain/refresh
execute if score refreshArea data matches 0 if entity @a[x=-98.5,y=24,z=23.5,r=1] run function game/plain/refresh

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-158.5,y=33.5,z=90.5,r=2] run tp @a -160 32 90 facing -159 32 90
execute if entity @e[type=aw:wind_pearl,x=-244.5,y=32.5,z=23.5,r=2] run tp @a[x=-239,y=31,z=22,dx=9,dy=2,dz=1] -244 31 23 facing -245 31 23
execute if entity @e[type=aw:wind_pearl,x=-189.5,y=21.5,z=99.5,r=1.5] run tp @a[x=-173,y=20,z=90,dx=2,dy=3,dz=10] -190 20 99 facing -191 20 99
execute if entity @e[type=aw:wind_pearl,x=-164.5,y=56.5,z=-55.5,r=1.5] run tp @a -165 55 -56 facing -165 55 -55

#变化的雪球点
execute if entity @a[x=-173,y=20,z=90,dx=2,dy=3,dz=10] if block -191 21 99 stone run setblock -191 21 99 light_blue_glazed_terracotta 
execute unless entity @a[x=-173,y=20,z=90,dx=2,dy=3,dz=10] if block -191 21 99 light_blue_glazed_terracotta run setblock -191 21 99 stone

#标靶清雪球
execute if score bow itemState matches 0 run kill @e[type=aw:wind_pearl,x=-162.5,y=16.5,z=12.5,r=4]
execute if score bow itemState matches 0 run kill @e[type=fishing_hook,x=-162.5,y=16.5,z=12.5,r=4]
execute if score bow itemState matches 0 if score windPearl itemState matches 2 run scoreboard players set windPearl itemState 1
execute if score bow itemState matches 0 if score windPearl itemState matches 1 if entity @a[x=-162.5,y=16.5,z=12.5,r=4] run scoreboard players set windPearl itemState 2
execute if score bow itemState matches 0 if entity @a[x=-162.5,y=16.5,z=12.5,r=4] as @a[hasitem={item=fishing_rod}] run tag @s add fishing_rod
execute if score bow itemState matches 0 if entity @a[x=-162.5,y=16.5,z=12.5,r=4] as @a[hasitem={item=fishing_rod}] run clear @s fishing_rod
execute if score bow itemState matches 0 unless entity @a[x=-162.5,y=16.5,z=12.5,r=4] run give @a[tag=fishing_rod] fishing_rod
execute if score bow itemState matches 0 unless entity @a[x=-162.5,y=16.5,z=12.5,r=4] run tag @a remove fishing_rod

#平原迷宫
scoreboard players set plain_maze_new data 0
execute if block -256 31 54 lit_redstone_lamp run scoreboard players add plain_maze_new data 1
execute if block -254 31 58 lit_redstone_lamp run scoreboard players add plain_maze_new data 2
execute if block -252 31 64 lit_redstone_lamp run scoreboard players add plain_maze_new data 4
execute if block -250 31 60 lit_redstone_lamp run scoreboard players add plain_maze_new data 8
execute if block -246 31 64 lit_redstone_lamp run scoreboard players add plain_maze_new data 16
execute if block -248 31 56 lit_redstone_lamp run scoreboard players add plain_maze_new data 32
execute if block -248 31 54 lit_redstone_lamp run scoreboard players add plain_maze_new data 64
execute unless score plain_maze_new data = plain_maze_old data run function game/plain/maze

#前往筑梦镇
execute if entity @a[x=-199.5,y=33,z=99.5,r=1] positioned -198.5 33 103.5 facing -198.5 33 104.5 run function game/village/enter

#挖掘游戏规则
execute if block -141 32 62 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b挖掘方块，找到通向下层的出口吧（分别有5、4、3个），只要完成挖掘就有奖励哦！用时除以20就是秒数。"}]}
execute if block -141 32 62 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches ..1 run tellraw @a {"rawtext":[{"text":"§b奖励：石料×1"}]}
execute if block -141 32 62 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches 2.. run tellraw @a {"rawtext":[{"text":"§b奖励：石料×2"}]}
execute if block -141 32 62 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -141 32 62 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#挖掘最佳成绩
execute if block -141 32 68 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b幸运挖掘-你的最短用时："},{"score":{"name":"dig","objective":"data"}}]}
execute if block -141 32 68 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -141 32 68 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#开始挖掘
execute if score pickaxe itemState matches 0 if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b你缺少道具，还不能玩这个小游戏！"}]}
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 10
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -62 83 127 -49 83 140 aw:dig2
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -62 82 127 -49 82 140 stonebrick
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -62 79 127 -49 79 140 aw:dig3
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -62 78 127 -49 78 140 deepslate_bricks
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -62 75 127 -49 75 140 aw:dig4
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -62 74 127 -49 74 140 polished_blackstone_bricks
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b挖掘开始！这个没法退出，一路挖到底吧！"}]}
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 42
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function music/replay
execute if score pickaxe itemState matches 1.. if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run tp @a ~ 84 ~ facing -55.00 84 134.00
execute if block -141 32 65 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -141 32 65 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#前往逍遥矿井
execute if entity @a[x=-163.5,y=23,z=68.5,r=1] run title @a title §l§9逍遥矿井
execute if entity @a[x=-163.5,y=23,z=68.5,r=1] run spawnpoint @a -164 -59 70
execute if entity @a[x=-163.5,y=23,z=68.5,r=1] run setworldspawn -164 -59 70
execute if entity @a[x=-163.5,y=23,z=68.5,r=1] run scoreboard players set position data 5
execute if entity @a[x=-163.5,y=23,z=68.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-163.5,y=23,z=68.5,r=1] run tp @a -164 -59 70 facing -164 -59 71

#水流俯视视角
execute if score camera data matches 0 if entity @a[x=-220.5,y=32,z=-25.5,r=1] run inputpermission set @a[x=-220.5,y=32,z=-25.5,r=1] camera disabled
execute if score camera data matches 0 if entity @a[x=-220.5,y=32,z=-25.5,r=1] run tp @a[x=-220.5,y=32,z=-25.5,r=1] -220.5 32 -25.5 facing -221 32 -27
execute if score camera data matches 0 if entity @a[x=-220.5,y=32,z=-25.5,r=1] run camera @a[x=-220.5,y=32,z=-25.5,r=1] set minecraft:free ease 2 linear pos -221 55 -26 rot 90 180
execute if score camera data matches 0 if entity @a[x=-220.5,y=32,z=-25.5,r=1] run tellraw @a {"rawtext":[{"text":"§e视角变化时可以直接点击操作拉杆！"}]}
execute if score camera data matches 0 if entity @a[x=-220.5,y=32,z=-25.5,r=1] run scoreboard players set camera data 1
execute if score camera data matches 1 unless entity @a[x=-220.5,y=32,z=-25.5,r=1] run inputpermission set @a camera enabled
execute if score camera data matches 1 unless entity @a[x=-220.5,y=32,z=-25.5,r=1] run camera @a clear
execute if score camera data matches 1 unless entity @a[x=-220.5,y=32,z=-25.5,r=1] run scoreboard players set camera data 0

#重置水流里心的位置
execute if block -221 33 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @e[type=aw:heart_piece,x=-229,y=39,z=-34,dx=16,dy=1,dz=15] -213.5 39 -32.5
execute if block -221 33 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -221 33 -24 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#前往地铁控制室
execute if entity @a[x=-191.5,y=27,z=-32.5,r=1] run title @a title §l§e地铁控制室
execute if entity @a[x=-191.5,y=27,z=-32.5,r=1] run spawnpoint @a -190 -44 -33
execute if entity @a[x=-191.5,y=27,z=-32.5,r=1] run setworldspawn -190 -44 -33
execute if entity @a[x=-191.5,y=27,z=-32.5,r=1] run scoreboard players set position data 6
execute if entity @a[x=-191.5,y=27,z=-32.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-191.5,y=27,z=-32.5,r=1] run tp @a -190 -44 -33 facing -189 -44 -33

#饱和
execute if block -194 31 -2 lever["lever_direction"="north","open_bit"=false] if score saturation data matches 0 run scoreboard players set saturation data 1
execute if block -194 31 -2 lever["lever_direction"="north","open_bit"=true] if score saturation data matches 1 run scoreboard players set saturation data 0

#进入地铁
execute if block -200 35 -36 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score progress data matches 0..3 run tellraw @a {"rawtext":[{"text":"§a[我]没有反应？好像是坏了。"}]}
execute if block -200 35 -36 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score progress data matches 4.. positioned -233 -15 189 facing -233 -15 188 run function game/start/enter
execute if block -200 35 -36 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -200 35 -36 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#进入地铁（沙漠）
execute if block -123 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -233 -15 189 facing -233 -15 188 run function game/start/enter
execute if block -123 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -232 -15 179 -232 -14 179 -229 -14 181
execute if block -123 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -123 34 28 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#南瓜显示-农田山洞
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -248 31 8 stone run fill -248 31 8 -248 33 9 air
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -248 31 8 air run fill -248 31 8 -248 33 9 stone

#南瓜显示-沙漠洞穴
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -114 31 36 sandstone run fill -114 31 36 -114 32 36 aw:dig9
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -114 31 36 aw:dig9 run fill -114 31 36 -114 32 36 sandstone

#南瓜显示-五色山入口
execute if block -154 31 -6 carved_pumpkin if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -157 30 -5 grass run setblock -157 30 -5 water
execute if block -154 31 -6 carved_pumpkin unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -157 30 -5 water run setblock -157 30 -5 grass

#明月森林门口复原陶罐
execute if block -243 32 -62 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -247 31 -57 aw:decorated_pot_type1
execute if block -243 32 -62 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -243 31 -57 aw:decorated_pot_type3
execute if block -243 32 -62 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -239 31 -57 aw:decorated_pot_type2
execute if block -243 32 -62 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -243 32 -62 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#某彩蛋
execute if score repmark data matches 0 if block -237 31 -15 lever ["lever_direction"="up_east_west"] run function lib/modify_states/timeline/enable_time_lapse
execute if score repmark data matches 0 if block -237 31 -15 lever ["lever_direction"="up_east_west"] run function lib/utils/start_dialogue
execute if score repmark data matches 0 if block -237 31 -15 lever ["lever_direction"="up_east_west"] run scoreboard players set timeline active 24
execute if score repmark data matches 0 if block -237 31 -15 lever ["lever_direction"="up_east_west"] run scoreboard players set repmark data 1
execute if score repmark data matches 0 if block -236 30 -15 lever run function lib/modify_states/timeline/enable_time_lapse
execute if score repmark data matches 0 if block -236 30 -15 lever run function lib/utils/start_dialogue
execute if score repmark data matches 0 if block -236 30 -15 lever run scoreboard players set timeline active 24
execute if score repmark data matches 0 if block -236 30 -15 lever run scoreboard players set timeline time 200
execute if score repmark data matches 0 if block -236 30 -15 lever run scoreboard players set repmark data 1

#前往迷失森林
execute if entity @a[x=-258.5,y=33,z=-47.5,r=1] run title @a title §o§8迷失森林
execute if entity @a[x=-258.5,y=33,z=-47.5,r=1] run spawnpoint @a -264 31 -48
execute if entity @a[x=-258.5,y=33,z=-47.5,r=1] run setworldspawn -264 31 -48
execute if entity @a[x=-258.5,y=33,z=-47.5,r=1] run scoreboard players set position data 7
execute if entity @a[x=-258.5,y=33,z=-47.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-258.5,y=33,z=-47.5,r=1] run tp @a -264 31 -48 facing -265 31 -48

#射鸡游戏规则
execute if block -215 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b向鸡射箭吧！一共有40只鸡，场地上最多存在5只，掉在地上的鸡会重新下落。"}]}
execute if block -215 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches ..1 run tellraw @a {"rawtext":[{"text":"§b奖励：木材×1"}]}
execute if block -215 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches 2.. run tellraw @a {"rawtext":[{"text":"§b奖励：木材×1，彩岩×1"}]}
execute if block -215 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -215 34 -54 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#射鸡最佳成绩
execute if block -215 34 -52 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b精准射鸡-你的最短用时："},{"score":{"name":"shoot","objective":"data"}}]}
execute if block -215 34 -52 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -215 34 -52 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#开始射鸡
execute if score bow itemState matches 0 if block -218 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b你缺少道具，还不能玩这个小游戏！"}]}
execute if score bow itemState matches 1 if block -218 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 27
execute if score bow itemState matches 1 if block -218 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score bow itemState matches 1 if block -218 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 43
execute if score bow itemState matches 1 if block -218 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function music/replay
execute if score bow itemState matches 1 if block -218 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a 9 75 167 0 0
execute if score bow itemState matches 1 if block -218 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b射鸡开始！退出的按钮在脚下！"}]}
execute if block -218 34 -54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -218 34 -54 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#南瓜显示-实验室
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -238 20 0 oak_planks run function game/plain/lab_pumpkin
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -238 20 0 air run function game/plain/lab_none

#前往繁星农场
execute if entity @a[x=-258.5,y=35,z=86.5,r=1] run title @a title §c繁§9星§h农§e场
execute if entity @a[x=-258.5,y=35,z=86.5,r=1] run spawnpoint @a -263 34 86
execute if entity @a[x=-258.5,y=35,z=86.5,r=1] run setworldspawn -263 34 86
execute if entity @a[x=-258.5,y=35,z=86.5,r=1] run scoreboard players set position data 10
execute if entity @a[x=-258.5,y=35,z=86.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-258.5,y=35,z=86.5,r=1] run tp @a -263 34 86 facing -264 34 86

#前往时间神庙
execute if entity @a[x=-77.5,y=31,z=21.5,r=1] run title @a title §g时间神庙
execute if entity @a[x=-77.5,y=31,z=21.5,r=1] run spawnpoint @a -246 -55 57
execute if entity @a[x=-77.5,y=31,z=21.5,r=1] run setworldspawn -246 -55 57
execute if entity @a[x=-77.5,y=31,z=21.5,r=1] run scoreboard players set position data 13
execute if entity @a[x=-77.5,y=31,z=21.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-77.5,y=31,z=21.5,r=1] run tp @a -246 -55 57 facing -246 -55 56

#前往五色山（地下、捷径）
execute if entity @a[x=-140.5,y=16,z=-9.5,r=1] positioned -137 16 -10 facing -136 16 -10 run function game/badland/enter
execute if entity @a[x=-98.5,y=24,z=21.5,r=1] positioned -99 24 17 facing -99 24 16 run function game/badland/enter

#实验室音乐
execute if score music data matches 41 if entity @a[x=-239,y=20,z=-16,dx=2,dy=3,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-239,y=20,z=-16,dx=2,dy=3,dz=2] run scoreboard players set music data 44
execute if score repmusic data matches 1 if entity @a[x=-239,y=20,z=-16,dx=2,dy=3,dz=2] run function music/replay

execute if score music data matches 44 if entity @a[x=-239,y=29,z=-16,dx=2,dy=3,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-239,y=29,z=-16,dx=2,dy=3,dz=2] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-239,y=29,z=-16,dx=2,dy=3,dz=2] run function music/replay

#双子洞穴音乐
execute if score music data matches 41 if entity @a[x=-172,y=20,z=79,dx=1,dy=3,dz=21] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-172,y=20,z=79,dx=1,dy=3,dz=21] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-172,y=20,z=79,dx=1,dy=3,dz=21] run function music/replay

execute if score music data matches 3 if entity @a[x=-168,y=31,z=79,dx=1,dy=3,dz=21] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-168,y=31,z=79,dx=1,dy=3,dz=21] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-168,y=31,z=79,dx=1,dy=3,dz=21] run function music/replay

#火焰洞穴音乐
execute if score music data matches 41 if entity @a[x=-228,y=20,z=33,dx=2,dy=3,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-228,y=20,z=33,dx=2,dy=3,dz=2] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-228,y=20,z=33,dx=2,dy=3,dz=2] run function music/replay

execute if score music data matches 2 if entity @a[x=-228,y=31,z=33,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-228,y=31,z=33,dx=2,dy=2,dz=2] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-228,y=31,z=33,dx=2,dy=2,dz=2] run function music/replay

#僵尸洞穴音乐
execute if score music data matches 41 if entity @a[x=-152,y=21,z=50,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-152,y=21,z=50,dx=2,dy=2,dz=1] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-152,y=21,z=50,dx=2,dy=2,dz=1] run function music/replay

execute if score music data matches 2 if entity @a[x=-152,y=30,z=49,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-152,y=30,z=49,dx=2,dy=2,dz=2] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-152,y=30,z=49,dx=2,dy=2,dz=2] run function music/replay

#射箭洞穴音乐
execute if score music data matches 41 if entity @a[x=-153,y=19,z=5,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-153,y=19,z=5,dx=2,dy=2,dz=2] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-153,y=19,z=5,dx=2,dy=2,dz=2] run function music/replay

execute if score music data matches 2 if entity @a[x=-152,y=30,z=5,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-152,y=30,z=5,dx=2,dy=2,dz=2] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-152,y=30,z=5,dx=2,dy=2,dz=2] run function music/replay

#沙漠射箭洞穴音乐
execute if score music data matches 41 if entity @a[x=-123,y=16,z=82,dx=2,dy=3,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-123,y=16,z=82,dx=2,dy=3,dz=1] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-123,y=16,z=82,dx=2,dy=3,dz=1] run function music/replay

execute if score music data matches 2 if entity @a[x=-123,y=31,z=83,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-123,y=31,z=83,dx=2,dy=2,dz=1] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-123,y=31,z=83,dx=2,dy=2,dz=1] run function music/replay

#沙漠岩浆洞穴音乐
execute if score music data matches 41 if entity @a[x=-67,y=20,z=90,dx=1,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-67,y=20,z=90,dx=1,dy=2,dz=2] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-67,y=20,z=90,dx=1,dy=2,dz=2] run function music/replay

execute if score music data matches 41 if entity @a[x=-92,y=20,z=73,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-92,y=20,z=73,dx=2,dy=2,dz=1] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-92,y=20,z=73,dx=2,dy=2,dz=1] run function music/replay

execute if score music data matches 3 if entity @a[x=-67,y=29,z=90,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-67,y=29,z=90,dx=2,dy=2,dz=2] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-67,y=29,z=90,dx=2,dy=2,dz=2] run function music/replay

execute if score music data matches 3 if entity @a[x=-92,y=29,z=73,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-92,y=29,z=73,dx=2,dy=2,dz=2] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-92,y=29,z=73,dx=2,dy=2,dz=2] run function music/replay

#沙漠地铁洞穴音乐
execute if score music data matches 41 if entity @a[x=-114,y=20,z=35,dx=1,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-114,y=20,z=35,dx=1,dy=2,dz=2] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-114,y=20,z=35,dx=1,dy=2,dz=2] run function music/replay

execute if score music data matches 41 if entity @a[x=-123,y=20,z=41,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-123,y=20,z=41,dx=2,dy=2,dz=1] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-123,y=20,z=41,dx=2,dy=2,dz=1] run function music/replay

execute if score music data matches 3 if entity @a[x=-114,y=29,z=35,dx=1,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-114,y=29,z=35,dx=1,dy=2,dz=2] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-114,y=29,z=35,dx=1,dy=2,dz=2] run function music/replay

execute if score music data matches 3 if entity @a[x=-123,y=32,z=41,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-123,y=32,z=41,dx=2,dy=2,dz=1] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-123,y=32,z=41,dx=2,dy=2,dz=1] run function music/replay

#买卖村五色山通道音乐
execute if score music data matches 41 if entity @a[x=-158,y=20,z=-6,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-158,y=20,z=-6,dx=2,dy=2,dz=2] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-158,y=20,z=-6,dx=2,dy=2,dz=2] run function music/replay

execute if score music data matches 41 if entity @a[x=-153,y=12,z=-20,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-153,y=12,z=-20,dx=2,dy=2,dz=2] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-153,y=12,z=-20,dx=2,dy=2,dz=2] run function music/replay

execute if score music data matches 3 if entity @a[x=-158,y=30,z=-6,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-158,y=30,z=-6,dx=2,dy=2,dz=2] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-158,y=30,z=-6,dx=2,dy=2,dz=2] run function music/replay

execute if score music data matches 3 if entity @a[x=-152,y=15,z=-12,dx=2,dy=1,dz=4] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-152,y=15,z=-12,dx=2,dy=1,dz=4] run scoreboard players set music data 41
execute if score repmusic data matches 1 if entity @a[x=-152,y=15,z=-12,dx=2,dy=1,dz=4] run function music/replay