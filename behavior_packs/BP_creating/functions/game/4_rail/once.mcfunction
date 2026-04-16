# ===== 只执行一次的命令（其中部分可重置） =====

#拿到坐标笔记
execute if score 4_rail_book data matches 0 if block -139 -46 -56 chest if blocks -139 -46 -56 -139 -46 -56 -139 -48 -56 all run tellraw @a {"rawtext":[{"text":"§e你拿到了坐标笔记，可以查询所有宝箱的位置了！"}]}
execute if score 4_rail_book data matches 0 if block -139 -46 -56 chest if blocks -139 -46 -56 -139 -46 -56 -139 -48 -56 all run music play get_book 1 0 play_once
execute if score 4_rail_book data matches 0 if block -139 -46 -56 chest if blocks -139 -46 -56 -139 -46 -56 -139 -48 -56 all run function lib/utils/music/queue
execute if score 4_rail_book data matches 0 if block -139 -46 -56 chest if blocks -139 -46 -56 -139 -46 -56 -139 -48 -56 all run scoreboard players set 4_rail_book data 1 

#拿到BOSS钥匙
execute if score 4_rail_key data matches 0 if block -122 -42 -11 chest if blocks -122 -42 -11 -122 -42 -11 -234 -9 179 all run tellraw @a {"rawtext":[{"text":"§e你拿到了BOSS钥匙，准备好最后的战斗吧！"}]}
execute if score 4_rail_key data matches 0 if block -122 -42 -11 chest if blocks -122 -42 -11 -122 -42 -11 -234 -9 179 all run music play get_item 1 0 play_once
execute if score 4_rail_key data matches 0 if block -122 -42 -11 chest if blocks -122 -42 -11 -122 -42 -11 -234 -9 179 all run function lib/utils/music/queue
execute if score 4_rail_key data matches 0 if block -122 -42 -11 chest if blocks -122 -42 -11 -122 -42 -11 -234 -9 179 all run scoreboard players set 4_rail_key data 1 

#进入BOSS战
execute if score 4_rail_boss data matches 0 if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run title @a title §l§e护送矿车
execute if score 4_rail_boss data matches 0 if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run scoreboard players set music data 62
execute if score 4_rail_boss data matches 0 if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run function lib/utils/music/replay
execute if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run tp @a -191 -33 -13 facing -190 -33 -13
execute if score 4_rail_boss data matches 0 if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run clone -193 -23 -57 -145 -13 -9 -193 -34 -57
execute if score 4_rail_boss data matches 0 if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run kill @e[type=chest_minecart]
execute if score 4_rail_boss data matches 0 if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run summon chest_minecart -190 -33 -11
execute if score 4_rail_boss data matches 0 if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run scoreboard players set 4_rail_boss data 1
execute if block -192 -37 -12 stone_button["button_pressed_bit"=true,"facing_direction"=5] run setblock -192 -37 -12 stone_button["button_pressed_bit"=false,"facing_direction"=5]

#BOSS战失败
execute if score 4_rail_boss data matches 1 if block -173 -20 -36 smooth_stone unless entity @e[type=chest_minecart] run tellraw @a {"rawtext":[{"text":"§e矿车坏掉了！再来一次吧！"}]}
execute if score 4_rail_boss data matches 1 if block -173 -20 -36 smooth_stone unless entity @e[type=chest_minecart] run tp @a -190 -38 -12 facing -191 -38 -12
execute if score 4_rail_boss data matches 1 if block -173 -20 -36 smooth_stone unless entity @e[type=chest_minecart] run clone -193 -23 -57 -145 -13 -9 -193 -34 -57
execute if score 4_rail_boss data matches 1 if block -173 -20 -36 smooth_stone unless entity @e[type=chest_minecart] run scoreboard players set music data 61
execute if score 4_rail_boss data matches 1 if block -173 -20 -36 smooth_stone unless entity @e[type=chest_minecart] run function lib/utils/music/replay
execute if score 4_rail_boss data matches 1 if block -173 -20 -36 smooth_stone unless entity @e[type=chest_minecart] run scoreboard players set 4_rail_boss data 0

#BOSS战成功
execute if score 4_rail_boss data matches 1 if entity @e[type=chest_minecart,x=-157.5,y=-33,z=-14.5,r=1] run tellraw @a {"rawtext":[{"text":"§e成功护送矿车！"}]}
execute if score 4_rail_boss data matches 1 if entity @e[type=chest_minecart,x=-157.5,y=-33,z=-14.5,r=1] run music play boss_win_start 1 0 play_once
execute if score 4_rail_boss data matches 1 if entity @e[type=chest_minecart,x=-157.5,y=-33,z=-14.5,r=1] run scoreboard players set music data 63
execute if score 4_rail_boss data matches 1 if entity @e[type=chest_minecart,x=-157.5,y=-33,z=-14.5,r=1] run function lib/utils/music/queue
execute if score 4_rail_boss data matches 1 if entity @e[type=chest_minecart,x=-157.5,y=-33,z=-14.5,r=1] run scoreboard players set 4_rail_boss data 2
execute if entity @e[type=chest_minecart,x=-157.5,y=-33,z=-14.5,r=1] run fill -154 -33 -9 -152 -31 -9 air

#从BOSS战离开（第一次离开时）
execute if score 4_rail_boss data matches 2 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run spawnpoint @a -198.5 33 103.5
execute if score 4_rail_boss data matches 2 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run setworldspawn -198.5 33 103.5
execute if score 4_rail_boss data matches 2 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run scoreboard players set position data 1
execute if score 4_rail_boss data matches 2 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run scoreboard players set progress data 4
execute if score 4_rail_boss data matches 2 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run scoreboard players set timeline active 23
execute if score 4_rail_boss data matches 2 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score 4_rail_boss data matches 2 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run function lib/utils/start_dialogue
execute if score 4_rail_boss data matches 2 if entity @a[x=-152.5,y=-33.00,z=-3.5,r=1] run scoreboard players set 4_rail_boss data 3