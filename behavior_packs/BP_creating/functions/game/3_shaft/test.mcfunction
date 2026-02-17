# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refresh data matches 0 if entity @a[x=-163.5,y=-59,z=70.5,r=1] run function game/3_shaft/refresh

#前往逍遥平原
execute if entity @a[x=-163.5,y=-59,z=68.5,r=1] positioned -164 22 66 facing -164 22 65 run function game/plain/enter

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-167.5,y=-34.5,z=82.5,r=2] run tp @a -169 -36 82 facing -168 -36 82
execute if entity @e[type=aw:wind_pearl,x=-163.5,y=-38.5,z=64.5,r=2] run tp @a -164 -40 65 facing -164 -40 64
execute if entity @e[type=aw:wind_pearl,x=-139.5,y=-35.5,z=117.5,r=2] run tp @a -140 -38 117 facing -139 -38 117
execute if entity @e[type=aw:wind_pearl,x=-118.5,y=-39.5,z=96.5,r=1.5] run tp @a -119 -41 96 facing -119 -41 95
execute if entity @e[type=aw:wind_pearl,x=-94.5,y=-39.5,z=98.5,r=1.5] run tp @a[x=-120,y=-43,z=68,dx=25,dy=17,dz=38] -95 -41 98 facing -94 -41 98
execute if entity @e[type=aw:wind_pearl,x=-112.5,y=-38.5,z=86.5,r=1.5] run tp @a[x=-120,y=-43,z=68,dx=25,dy=17,dz=38] -113 -40 86 facing -114 -40 86
execute if entity @e[type=aw:wind_pearl,x=-94.5,y=-38.5,z=81.5,r=1.5] run tp @a[x=-120,y=-43,z=68,dx=25,dy=17,dz=38] -95 -40 81 facing -94 -40 81
execute if entity @e[type=aw:wind_pearl,x=-97.5,y=-33.5,z=68.5,r=2] run tp @a[x=-120,y=-43,z=68,dx=25,dy=17,dz=38] -98 -35 69 facing -98 -35 68
execute if entity @e[type=aw:wind_pearl,x=-94.5,y=-32.5,z=66.5,r=2] run tp @a[x=-133,y=-35,z=28,dx=38,dy=9,dz=38] -95 -34 65 facing -95 -34 66
execute if entity @e[type=aw:wind_pearl,x=-113.5,y=-26.5,z=47.5,r=2] run tp @a[x=-133,y=-35,z=28,dx=38,dy=9,dz=38] -114 -29 47 facing -115 -29 47
execute if entity @e[type=aw:wind_pearl,x=-100.5,y=-26.5,z=47.5,r=2] run tp @a[x=-133,y=-35,z=28,dx=38,dy=9,dz=38] -101 -29 47 facing -100 -29 47
execute if entity @e[type=aw:wind_pearl,x=-113.5,y=-26.5,z=60.5,r=2] run tp @a[x=-133,y=-35,z=28,dx=38,dy=9,dz=38] -114 -29 60 facing -114 -29 61
execute if entity @e[type=aw:wind_pearl,x=-113.5,y=-26.5,z=34.5,r=2] run tp @a[x=-133,y=-35,z=28,dx=38,dy=9,dz=38] -114 -29 34 facing -114 -29 33
execute if entity @e[type=aw:wind_pearl,x=-134.5,y=-28.5,z=34.5,r=2] run tp @a -136 -30 34 facing -135 -30 34
execute if entity @e[type=aw:wind_pearl,x=-185.5,y=-39.5,z=41.5,r=2] run tp @a -185 -41 41 facing -186 -41 41
execute if entity @e[type=aw:wind_pearl,x=-147.5,y=-27.5,z=57.5,r=2] run tp @a -148 -30 57 facing -149 -30 57
execute if entity @e[type=aw:wind_pearl,x=-90.5,y=-43.5,z=47.5,r=2] run tp @a -92 -45 47 facing -91 -45 47

#重置跑酷1
execute if block -184 -58 136 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -189 -42 129 -176 -30 134 -189 -59 129
execute if block -184 -58 136 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -184 -58 136 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#重置下落方块
execute if block -125 -58 136 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -124 -59 136 -124 -50 136 air replace gravel
execute if block -125 -58 136 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -124 -26 136 gravel
execute if block -125 -58 136 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -125 -58 136 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#重置谜题
execute if block -104 -40 117 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -93 -32 128 -93 -28 130 -95 -38 128
execute if block -104 -40 117 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -104 -40 117 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#重置挖掘
execute if block -144 -58 68 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -152 -55 69 -136 -52 85 aw:dig1
execute if block -144 -58 68 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -144 -58 68 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#变化御风珠落点平台
execute if entity @a[x=-137,y=-31,z=55,dx=2,dy=3,dz=4] if score tick time matches 0 if block -149 -32 57 air run setblock -148 -32 57 stone
execute if score tick time matches 0 if block -149 -32 57 stone run setblock -148 -32 57 air
execute if entity @a[x=-137,y=-31,z=55,dx=2,dy=3,dz=4] if score tick time matches 0 if block -148 -32 57 stone run setblock -149 -32 57 stone
execute if score tick time matches 0 if block -148 -32 57 air run setblock -149 -32 57 air

#进入BOSS战
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] run tp @a -114 -54 47
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run title @a title §l§9骷髅箭网
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run scoreboard players set timeline active 11
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run function lib/modify_states/timeline/enable_time_lapse
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run summon skeleton -114 -54 30
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run summon skeleton -131 -54 47
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run summon skeleton -114 -54 64
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run summon skeleton -97 -54 47
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run scoreboard players set music data 52
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] if score 3_shaft_boss data matches 0 run function music/replay
execute if block -136 -57 37 stone_button["button_pressed_bit"=true,"facing_direction"=4] run setblock -136 -57 37 stone_button["button_pressed_bit"=false,"facing_direction"=4]

#从BOSS战离开（第二次进入场地再离开时）
execute if score 3_shaft_boss data matches 2 if entity @a[x=-84.5,y=-45,z=47.5,r=1] positioned -164 22 66 facing -164 22 65 run function game/plain/enter
