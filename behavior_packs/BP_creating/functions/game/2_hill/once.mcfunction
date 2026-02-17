# ===== 只执行一次的命令（其中部分可重置） =====

#拿到坐标笔记
execute if score 2_hill_book data matches 0 if block -287 -23 124 chest if blocks -287 -23 124 -287 -23 124 -287 -23 139 all run tellraw @a {"rawtext":[{"text":"§e你拿到了坐标笔记，可以查询所有宝箱的位置了！"}]}
execute if score 2_hill_book data matches 0 if block -287 -23 124 chest if blocks -287 -23 124 -287 -23 124 -287 -23 139 all run music play get_book 1 0 play_once
execute if score 2_hill_book data matches 0 if block -287 -23 124 chest if blocks -287 -23 124 -287 -23 124 -287 -23 139 all run function music/play
execute if score 2_hill_book data matches 0 if block -287 -23 124 chest if blocks -287 -23 124 -287 -23 124 -287 -23 139 all run scoreboard players set 2_hill_book data 1 

#拿到BOSS钥匙
execute if score 2_hill_key data matches 0 if block -287 -17 97 chest if blocks -287 -17 97 -287 -17 97 -232 -9 179 all run tellraw @a {"rawtext":[{"text":"§e你拿到了BOSS钥匙，准备好最后的战斗吧！"}]}
execute if score 2_hill_key data matches 0 if block -287 -17 97 chest if blocks -287 -17 97 -287 -17 97 -232 -9 179 all run music play get_item 1 0 play_once
execute if score 2_hill_key data matches 0 if block -287 -17 97 chest if blocks -287 -17 97 -287 -17 97 -232 -9 179 all run function music/play
execute if score 2_hill_key data matches 0 if block -287 -17 97 chest if blocks -287 -17 97 -287 -17 97 -232 -9 179 all run scoreboard players set 2_hill_key data 1 

#通过BOSS战
execute if block -287 -12 95 stone_button["button_pressed_bit"=true,"facing_direction"=3] run tellraw @a {"rawtext":[{"text":"§e机关已成功破解！"}]}
execute if block -287 -12 95 stone_button["button_pressed_bit"=true,"facing_direction"=3] run scoreboard players set 2_hill_boss data 1
execute if block -287 -12 95 stone_button["button_pressed_bit"=true,"facing_direction"=3] run kill @e[type=zombie]
execute if block -287 -12 95 stone_button["button_pressed_bit"=true,"facing_direction"=3] run music play boss_win_start 1 0 play_once
execute if block -287 -12 95 stone_button["button_pressed_bit"=true,"facing_direction"=3] run scoreboard players set music data 33
execute if block -287 -12 95 stone_button["button_pressed_bit"=true,"facing_direction"=3] run function music/play
execute if block -287 -12 95 stone_button["button_pressed_bit"=true,"facing_direction"=3] run fill -287 -13 94 -287 -12 96 air

#出现怪物1
execute if score 2_hill_enemy1 data matches 0 if entity @a[x=-297,y=-13,z=117,dx=20,dy=9,dz=20] run summon zombie -292 -13 130
execute if score 2_hill_enemy1 data matches 0 if entity @a[x=-297,y=-13,z=117,dx=20,dy=9,dz=20] run summon zombie -282 -13 130 0 0 aw:equip
execute if score 2_hill_enemy1 data matches 0 if entity @a[x=-297,y=-13,z=117,dx=20,dy=9,dz=20] run summon zombie -292 -13 124 0 0 aw:equip
execute if score 2_hill_enemy1 data matches 0 if entity @a[x=-297,y=-13,z=117,dx=20,dy=9,dz=20] run summon zombie -282 -13 124
execute if score 2_hill_enemy1 data matches 0 if entity @a[x=-297,y=-13,z=117,dx=20,dy=9,dz=20] run scoreboard players set 2_hill_enemy1 data 1