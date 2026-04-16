# ===== 只执行一次的命令（其中部分可重置） =====

#出现怪物1
execute if score badland_enemy1 data matches 0 if entity @a[x=-130,y=16,z=0,dx=20,dy=4,dz=19] run summon skeleton -122 16 7 0 0 aw:equip
execute if score badland_enemy1 data matches 0 if entity @a[x=-130,y=16,z=0,dx=20,dy=4,dz=19] run summon chicken -118 16 11 0 0 aw:chicken_equip_jockey
execute if score badland_enemy1 data matches 0 if entity @a[x=-130,y=16,z=0,dx=20,dy=4,dz=19] run summon chicken -122 16 15 0 0 aw:chicken_equip_jockey
execute if score badland_enemy1 data matches 0 if entity @a[x=-130,y=16,z=0,dx=20,dy=4,dz=19] run scoreboard players set badland_enemy1 data 1

#出现怪物2
execute if score badland_enemy2 data matches 0 if entity @a[x=-101,y=22,z=-46,dx=3,dy=3,dz=5] run summon skeleton -99 22 -42 0 0 aw:equip
execute if score badland_enemy2 data matches 0 if entity @a[x=-101,y=22,z=-46,dx=3,dy=3,dz=5] run summon skeleton -101 23 -46 0 0 aw:equip
execute if score badland_enemy2 data matches 0 if entity @a[x=-101,y=22,z=-46,dx=3,dy=3,dz=5] run summon chicken -98 23 -46 0 0 aw:chicken_jockey
execute if score badland_enemy2 data matches 0 if entity @a[x=-101,y=22,z=-46,dx=3,dy=3,dz=5] run scoreboard players set badland_enemy2 data 1

#搭建五色山捷径
execute if block -99 17 10 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -99 17 10 as @p if entity @s[hasitem=[{item=aw:build2,quantity=5..},{item=aw:build3,quantity=20..}]] run scoreboard players set timeline active 56
execute if block -99 17 10 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -99 17 10 as @p if entity @s[hasitem=[{item=aw:build2,quantity=5..},{item=aw:build3,quantity=20..}]] run function lib/modify_states/timeline/enable_time_lapse
execute if block -99 17 10 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -99 17 10 as @p if entity @s[hasitem=[{item=aw:build2,quantity=5..},{item=aw:build3,quantity=20..}]] run function lib/utils/start_dialogue
execute if block -99 17 10 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -99 17 10 as @p if entity @s[hasitem=[{item=aw:build2,quantity=5..},{item=aw:build3,quantity=20..}]] run setblock -99 17 10 air
execute if block -99 17 10 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -99 17 10 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -99 17 10 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#点燃篝火解锁御风珠点
execute unless block -83 64 -26 light_blue_glazed_terracotta if block -91 65 -42 campfire["extinguished"=false,"minecraft:cardinal_direction"="north"] run music play solve_puzzle 1 0 play_once
execute unless block -83 64 -26 light_blue_glazed_terracotta if block -91 65 -42 campfire["extinguished"=false,"minecraft:cardinal_direction"="north"] run function lib/utils/music/queue
execute unless block -83 64 -26 light_blue_glazed_terracotta if block -91 65 -42 campfire["extinguished"=false,"minecraft:cardinal_direction"="north"] run setblock -83 64 -26 light_blue_glazed_terracotta

#仿搭枯木解锁心之碎片
execute if block -78 16 17 hardened_clay run clone -88 16 5 -78 23 15 -88 2 5
execute if block -78 16 17 hardened_clay run fill -88 2 5 -78 9 15 black_terracotta replace black_glazed_terracotta
execute if block -78 16 17 hardened_clay run fill -88 2 5 -78 9 15 gray_terracotta replace gray_glazed_terracotta
execute if block -78 16 17 hardened_clay run fill -88 2 5 -78 9 15 light_gray_terracotta replace silver_glazed_terracotta
execute if block -78 16 17 hardened_clay run fill -88 2 5 -78 9 15 white_terracotta replace white_glazed_terracotta
execute if block -78 16 17 hardened_clay if blocks -88 2 5 -78 9 15 -78 16 5 all run music play solve_puzzle 1 0 play_once
execute if block -78 16 17 hardened_clay if blocks -88 2 5 -78 9 15 -78 16 5 all run function lib/utils/music/queue
execute if block -78 16 17 hardened_clay if blocks -88 2 5 -78 9 15 -78 16 5 all run fill -79 16 17 -77 18 17 air

#送完明信片解锁邹鹭遥的馈赠
execute if blocks -206 31 -64 -206 31 -64 -206 35 -64 all if blocks -172 28 58 -172 28 58 -172 32 58 all if blocks -194 28 125 -194 28 125 -194 32 125 all if block -97 78 -50 hardened_clay if block -97 79 -50 air run function game/badland/events/show_zouluyao_gift

#邹鹭遥的馈赠玻璃瓶
execute if score bottle4 data matches 0 if block -97 79 -50 chest if blocks -97 79 -50 -97 79 -50 -232 -9 179 all run tellraw @a {"rawtext":[{"text":"§e你拿到了玻璃瓶，这里的景色比明信片上的图画更漂亮！"}]}
execute if score bottle4 data matches 0 if block -97 79 -50 chest if blocks -97 79 -50 -97 79 -50 -232 -9 179 all run music play get_item 1 0 play_once
execute if score bottle4 data matches 0 if block -97 79 -50 chest if blocks -97 79 -50 -97 79 -50 -232 -9 179 all run function lib/utils/music/queue
execute if score bottle4 data matches 0 if block -97 79 -50 chest if blocks -97 79 -50 -97 79 -50 -232 -9 179 all run scoreboard players set bottle4 data 1