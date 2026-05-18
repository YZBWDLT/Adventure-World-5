# ===== 只执行一次的命令（其中部分可重置） =====

#出现怪物1
execute if score plain_enemy1 data matches 0 if entity @a[x=-202,y=31,z=77,r=12] run summon zombie -202 31 81
execute if score plain_enemy1 data matches 0 if entity @a[x=-202,y=31,z=77,r=12] run summon zombie -197 31 77
execute if score plain_enemy1 data matches 0 if entity @a[x=-202,y=31,z=77,r=12] run summon skeleton -206 31 75
execute if score plain_enemy1 data matches 0 if entity @a[x=-202,y=31,z=77,r=12] run scoreboard players set plain_enemy1 data 1

#出现怪物2
execute if score plain_enemy2 data matches 0 if entity @a[x=-243,y=31,z=50,dx=13,dy=3,dz=15] run summon zombie -239 31 54 0 0 aw:equip
execute if score plain_enemy2 data matches 0 if entity @a[x=-243,y=31,z=50,dx=13,dy=3,dz=15] run summon skeleton -233 31 62
execute if score plain_enemy2 data matches 0 if entity @a[x=-243,y=31,z=50,dx=13,dy=3,dz=15] run summon skeleton -240 31 61
execute if score plain_enemy2 data matches 0 if entity @a[x=-243,y=31,z=50,dx=13,dy=3,dz=15] run scoreboard players set plain_enemy2 data 1

#出现怪物3
execute if score plain_enemy3 data matches 0 if entity @a[x=-156,y=21,z=55,dx=10,dy=4,dz=10] run summon zombie -155 21 57 0 0 aw:equip
execute if score plain_enemy3 data matches 0 if entity @a[x=-156,y=21,z=55,dx=10,dy=4,dz=10] run summon zombie -151 21 59 0 0 aw:equip
execute if score plain_enemy3 data matches 0 if entity @a[x=-156,y=21,z=55,dx=10,dy=4,dz=10] run summon zombie -147 21 61 0 0 aw:equip
execute if score plain_enemy3 data matches 0 if entity @a[x=-156,y=21,z=55,dx=10,dy=4,dz=10] run summon zombie -154 21 64 0 0 aw:equip
execute if score plain_enemy3 data matches 0 if entity @a[x=-156,y=21,z=55,dx=10,dy=4,dz=10] run summon zombie -148 21 65 0 0 aw:equip
execute if score plain_enemy3 data matches 0 if entity @a[x=-156,y=21,z=55,dx=10,dy=4,dz=10] run scoreboard players set plain_enemy3 data 1
execute if entity @e[type=zombie,x=-156,y=21,z=55,dx=10,dy=4,dz=10] run fill -151 21 53 -151 22 53 stone
execute if entity @e[type=zombie,x=-156,y=21,z=55,dx=10,dy=4,dz=10] run fill -150 21 66 -152 23 66 stone
execute unless entity @e[type=zombie,x=-156,y=21,z=55,dx=10,dy=4,dz=10] run fill -151 21 53 -151 22 53 air
execute unless entity @e[type=zombie,x=-156,y=21,z=55,dx=10,dy=4,dz=10] run fill -150 21 66 -152 23 66 air

#出现怪物4
execute if score plain_enemy4 data matches 0 if entity @a[x=-177,y=30,z=-42,dx=36,dy=0,dz=21] run summon zombie -149 31 -26 0 0 aw:baby
execute if score plain_enemy4 data matches 0 if entity @a[x=-177,y=30,z=-42,dx=36,dy=0,dz=21] run summon zombie -166 31 -26 0 0 aw:baby
execute if score plain_enemy4 data matches 0 if entity @a[x=-177,y=30,z=-42,dx=36,dy=0,dz=21] run summon zombie -159 31 -30 0 0 aw:equip
execute if score plain_enemy4 data matches 0 if entity @a[x=-177,y=30,z=-42,dx=36,dy=0,dz=21] run summon skeleton -151 31 -34
execute if score plain_enemy4 data matches 0 if entity @a[x=-177,y=30,z=-42,dx=36,dy=0,dz=21] run summon skeleton -161 31 -37
execute if score plain_enemy4 data matches 0 if entity @a[x=-177,y=30,z=-42,dx=36,dy=0,dz=21] run scoreboard players set plain_enemy4 data 1

#出现怪物5
execute if score plain_enemy5 data matches 0 if entity @a[x=-107,y=31,z=88,dx=15,dy=3,dz=11] run summon zombie -101 31 96 0 0 aw:equip_baby
execute if score plain_enemy5 data matches 0 if entity @a[x=-107,y=31,z=88,dx=15,dy=3,dz=11] run summon zombie -97 31 92 0 0 aw:equip_baby
execute if score plain_enemy5 data matches 0 if entity @a[x=-107,y=31,z=88,dx=15,dy=3,dz=11] run summon zombie -95 31 97
execute if score plain_enemy5 data matches 0 if entity @a[x=-107,y=31,z=88,dx=15,dy=3,dz=11] run scoreboard players set plain_enemy5 data 1

#出现怪物6
execute if score plain_enemy6 data matches 0 if entity @a[x=-124,y=15,z=81,dx=4,dy=4,dz=2] run summon skeleton -131 16 75 0 0 aw:equip
execute if score plain_enemy6 data matches 0 if entity @a[x=-124,y=15,z=81,dx=4,dy=4,dz=2] run summon skeleton -131 16 65 0 0 aw:equip
execute if score plain_enemy6 data matches 0 if entity @a[x=-124,y=15,z=81,dx=4,dy=4,dz=2] run summon skeleton -131 16 55 0 0 aw:equip
execute if score plain_enemy6 data matches 0 if entity @a[x=-124,y=15,z=81,dx=4,dy=4,dz=2] run summon skeleton -113 16 75 0 0 aw:equip
execute if score plain_enemy6 data matches 0 if entity @a[x=-124,y=15,z=81,dx=4,dy=4,dz=2] run summon skeleton -113 16 65 0 0 aw:equip
execute if score plain_enemy6 data matches 0 if entity @a[x=-124,y=15,z=81,dx=4,dy=4,dz=2] run summon skeleton -113 16 55 0 0 aw:equip
execute if score plain_enemy6 data matches 0 if entity @a[x=-124,y=15,z=81,dx=4,dy=4,dz=2] run scoreboard players set plain_enemy6 data 1

#出现怪物7
execute if score plain_enemy7 data matches 0 if entity @a[x=-113,y=31,z=33,dx=30,dy=5,dz=18] run summon zombie -105 31 41 0 0 aw:equip
execute if score plain_enemy7 data matches 0 if entity @a[x=-113,y=31,z=33,dx=30,dy=5,dz=18] run summon zombie -90 31 44 0 0 aw:equip
execute if score plain_enemy7 data matches 0 if entity @a[x=-113,y=31,z=33,dx=30,dy=5,dz=18] run summon chicken -94 31 49 0 0 aw:chicken_equip_jockey
execute if score plain_enemy7 data matches 0 if entity @a[x=-113,y=31,z=33,dx=30,dy=5,dz=18] run summon skeleton -97 31 40 0 0 aw:equip
execute if score plain_enemy7 data matches 0 if entity @a[x=-113,y=31,z=33,dx=30,dy=5,dz=18] run summon skeleton -102 31 46 0 0 aw:equip
execute if score plain_enemy7 data matches 0 if entity @a[x=-113,y=31,z=33,dx=30,dy=5,dz=18] run scoreboard players set plain_enemy7 data 1

#搭建桥
execute if block -200 32 23 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -200 32 23 as @p if entity @s[hasitem=[{item=aw:build1,quantity=5..},{item=aw:build2,quantity=5..}]] run scoreboard players set timeline active 12
execute if block -200 32 23 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -200 32 23 as @p if entity @s[hasitem=[{item=aw:build1,quantity=5..},{item=aw:build2,quantity=5..}]] run function lib/modify_data/states/timeline/enable_time_lapse
execute if block -200 32 23 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -200 32 23 as @p if entity @s[hasitem=[{item=aw:build1,quantity=5..},{item=aw:build2,quantity=5..}]] run function lib/utils/start_dialogue
execute if block -200 32 23 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -200 32 23 as @p if entity @s[hasitem=[{item=aw:build1,quantity=5..},{item=aw:build2,quantity=5..}]] run setblock -200 32 23 air
execute if block -200 32 23 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -200 32 23 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -200 32 23 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建沙漠桥
execute unless entity @a[x=-135,y=33,z=24,dx=5,dy=2,dz=8] if block -135 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§a[我]看不见背面牌子写的什么，还是上去再叫吕岩吧。"}]}
execute if entity @a[x=-135,y=33,z=24,dx=5,dy=2,dz=8] if block -135 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -135 34 28 as @p if entity @s[hasitem=[{item=aw:build2,quantity=5..},{item=aw:build3,quantity=10..}]] run scoreboard players set timeline active 41
execute if entity @a[x=-135,y=33,z=24,dx=5,dy=2,dz=8] if block -135 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -135 34 28 as @p if entity @s[hasitem=[{item=aw:build2,quantity=5..},{item=aw:build3,quantity=10..}]] run function lib/modify_data/states/timeline/enable_time_lapse
execute if entity @a[x=-135,y=33,z=24,dx=5,dy=2,dz=8] if block -135 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -135 34 28 as @p if entity @s[hasitem=[{item=aw:build2,quantity=5..},{item=aw:build3,quantity=10..}]] run function lib/utils/start_dialogue
execute if entity @a[x=-135,y=33,z=24,dx=5,dy=2,dz=8] if block -135 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -135 34 28 as @p if entity @s[hasitem=[{item=aw:build2,quantity=5..},{item=aw:build3,quantity=10..}]] run setblock -135 34 28 air
execute if entity @a[x=-135,y=33,z=24,dx=5,dy=2,dz=8] if block -135 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -135 34 28 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -135 34 28 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#田萍开门
execute if entity @a[x=-86,y=31,z=30,dx=16,dy=4,dz=16] if score progress data matches 6 if score aiya_wodeshengao data matches 0 run function lib/modify_data/states/timeline/enable_time_lapse
execute if entity @a[x=-86,y=31,z=30,dx=16,dy=4,dz=16] if score progress data matches 6 if score aiya_wodeshengao data matches 0 run function lib/utils/start_dialogue
execute if entity @a[x=-86,y=31,z=30,dx=16,dy=4,dz=16] if score progress data matches 6 if score aiya_wodeshengao data matches 0 run scoreboard players set timeline active 55
execute if entity @a[x=-86,y=31,z=30,dx=16,dy=4,dz=16] if score progress data matches 6 if score aiya_wodeshengao data matches 0 run scoreboard players set aiya_wodeshengao data 1

#村庄后山点蜡烛显示
execute if block -141 48 -64 white_candle["candles"=0,"lit"=true] if block -141 31 -21 grass_block run setblock -141 31 -21 redstone_block
execute if block -175 50 -58 orange_candle["candles"=0,"lit"=true] if block -141 31 -20 grass_block run setblock -141 31 -20 redstone_block
execute if block -153 50 -60 light_gray_candle["candles"=0,"lit"=true] if block -141 31 -19 grass_block run setblock -141 31 -19 redstone_block
execute if block -166 41 -53 black_candle["candles"=0,"lit"=true] if block -141 31 -18 grass_block run setblock -141 31 -18 redstone_block
execute if block -141 43 -34 yellow_candle["candles"=0,"lit"=true] if block -141 31 -17 grass_block run setblock -141 31 -17 redstone_block

#蜡烛全点亮
execute if block -154 31 -6 pumpkin if block -141 48 -64 white_candle["candles"=0,"lit"=true] if block -175 50 -58 orange_candle["candles"=0,"lit"=true] if block -153 50 -60 light_gray_candle["candles"=0,"lit"=true] if block -166 41 -53 black_candle["candles"=0,"lit"=true] if block -141 43 -34 yellow_candle["candles"=0,"lit"=true] run tellraw @a {"rawtext":[{"text":"§e某个南瓜发生了变化……"}]}
execute if block -154 31 -6 pumpkin if block -141 48 -64 white_candle["candles"=0,"lit"=true] if block -175 50 -58 orange_candle["candles"=0,"lit"=true] if block -153 50 -60 light_gray_candle["candles"=0,"lit"=true] if block -166 41 -53 black_candle["candles"=0,"lit"=true] if block -141 43 -34 yellow_candle["candles"=0,"lit"=true] run music play solve_puzzle 1 0 play_once
execute if block -154 31 -6 pumpkin if block -141 48 -64 white_candle["candles"=0,"lit"=true] if block -175 50 -58 orange_candle["candles"=0,"lit"=true] if block -153 50 -60 light_gray_candle["candles"=0,"lit"=true] if block -166 41 -53 black_candle["candles"=0,"lit"=true] if block -141 43 -34 yellow_candle["candles"=0,"lit"=true] run function lib/utils/music/queue
execute if block -154 31 -6 pumpkin if block -141 48 -64 white_candle["candles"=0,"lit"=true] if block -175 50 -58 orange_candle["candles"=0,"lit"=true] if block -153 50 -60 light_gray_candle["candles"=0,"lit"=true] if block -166 41 -53 black_candle["candles"=0,"lit"=true] if block -141 43 -34 yellow_candle["candles"=0,"lit"=true] run setblock -154 31 -6 carved_pumpkin