# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refresh data matches 0 if entity @a[x=-189.5,y=-44,z=-32.5,r=1] run function game/4_rail/refresh

#清除矿车
scriptevent aw:removeItemEntity minecraft:minecart
clear @a minecart

#前往买卖村
execute if entity @a[x=-191.5,y=-44,z=-32.5,r=1] run title @a title §o§6买卖村
execute if entity @a[x=-191.5,y=-44,z=-32.5,r=1] run spawnpoint @a -192 27 -35
execute if entity @a[x=-191.5,y=-44,z=-32.5,r=1] run setworldspawn -192 27 -35
execute if entity @a[x=-191.5,y=-44,z=-32.5,r=1] run scoreboard players set position data 4
execute if entity @a[x=-191.5,y=-44,z=-32.5,r=1] run scoreboard players set refresh data 0
execute if entity @a[x=-191.5,y=-44,z=-32.5,r=1] run tp @a -192 27 -35 facing -192 27 -36

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-169.5,y=-42.5,z=-44.5,r=2] run tp @a -169 -44 -45 facing -170 -44 -45
execute if entity @e[type=aw:wind_pearl,x=-121.5,y=-42.5,z=-27.5,r=2] run tp @a -122 -44 -29 facing -122 -44 -28
execute if entity @e[type=aw:wind_pearl,x=-149.5,y=-42.5,z=-16.5,r=2] run tp @a -151 -44 -17 facing -150 -44 -17
execute if entity @e[type=aw:wind_pearl,x=-147.5,y=-31.5,z=-54.5,r=2] run tp @a -149 -33 -55 facing -148 -33 -55
execute if entity @e[type=aw:wind_pearl,x=-157.5,y=-31.5,z=-20.5,r=2] run tp @a -158 -33 -22 facing -158 -33 -21

#生成矿车
execute if block -145 -43 -33 stone_button["button_pressed_bit"=true,"facing_direction"=1] run kill @e[type=minecart]
execute if block -145 -43 -33 stone_button["button_pressed_bit"=true,"facing_direction"=1] run summon minecart -144 -44 -33
execute if block -145 -43 -33 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -145 -43 -33 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#矿车观察视角
execute if score camera data matches 0 if entity @a[x=-142.5,y=-44,z=-46.5,r=1] run inputpermission set @a[x=-142.5,y=-44,z=-46.5,r=1] camera disabled
execute if score camera data matches 0 if entity @a[x=-142.5,y=-44,z=-46.5,r=1] run tp @a[x=-142.5,y=-44,z=-46.5,r=1] -142.5 -44 -46.5 facing -142 -44 -47
execute if score camera data matches 0 if entity @a[x=-142.5,y=-44,z=-46.5,r=1] run camera @a[x=-142.5,y=-44,z=-46.5,r=1] set minecraft:free ease 1 linear pos -135 -36 -50 facing -131 -43 -54
execute if score camera data matches 0 if entity @a[x=-142.5,y=-44,z=-46.5,r=1] run scoreboard players set camera data 1
execute if score camera data matches 0 if entity @a[x=-158.5,y=-44,z=-18.5,r=1] run inputpermission set @a[x=-158.5,y=-44,z=-18.5,r=1] camera disabled
execute if score camera data matches 0 if entity @a[x=-158.5,y=-44,z=-18.5,r=1] run tp @a[x=-158.5,y=-44,z=-18.5,r=1] -158.5 -44 -18.5 facing -158 -44 -19
execute if score camera data matches 0 if entity @a[x=-158.5,y=-44,z=-18.5,r=1] run camera @a[x=-158.5,y=-44,z=-18.5,r=1] set minecraft:free ease 1 linear pos -150 -35 -23 facing -148 -38 -23
execute if score camera data matches 0 if entity @a[x=-158.5,y=-44,z=-18.5,r=1] run scoreboard players set camera data 1
execute if score camera data matches 1 unless entity @a[x=-142.5,y=-44,z=-46.5,r=1] unless entity @a[x=-158.5,y=-44,z=-18.5,r=1] run inputpermission set @a camera enabled
execute if score camera data matches 1 unless entity @a[x=-142.5,y=-44,z=-46.5,r=1] unless entity @a[x=-158.5,y=-44,z=-18.5,r=1] run camera @a clear
execute if score camera data matches 1 unless entity @a[x=-142.5,y=-44,z=-46.5,r=1] unless entity @a[x=-158.5,y=-44,z=-18.5,r=1] run scoreboard players set camera data 0

#从BOSS战离开（第二次进入场地再离开时）
execute if score 4_rail_boss data matches 3 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run title @a title §o§6买卖村
execute if score 4_rail_boss data matches 3 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run spawnpoint @a -192 27 -35
execute if score 4_rail_boss data matches 3 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run setworldspawn -192 27 -35
execute if score 4_rail_boss data matches 3 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run scoreboard players set position data 4
execute if score 4_rail_boss data matches 3 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run scoreboard players set refresh data 0
execute if score 4_rail_boss data matches 3 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run tp @a -192 27 -35 facing -192 27 -36