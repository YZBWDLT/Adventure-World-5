# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-256.5,y=-48.94,z=-12.5,r=1] run function game/5_mansion/refresh

#标靶清雪球
execute if score bow itemState matches 0 run kill @e[type=aw:wind_pearl,x=-310.5,y=-46.5,z=-16.5,r=4]
execute if score bow itemState matches 0 run kill @e[type=aw:wind_pearl,x=-262.5,y=-46.5,z=-0.5,r=4]
execute if score bow itemState matches 0 run kill @e[type=aw:wind_pearl,x=-257.5,y=-46.5,z=-22.5,r=4]
execute if score bow itemState matches 0 run kill @e[type=aw:wind_pearl,x=-306.5,y=-47.5,z=-11.5,r=4]
execute if score bow itemState matches 0 run kill @e[type=fishing_hook,x=-310.5,y=-46.5,z=-16.5,r=4]
execute if score bow itemState matches 0 run kill @e[type=fishing_hook,x=-262.5,y=-46.5,z=-0.5,r=4]
execute if score bow itemState matches 0 run kill @e[type=fishing_hook,x=-257.5,y=-46.5,z=-22.5,r=4]
execute if score bow itemState matches 0 run kill @e[type=fishing_hook,x=-306.5,y=-47.5,z=-11.5,r=4]
execute if score bow itemState matches 0 if score windPearl itemState matches 2 run scoreboard players set windPearl itemState 1
execute if score bow itemState matches 0 if score windPearl itemState matches 1 if entity @a[x=-310.5,y=-46.5,z=-16.5,r=4] run scoreboard players set windPearl itemState 2
execute if score bow itemState matches 0 if score windPearl itemState matches 1 if entity @a[x=-262.5,y=-46.5,z=-0.5,r=4] run scoreboard players set windPearl itemState 2
execute if score bow itemState matches 0 if score windPearl itemState matches 1 if entity @a[x=-257.5,y=-46.5,z=-22.5,r=4] run scoreboard players set windPearl itemState 2
execute if score bow itemState matches 0 if score windPearl itemState matches 1 if entity @a[x=-306.5,y=-47.5,z=-11.5,r=4] run scoreboard players set windPearl itemState 2
execute if score bow itemState matches 0 if entity @a[x=-310.5,y=-46.5,z=-16.5,r=4] as @a[hasitem={item=fishing_rod}] run tag @s add fishing_rod
execute if score bow itemState matches 0 if entity @a[x=-310.5,y=-46.5,z=-16.5,r=4] as @a[hasitem={item=fishing_rod}] run clear @s fishing_rod
execute if score bow itemState matches 0 if entity @a[x=-262.5,y=-46.5,z=-0.5,r=4] as @a[hasitem={item=fishing_rod}] run tag @s add fishing_rod
execute if score bow itemState matches 0 if entity @a[x=-262.5,y=-46.5,z=-0.5,r=4] as @a[hasitem={item=fishing_rod}] run clear @s fishing_rod
execute if score bow itemState matches 0 if entity @a[x=-257.5,y=-46.5,z=-22.5,r=4] as @a[hasitem={item=fishing_rod}] run tag @s add fishing_rod
execute if score bow itemState matches 0 if entity @a[x=-257.5,y=-46.5,z=-22.5,r=4] as @a[hasitem={item=fishing_rod}] run clear @s fishing_rod
execute if score bow itemState matches 0 if entity @a[x=-306.5,y=-47.5,z=-11.5,r=4] as @a[hasitem={item=fishing_rod}] run tag @s add fishing_rod
execute if score bow itemState matches 0 if entity @a[x=-306.5,y=-47.5,z=-11.5,r=4] as @a[hasitem={item=fishing_rod}] run clear @s fishing_rod
execute if score bow itemState matches 0 unless entity @a[x=-310.5,y=-46.5,z=-16.5,r=4] unless entity @a[x=-262.5,y=-46.5,z=-0.5,r=4] unless entity @a[x=-257.5,y=-46.5,z=-22.5,r=4] unless entity @a[x=-306.5,y=-47.5,z=-11.5,r=4] if entity @a[tag=fishing_rod] run function system/game
execute if score bow itemState matches 0 unless entity @a[x=-310.5,y=-46.5,z=-16.5,r=4] unless entity @a[x=-262.5,y=-46.5,z=-0.5,r=4] unless entity @a[x=-257.5,y=-46.5,z=-22.5,r=4] unless entity @a[x=-306.5,y=-47.5,z=-11.5,r=4] run give @a[tag=fishing_rod] fishing_rod
execute if score bow itemState matches 0 unless entity @a[x=-310.5,y=-46.5,z=-16.5,r=4] unless entity @a[x=-262.5,y=-46.5,z=-0.5,r=4] unless entity @a[x=-257.5,y=-46.5,z=-22.5,r=4] unless entity @a[x=-306.5,y=-47.5,z=-11.5,r=4] run tag @a remove fishing_rod

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-274.5,y=-47.5,z=-29.5,r=1.5] run tp @a -275 -49 -30 facing -275 -49 -29
execute if entity @e[type=aw:wind_pearl,x=-291.5,y=-16.5,z=-11.5,r=1.5] run tp @a -292 -18 -12 facing -292 -18 -13

#南瓜显示-钥匙箱子
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -315 -49 -10 air run clone -315 -51 -10 -315 -51 -10 -315 -49 -10 replace move
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -315 -49 -10 chest run clone -315 -49 -10 -315 -49 -10 -315 -51 -10 replace move

#南瓜显示-方块箱子
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -307 -43 -42 air run clone -307 -46 -46 -307 -46 -46 -307 -43 -42 replace move
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -307 -43 -42 chest run clone -307 -43 -42 -307 -43 -42 -307 -46 -46 replace move

#南瓜显示-跑酷
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 air run setblock -292 -46 -23 oak_planks
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 air run fill -299 -46 -23 -296 -46 -23 ladder ["facing_direction"=2]
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 air run setblock -301 -46 -24 oak_planks
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 air run setblock -298 -46 -27 oak_planks
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 air run setblock -289 -46 -26 oak_planks
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 oak_planks run setblock -292 -46 -23 air
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 oak_planks run fill -299 -46 -23 -296 -46 -23 air
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 oak_planks run setblock -301 -46 -24 air
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 oak_planks run setblock -298 -46 -27 air
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -289 -46 -26 oak_planks run setblock -289 -46 -26 air

#前往明月森林
execute if entity @a[x=-254.5,y=-49,z=-12.5,r=1] positioned -299 31 10 run function game/forest/enter
execute if entity @a[x=-254.5,y=-49,z=-12.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-254.5,y=-49,z=-12.5,r=1] run tp @a -299 31 10 facing -298 31 10

#四角的观察视角
execute if score camera data matches 0 if entity @a[x=-266.5,y=-49,z=7.5,r=1] run camera @a[x=-266.5,y=-49,z=7.5,r=1] set minecraft:free pos -306 60 15 rot 90 90
execute if score camera data matches 0 if entity @a[x=-266.5,y=-49,z=7.5,r=1] run scoreboard players set camera data 1
execute if score camera data matches 0 if entity @a[x=-266.5,y=-49,z=-32.5,r=1] run camera @a[x=-266.5,y=-49,z=-32.5,r=1] set minecraft:free pos -306 60 6 rot 90 90
execute if score camera data matches 0 if entity @a[x=-266.5,y=-49,z=-32.5,r=1] run scoreboard players set camera data 1
execute if score camera data matches 0 if entity @a[x=-306.5,y=-49,z=7.5,r=1] run camera @a[x=-306.5,y=-49,z=7.5,r=1] set minecraft:free pos -315 60 15 rot 90 90
execute if score camera data matches 0 if entity @a[x=-306.5,y=-49,z=7.5,r=1] run scoreboard players set camera data 1
execute if score camera data matches 0 if entity @a[x=-306.5,y=-49,z=-32.5,r=1] run camera @a[x=-306.5,y=-49,z=-32.5,r=1] set minecraft:free pos -315 60 6 rot 90 90
execute if score camera data matches 0 if entity @a[x=-306.5,y=-49,z=-32.5,r=1] run scoreboard players set camera data 1
execute if score camera data matches 1 unless entity @a[x=-266.5,y=-49,z=7.5,r=1] unless entity @a[x=-266.5,y=-49,z=-32.5,r=1] unless entity @a[x=-306.5,y=-49,z=7.5,r=1] unless entity @a[x=-306.5,y=-49,z=-32.5,r=1] run camera @a clear
execute if score camera data matches 1 unless entity @a[x=-266.5,y=-49,z=7.5,r=1] unless entity @a[x=-266.5,y=-49,z=-32.5,r=1] unless entity @a[x=-306.5,y=-49,z=7.5,r=1] unless entity @a[x=-306.5,y=-49,z=-32.5,r=1] run scoreboard players set camera data 0

#一楼->二楼
#具体会到哪个位置与旋转方向有关
execute unless score 5_mansion_direction data matches 4 if entity @a[x=-263.5,y=-44,z=-40.5,r=1] run function game/5_mansion/title_f2
execute if score 5_mansion_direction data matches 4 if entity @a[x=-263.5,y=-44,z=-40.5,r=1] positioned -305 43 6 run function game/forest/enter
execute if score 5_mansion_direction data matches 4 if entity @a[x=-263.5,y=-44,z=-40.5,r=1] run function game/forest/refresh
execute if score 5_mansion_direction data matches 1 if entity @a[x=-263.5,y=-44,z=-40.5,r=1] run tp @a -263 -27 -41 facing -262 -27 -41
execute if score 5_mansion_direction data matches 2 if entity @a[x=-263.5,y=-44,z=-40.5,r=1] run tp @a -259 -27 11 facing -259 -27 12
execute if score 5_mansion_direction data matches 3 if entity @a[x=-263.5,y=-44,z=-40.5,r=1] run tp @a -311 -27 15 facing -312 -27 15
execute if score 5_mansion_direction data matches 4 if entity @a[x=-263.5,y=-44,z=-40.5,r=1] run tp @a -305 43 6 facing -304 43 6

execute unless score 5_mansion_direction data matches 3 if entity @a[x=-258.5,y=-44,z=9.5,r=1] run function game/5_mansion/title_f2
execute if score 5_mansion_direction data matches 3 if entity @a[x=-258.5,y=-44,z=9.5,r=1] positioned -306 43 16 run function game/forest/enter
execute if score 5_mansion_direction data matches 3 if entity @a[x=-258.5,y=-44,z=9.5,r=1] run function game/forest/refresh
execute if score 5_mansion_direction data matches 1 if entity @a[x=-258.5,y=-44,z=9.5,r=1] run tp @a -259 -27 11 facing -259 -27 12
execute if score 5_mansion_direction data matches 2 if entity @a[x=-258.5,y=-44,z=9.5,r=1] run tp @a -311 -27 15 facing -312 -27 15
execute if score 5_mansion_direction data matches 3 if entity @a[x=-258.5,y=-44,z=9.5,r=1] run tp @a -306 43 16 facing -306 43 17
execute if score 5_mansion_direction data matches 4 if entity @a[x=-258.5,y=-44,z=9.5,r=1] run tp @a -263 -27 -41 facing -262 -27 -41

execute unless score 5_mansion_direction data matches 2 if entity @a[x=-308.5,y=-44,z=15.5,r=1] run function game/5_mansion/title_f2
execute if score 5_mansion_direction data matches 2 if entity @a[x=-308.5,y=-44,z=15.5,r=1] positioned -316 43 15 run function game/forest/enter
execute if score 5_mansion_direction data matches 2 if entity @a[x=-308.5,y=-44,z=15.5,r=1] run function game/forest/refresh
execute if score 5_mansion_direction data matches 1 if entity @a[x=-308.5,y=-44,z=15.5,r=1] run tp @a -311 -27 15 facing -312 -27 15
execute if score 5_mansion_direction data matches 2 if entity @a[x=-308.5,y=-44,z=15.5,r=1] run tp @a -316 43 15 facing -317 43 15
execute if score 5_mansion_direction data matches 3 if entity @a[x=-308.5,y=-44,z=15.5,r=1] run tp @a -263 -27 -41 facing -262 -27 -41
execute if score 5_mansion_direction data matches 4 if entity @a[x=-308.5,y=-44,z=15.5,r=1] run tp @a -259 -27 11 facing -259 -27 12

execute unless score 5_mansion_direction data matches 1 if entity @a[x=-314.5,y=-44,z=-35.5,r=1] run function game/5_mansion/title_f2
execute if score 5_mansion_direction data matches 1 if entity @a[x=-314.5,y=-44,z=-35.5,r=1] positioned -315 43 5 run function game/forest/enter
execute if score 5_mansion_direction data matches 1 if entity @a[x=-314.5,y=-44,z=-35.5,r=1] run function game/forest/refresh
execute if score 5_mansion_direction data matches 1 if entity @a[x=-314.5,y=-44,z=-35.5,r=1] run tp @a -315 43 5 facing -315 43 4
execute if score 5_mansion_direction data matches 2 if entity @a[x=-314.5,y=-44,z=-35.5,r=1] run tp @a -263 -27 -41 facing -262 -27 -41
execute if score 5_mansion_direction data matches 3 if entity @a[x=-314.5,y=-44,z=-35.5,r=1] run tp @a -259 -27 11 facing -259 -27 12
execute if score 5_mansion_direction data matches 4 if entity @a[x=-314.5,y=-44,z=-35.5,r=1] run tp @a -311 -27 15 facing -312 -27 15

#二楼->一楼
#具体会到哪个位置与旋转方向有关
execute if entity @a[x=-264.5,y=-27,z=-40.5,r=1] run function game/5_mansion/title_f1
execute if score 5_mansion_direction data matches 1 if entity @a[x=-264.5,y=-27,z=-40.5,r=1] run tp @a -266 -45 -41 facing -267 -45 -41
execute if score 5_mansion_direction data matches 2 if entity @a[x=-264.5,y=-27,z=-40.5,r=1] run tp @a -315 -45 -34 facing -315 -45 -33
execute if score 5_mansion_direction data matches 3 if entity @a[x=-264.5,y=-27,z=-40.5,r=1] run tp @a -307 -45 15 facing -306 -45 15
execute if score 5_mansion_direction data matches 4 if entity @a[x=-264.5,y=-27,z=-40.5,r=1] run tp @a -259 -45 7 facing -259 -45 6

execute if entity @a[x=-258.5,y=-27,z=9.5,r=1] run function game/5_mansion/title_f1
execute if score 5_mansion_direction data matches 1 if entity @a[x=-258.5,y=-27,z=9.5,r=1] run tp @a -259 -45 7 facing -259 -45 6
execute if score 5_mansion_direction data matches 2 if entity @a[x=-258.5,y=-27,z=9.5,r=1] run tp @a -266 -45 -41 facing -267 -45 -41
execute if score 5_mansion_direction data matches 3 if entity @a[x=-258.5,y=-27,z=9.5,r=1] run tp @a -315 -45 -34 facing -315 -45 -33
execute if score 5_mansion_direction data matches 4 if entity @a[x=-258.5,y=-27,z=9.5,r=1] run tp @a -307 -45 15 facing -306 -45 15

execute if entity @a[x=-308.5,y=-27,z=15.5,r=1] run function game/5_mansion/title_f1
execute if score 5_mansion_direction data matches 1 if entity @a[x=-308.5,y=-27,z=15.5,r=1] run tp @a -307 -45 15 facing -306 -45 15
execute if score 5_mansion_direction data matches 2 if entity @a[x=-308.5,y=-27,z=15.5,r=1] run tp @a -259 -45 7 facing -259 -45 6
execute if score 5_mansion_direction data matches 3 if entity @a[x=-308.5,y=-27,z=15.5,r=1] run tp @a -266 -45 -41 facing -267 -45 -41
execute if score 5_mansion_direction data matches 4 if entity @a[x=-308.5,y=-27,z=15.5,r=1] run tp @a -315 -45 -34 facing -315 -45 -33

#旋转成1（右上无）
execute if block -285 -48 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set 5_mansion_direction data 1
execute if block -285 -48 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if block -285 -48 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/start_dialogue
execute if block -285 -48 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 25
execute if block -285 -48 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -285 -48 -26 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -285 -48 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 -47 -16 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -285 -48 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 -47 -18 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -285 -48 -24 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -285 -48 -24 air

#旋转成2（左上无）
execute if block -285 -48 -26 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set 5_mansion_direction data 2
execute if block -285 -48 -26 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if block -285 -48 -26 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/start_dialogue
execute if block -285 -48 -26 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 25
execute if block -285 -48 -26 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -285 -48 -24 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -285 -48 -26 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 -47 -16 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -285 -48 -26 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 -47 -18 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -285 -48 -26 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -285 -48 -26 air

#旋转成3（左下无）
execute if block -290 -47 -16 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set 5_mansion_direction data 3
execute if block -290 -47 -16 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if block -290 -47 -16 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/start_dialogue
execute if block -290 -47 -16 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 25
execute if block -290 -47 -16 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -285 -48 -24 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -290 -47 -16 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -285 -48 -26 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -290 -47 -16 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 -47 -18 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -290 -47 -16 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 -47 -16 air

#旋转成4（右下无）
execute if block -290 -47 -18 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set 5_mansion_direction data 4
execute if block -290 -47 -18 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if block -290 -47 -18 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/start_dialogue
execute if block -290 -47 -18 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 25
execute if block -290 -47 -18 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -285 -48 -24 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -290 -47 -18 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -285 -48 -26 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -290 -47 -18 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 -47 -16 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -290 -47 -18 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 -47 -18 air

#进入BOSS战
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] run fill -318 -39 -34 -292 -35 -28 air
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] run clone -319 -24 -53 -291 -24 -34 -319 -40 -53
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] run fill -318 -39 -21 -318 -39 -17 aw:decorated_pot_type3
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] run fill -292 -39 -21 -292 -39 -17 aw:decorated_pot_type3
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] run setblock -308 -39 -17 aw:decorated_pot_type2
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] run setblock -302 -39 -17 aw:decorated_pot_type2
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 run title @a title §l§8骷髅之王
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 run scoreboard players set music data 82
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 run function lib/utils/music/replay
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 run summon aw:skeleton_king -305 -39 -47 0 0 aw:arrow_m
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 run tag @e[type=aw:skeleton_king] add arrow_m
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 as @a[hasitem={item=shield}] run tag @s add shield
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 as @a[hasitem={item=shield}] run clear @s shield
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 run function lib/modify_states/timeline/enable_time_lapse
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 run scoreboard players set timeline active 26
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] if score 5_mansion_boss data matches 0 run scoreboard players set 5_mansion_boss data 1
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] run tp @a -305 -39 -26 facing -305 -39 -27
execute if block -279 -48 -13 stone_button["button_pressed_bit"=true,"facing_direction"=5] run setblock -279 -48 -13 stone_button["button_pressed_bit"=false,"facing_direction"=5]

#骷髅之王的存活影响门的开关
execute if score 5_mansion_boss data matches 1 if entity @e[type=aw:skeleton_king] if block -305 -39 -16 air run fill -306 -39 -16 -304 -36 -16 dark_oak_planks
execute if score 5_mansion_boss data matches 1 if block -305 -34 -53 dark_oak_planks if entity @a[x=-318,y=-40,z=-52,dx=26,dy=10,dz=35] unless entity @e[type=aw:skeleton_king] if block -305 -39 -16 dark_oak_planks run clone -307 -31 -13 -303 -27 -13 -307 -39 -16
execute if score 5_mansion_boss data matches 1 if block -305 -34 -53 dark_oak_planks if entity @a[x=-318,y=-40,z=-52,dx=26,dy=10,dz=35] unless entity @e[type=aw:skeleton_king] run music play boss_win_start
execute if score 5_mansion_boss data matches 1 if block -305 -34 -53 dark_oak_planks if entity @a[x=-318,y=-40,z=-52,dx=26,dy=10,dz=35] unless entity @e[type=aw:skeleton_king] run scoreboard players set music data 83
execute if score 5_mansion_boss data matches 1 if block -305 -34 -53 dark_oak_planks if entity @a[x=-318,y=-40,z=-52,dx=26,dy=10,dz=35] unless entity @e[type=aw:skeleton_king] run function lib/utils/music/queue
execute if score 5_mansion_boss data matches 1 if block -305 -34 -53 dark_oak_planks if entity @a[x=-318,y=-40,z=-52,dx=26,dy=10,dz=35] unless entity @e[type=aw:skeleton_king] run scoreboard players set 5_mansion_boss data 2

#从BOSS战离开（第二次进入场地再离开时）
execute if score 5_mansion_boss data matches 3.. if entity @a[x=-304.5,y=-39,z=-8.5,r=1] positioned -299 31 10 run function game/forest/enter
execute if score 5_mansion_boss data matches 3.. if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run scoreboard players set refreshArea data 0
execute if score 5_mansion_boss data matches 3.. if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run tp @a -299 31 10 facing -298 31 10