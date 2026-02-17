#展示搭建方法

execute if score timeline time matches 20 run camera @a set minecraft:free pos -231 -50 -29 facing -226 -54 -24
execute if score timeline time matches 20 run fill -228 -55 -26 -224 -50 -22 air
execute if score timeline time matches 60 run clone -227 -59 -25 -225 -59 -23 -227 -55 -25
execute if score timeline time matches 120 run clone -227 -58 -25 -225 -58 -23 -227 -54 -25
#避免结构完全一样直接判定胜利
execute if score timeline time matches 150 run setblock -226 -55 -24 air
execute if score timeline time matches 180 run clone -227 -57 -25 -225 -57 -23 -227 -53 -25
execute if score timeline time matches 240 run camera @a fade time 0.5 1 0.5 color 0 0 0
execute if score timeline time matches 260 run fill -227 -55 -25 -225 -53 -23 air
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§e你获得了足够搭建的圆石！"}]}
execute if score timeline time matches 260 run camera @a clear
execute if score timeline time matches 260 run setblock -226 -54 -35 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if score timeline time matches 260 run function lib/modify_states/timeline/disable 