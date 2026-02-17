# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refresh data matches 0 if entity @a[x=-315.5,y=-49,z=60.5,r=1] run function game/7_fortress/refresh

#前往筑梦镇
execute if entity @a[x=-317.5,y=-49,z=60.5,r=1] positioned -240 31 139 facing -239 31 139 run function game/village/enter

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-285.5,y=-38.5,z=91.5,r=2] run tp @a -287 -40 91 facing -286 -40 91
execute if entity @e[type=aw:wind_pearl,x=-315.5,y=-28.5,z=64.5,r=2] run tp @a -316 -30 63 facing -316 -30 64
execute if entity @e[type=aw:wind_pearl,x=-280.5,y=-45.5,z=56.5,r=1.5] run tp @a -281 -47 56 facing -281 -47 57
execute if entity @e[type=aw:wind_pearl,x=-278.5,y=-43.5,z=63.5,r=1.5] run tp @a -279 -45 63 facing -279 -45 62
execute if entity @e[type=aw:wind_pearl,x=-276.5,y=-37.5,z=59.5,r=1.5] run tp @a -277 -39 59 facing -277 -39 60
execute if entity @e[type=aw:wind_pearl,x=-276.5,y=-37.5,z=61.5,r=1.5] run tp @a -277 -39 61 facing -277 -39 60
execute if entity @e[type=aw:wind_pearl,x=-283.5,y=-27.5,z=60.5,r=2] run tp @a -285 -29 60 facing -284 -29 60

#重置一层左侧岩浆
execute if block -310 -48 49 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -318 -49 26 -300 -43 46 air replace lava
execute if block -310 -48 49 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -318 -49 26 -300 -43 46 air replace aw:dig8
execute if block -310 -48 49 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -315 -42 29 flowing_lava
execute if block -310 -48 49 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -310 -48 49 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#重置一层右侧岩浆
execute if block -304 -48 94 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -308 -49 90 -305 -41 94 air replace lava
execute if block -304 -48 94 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -308 -49 90 -305 -41 94 air replace aw:dig8
execute if block -304 -48 94 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -304 -48 94 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#重置二层谜题
execute if block -299 -39 87 stone_button["button_pressed_bit"=true,"facing_direction"=1] run structure load other:lava_wall -319 -41 93
execute if block -299 -39 87 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -299 -39 87 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#点燃所有篝火
execute if block -273 -48 52 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -275 -48 31 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"]
execute if block -273 -48 52 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -314 -38 60 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="west"]
execute if block -273 -48 52 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -281 -30 89 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"]
execute if block -273 -48 52 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -273 -48 52 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#熄灭所有篝火
execute if block -273 -48 54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -275 -48 31 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"]
execute if block -273 -48 54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -314 -38 60 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="west"]
execute if block -273 -48 54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -281 -30 89 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"]
execute if block -273 -48 54 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -273 -48 54 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#所有灵魂篝火被熄灭后
execute if block -281 -26 60 crimson_stem if block -275 -48 31 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"] if block -314 -38 60 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="west"] if block -281 -30 89 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"] run function lib/modify_states/timeline/enable_time_lapse
execute if block -281 -26 60 crimson_stem if block -275 -48 31 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"] if block -314 -38 60 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="west"] if block -281 -30 89 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"] run function lib/modify_states/timeline/enable_lock_camera
execute if block -281 -26 60 crimson_stem if block -275 -48 31 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"] if block -314 -38 60 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="west"] if block -281 -30 89 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"] run scoreboard players set timeline active 43
execute if block -281 -26 60 crimson_stem if block -275 -48 31 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"] if block -314 -38 60 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="west"] if block -281 -30 89 soul_campfire["extinguished"=true,"minecraft:cardinal_direction"="east"] run setblock -281 -26 60 air

#所有灵魂篝火被点燃后
execute if block -281 -26 60 warped_stem if block -275 -48 31 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"] if block -314 -38 60 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="west"] if block -281 -30 89 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"] run function lib/modify_states/timeline/enable_time_lapse
execute if block -281 -26 60 warped_stem if block -275 -48 31 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"] if block -314 -38 60 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="west"] if block -281 -30 89 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"] run function lib/modify_states/timeline/enable_lock_camera
execute if block -281 -26 60 warped_stem if block -275 -48 31 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"] if block -314 -38 60 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="west"] if block -281 -30 89 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"] run scoreboard players set timeline active 42
execute if block -281 -26 60 warped_stem if block -275 -48 31 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"] if block -314 -38 60 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="west"] if block -281 -30 89 soul_campfire["extinguished"=false,"minecraft:cardinal_direction"="east"] run setblock -281 -26 60 air

#进入BOSS战
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 7_fortress_boss data matches 0 run title @a title §l§c烈火生存
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 7_fortress_boss data matches 0 run scoreboard players set music data 122
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 7_fortress_boss data matches 0 run function music/replay
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 7_fortress_boss data matches 0 as @a[hasitem={item=shield}] run tag @s add shield
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 7_fortress_boss data matches 0 as @a[hasitem={item=shield}] run clear @s shield
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 7_fortress_boss data matches 0 run function lib/modify_states/timeline/enable_time_lapse
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 7_fortress_boss data matches 0 run scoreboard players set timeline active 45
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 7_fortress_boss data matches 0 run summon magma_cube -236 -49 82 0 0 spawn_small
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] run fill -255 -49 76 -243 -45 88 air
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] run fill -265 -50 66 -233 -47 98 air replace fire
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] run fill -265 -50 66 -233 -47 98 air replace soul_fire
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] run tp @a -249 -49 82 facing -248 -49 82
execute if block -270 -30 60 stone_button["button_pressed_bit"=true,"facing_direction"=4] run setblock -270 -30 60 stone_button["button_pressed_bit"=false,"facing_direction"=4]

#BOSS战掉下去会死掉
kill @a[x=-265,y=-60,z=66,dx=32,dy=5,dz=32]

#从BOSS战离开（第二次进入场地再离开时）
execute if score 7_fortress_boss data matches 2.. if entity @a[x=-225.5,y=-49,z=82.5,r=1] positioned -240 31 139 facing -239 31 139 run function game/village/enter