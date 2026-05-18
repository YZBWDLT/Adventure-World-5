# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-286.5,y=-13,z=149.5,r=1] run function game/2_hill/refresh

#前往浮空山
execute if entity @a[x=-286.5,y=-13,z=151.5,r=1] run title @a title §o§0浮空山
execute if entity @a[x=-286.5,y=-13,z=151.5,r=1] run spawnpoint @a -286.5 55.5 135.5
execute if entity @a[x=-286.5,y=-13,z=151.5,r=1] run setworldspawn -286.5 55.5 135.5
execute if entity @a[x=-286.5,y=-13,z=151.5,r=1] run scoreboard players set position data 1
execute if entity @a[x=-286.5,y=-13,z=151.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-286.5,y=-13,z=151.5,r=1] run tp @a -286.5 55.5 135.5 facing -286.5 55.5 136.5

#去底部拿方块
execute if block -287 -12 145 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -287 -60 124 facing -287 -60 125
execute if block -287 -12 145 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -287 -12 145 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#去顶部打BOSS
execute if block -287 -59 130 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -287 -13 127 facing -287 -13 126
execute if block -287 -59 130 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -287 -59 130 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#复原水流
execute if block -280 -32 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -275 -33 123 -269 -32 131 -283 -33 123
execute if block -280 -32 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -280 -32 134 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#收回方块
execute if score 2_hill_boss data matches 0 if score firstBlock itemState matches 1 if entity @a[x=-292,y=-13,z=139,dx=10,dy=4,dz=12] run tellraw @a {"rawtext":[{"text":"§e方块被收回底层了！"}]}
execute if score 2_hill_boss data matches 0 if score firstBlock itemState matches 1 if entity @a[x=-292,y=-13,z=139,dx=10,dy=4,dz=12] run summon aw:bonus_item -287 -60 127 facing -287 -60 126 bonus_item_type:gray_glazed_terracotta
execute if score 2_hill_boss data matches 0 if score firstBlock itemState matches 1 if entity @a[x=-292,y=-13,z=139,dx=10,dy=4,dz=12] run fill -288 -13 123 -286 -13 123 air
execute if score 2_hill_boss data matches 0 if score firstBlock itemState matches 1 if entity @a[x=-292,y=-13,z=139,dx=10,dy=4,dz=12] run scoreboard players set firstBlock itemState 0

#手动生成僵尸
execute if block -294 -49 124 stone_button["button_pressed_bit"=true,"facing_direction"=1] run kill @e[type=zombie]
execute if block -294 -49 124 stone_button["button_pressed_bit"=true,"facing_direction"=1] run summon zombie -296 -49 126
execute if block -294 -49 124 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -288 -49 126 web
execute if block -294 -49 124 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -287 -49 126 web
execute if block -294 -49 124 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -287 -49 127 web
execute if block -294 -49 124 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -294 -49 124 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#进入BOSS战
execute if block -287 -7 117 stone_button["button_pressed_bit"=true,"facing_direction"=3] run kill @e[type=zombie]
#解锁从底部快速上来的路
execute if block -287 -7 117 stone_button["button_pressed_bit"=true,"facing_direction"=3] if block -287 -60 129 air run clone -287 -63 129 -287 -62 130 -287 -60 129
execute if block -287 -7 117 stone_button["button_pressed_bit"=true,"facing_direction"=3] if score 2_hill_boss data matches 0 run title @a title §0连环机关
execute if block -287 -7 117 stone_button["button_pressed_bit"=true,"facing_direction"=3] if score 2_hill_boss data matches 0 run scoreboard players set music data 32
execute if block -287 -7 117 stone_button["button_pressed_bit"=true,"facing_direction"=3] if score 2_hill_boss data matches 0 run function lib/utils/music/replay
execute if block -287 -7 117 stone_button["button_pressed_bit"=true,"facing_direction"=3] run tp @a -287 -13 112 facing -287 -13 111
execute if block -287 -7 117 stone_button["button_pressed_bit"=true,"facing_direction"=3] run clone -295 -7 97 -279 -4 112 -295 -14 97
execute if block -287 -7 117 stone_button["button_pressed_bit"=true,"facing_direction"=3] run setblock -287 -7 117 stone_button["button_pressed_bit"=false,"facing_direction"=3]

#BOSS战场地
scoreboard players set amount data 0
execute as @e[type=zombie,x=-295,y=-13,z=96,dx=16,dy=4,dz=16] run scoreboard players add amount data 1
execute if entity @a[x=-295,y=-13,z=96,dx=16,dy=4,dz=16] if score 2_hill_boss data matches 0 if score amount data matches ..3 run summon zombie -295 -13 104 0 0 aw:equip

#从BOSS战离开
execute if entity @a[x=-286.5,y=-13,z=90,r=1] run scoreboard players set timeline active 8
execute if entity @a[x=-286.5,y=-13,z=90,r=1] run function lib/modify_data/states/timeline/enable_time_lapse
execute if entity @a[x=-286.5,y=-13,z=90,r=1] run tp @a -238.5 -9 177.5