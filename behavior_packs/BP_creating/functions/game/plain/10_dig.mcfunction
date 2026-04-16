#开始挖掘
titleraw @a actionbar {"rawtext":[{"score":{"name":"timeline","objective":"time"}}]}

#准备工作
execute if score timeline time matches 5 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 10 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 82 ~ air
execute if score timeline time matches 15 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 20 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 82 ~ air
execute if score timeline time matches 25 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 30 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 82 ~ air
execute if score timeline time matches 35 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 40 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 82 ~ air
execute if score timeline time matches 45 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 50 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 82 ~ air
execute if score timeline time matches 55 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 60 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 78 ~ air
execute if score timeline time matches 65 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 70 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 78 ~ air
execute if score timeline time matches 75 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 80 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 78 ~ air
execute if score timeline time matches 85 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 90 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 78 ~ air
execute if score timeline time matches 95 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 100 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 74 ~ air
execute if score timeline time matches 105 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 110 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 74 ~ air
execute if score timeline time matches 115 run spreadplayers -55.00 134.00 0 7 @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13]
execute if score timeline time matches 120 at @e[type=armor_stand,x=-62,y=87,z=127,dx=13,dy=1,dz=13] run setblock ~ 74 ~ air

#完成挖掘
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b恭喜完成挖掘，你获得了一块石料！本次成绩为："},{"score":{"name":"timeline","objective":"time"}}]}
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -141 32 65 run give @p aw:build2 1
execute if score 7_fortress_boss data matches 2.. if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b额外奖励！你获得了一块石料！"}]}
execute if score 7_fortress_boss data matches 2.. if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -141 32 65 run give @p aw:build2 1
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score timeline time <= dig data run tellraw @a {"rawtext":[{"text":"§b恭喜！你刷新了纪录！"}]}
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score timeline time <= dig data run scoreboard players operation dig data = timeline time
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/disable
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -146 31 65
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -146 31 65
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run music play finish_game 1 0 play_once
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 41
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/music/queue
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -146 31 65 facing -145 31 65
execute if block -49 72 134 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -49 72 134 stone_button["button_pressed_bit"=false,"facing_direction"=1]