#给箭
execute if score quiver data matches 0 as @a[hasitem={item=arrow,quantity=..31}] run give @s arrow
execute if score quiver data matches 1 as @a[hasitem={item=arrow,quantity=..63}] run give @s arrow

#统计场上鸡并补充(if block是为了避免场地没加载出来就生成鸡而掉虚空)
execute if score timeline time matches 1 run kill @e[type=chicken]
execute if score timeline time matches 1 run scoreboard players set chicken data 40
scoreboard players set amount data 0
execute as @e[type=chicken,x=-15,y=66,z=143,dx=48,dy=25,dz=48] run scoreboard players add amount data 1
execute if score timeline time matches 10.. if score chicken data matches 1.. if score amount data matches ..4 if block -6 66 182 spruce_planks if block 24 66 182 spruce_planks if block 24 66 152 spruce_planks if block -6 66 152 spruce_planks if entity @a[x=-15,y=66,z=143,dx=48,dy=25,dz=48] run scoreboard players remove chicken data 1
execute if score timeline time matches 10.. if score chicken data matches 1.. if score amount data matches ..4 if block -6 66 182 spruce_planks if block 24 66 182 spruce_planks if block 24 66 152 spruce_planks if block -6 66 152 spruce_planks if entity @a[x=-15,y=66,z=143,dx=48,dy=25,dz=48] run summon chicken 9 89 167

#传送
spreadplayers 9 167 2 21 @e[type=chicken,x=-13,y=88,z=145,dx=44,dy=1,dz=44]
execute at @e[type=chicken,x=-13,y=87,z=145,dx=44,dy=1,dz=44] run tp @e[type=chicken,x=-13,y=87,z=145,dx=44,dy=1,dz=44] ~ 85 ~ 
tp @e[type=chicken,x=-13,y=67,z=145,dx=44,dy=0,dz=44] 9 89 167
tp @e[type=chicken,x=3,y=85,z=161,dx=12,dy=1,dz=12] 9 89 167

#计算总数并显示
scoreboard players set chicken_all data 0
scoreboard players operation chicken_all data += chicken data
scoreboard players operation chicken_all data += amount data
titleraw @a actionbar {"rawtext":[{"text":"§l§e剩余鸡：§r"},{"score":{"name":"chicken_all","objective":"data"}},{"text":"  §l§b用时：§r"},{"score":{"name":"timeline","objective":"time"}}]}

#退出小游戏
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/disable
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set chicken data 0
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set chicken_all data 0
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run kill @e[type=chicken]
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -218 33 -52
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -218 33 -52
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 41
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function music/replay
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -218 33 -52 facing -218 33 -53
execute if block 9 75 167 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock 9 75 167 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#完成小游戏
execute if score chicken_all data matches 0 run kill @e[type=arrow]
execute if score chicken_all data matches 0 run tp @a[x=8,y=75,z=166,dx=2,dy=2,dz=2] 34 82 147 facing 35 82 147
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b恭喜完成射鸡，你获得了一块木材！本次成绩为："},{"score":{"name":"timeline","objective":"time"}}]}
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned 40 83 147 run give @p aw:build1 1
execute if score 7_fortress_boss data matches 2.. if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b额外奖励！你获得了一块彩岩！"}]}
execute if score 7_fortress_boss data matches 2.. if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned 40 83 147 run give @p aw:build3 1
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score timeline time <= shoot data run tellraw @a {"rawtext":[{"text":"§b恭喜！你刷新了纪录！"}]}
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score timeline time <= shoot data run scoreboard players operation shoot data = timeline time
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/disable
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -218 33 -52
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -218 33 -52
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run music play finish_game 1 0 play_once
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 41
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function music/play
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -218 33 -52 facing -218 33 -53
execute if score quiver data matches 1 if block 40 83 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock 40 83 147 stone_button["button_pressed_bit"=false,"facing_direction"=1]
