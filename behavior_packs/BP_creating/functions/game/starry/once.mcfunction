# ===== 只执行一次的命令（其中部分可重置） =====

#搭建染坊
execute if block -279 32 90 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -279 32 90 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build3,quantity=15..}]] run scoreboard players set timeline active 28
execute if block -279 32 90 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -279 32 90 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build3,quantity=15..}]] run function lib/modify_states/timeline/enable_time_lapse
execute if block -279 32 90 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -279 32 90 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build3,quantity=15..}]] run function lib/utils/start_dialogue
execute if block -279 32 90 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -279 32 90 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build3,quantity=15..}]] run setblock -279 32 90 air
execute if block -279 32 90 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -279 32 90 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -279 32 90 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建农场站
execute if block -300 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -300 32 92 as @p if entity @s[hasitem={item=aw:build2,quantity=15..}] run scoreboard players set timeline active 29
execute if block -300 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -300 32 92 as @p if entity @s[hasitem={item=aw:build2,quantity=15..}] run function lib/modify_states/timeline/enable_time_lapse
execute if block -300 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -300 32 92 as @p if entity @s[hasitem={item=aw:build2,quantity=15..}] run function lib/utils/start_dialogue
execute if block -300 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -300 32 92 as @p if entity @s[hasitem={item=aw:build2,quantity=15..}] run setblock -300 32 92 air
execute if block -300 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -300 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -300 32 92 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建农港
execute if block -315 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -315 32 92 as @p if entity @s[hasitem={item=aw:build3,quantity=10..}] run scoreboard players set timeline active 30
execute if block -315 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -315 32 92 as @p if entity @s[hasitem={item=aw:build3,quantity=10..}] run function lib/modify_states/timeline/enable_time_lapse
execute if block -315 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -315 32 92 as @p if entity @s[hasitem={item=aw:build3,quantity=10..}] run function lib/utils/start_dialogue
execute if block -315 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -315 32 92 as @p if entity @s[hasitem={item=aw:build3,quantity=10..}] run setblock -315 32 92 air
execute if block -315 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -315 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -315 32 92 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#集齐染料动画
execute if score timeline active matches 0 if block -276 31 84 air if blocks -290 29 96 -277 29 96 -290 31 96 all if blocks -290 29 93 -287 29 93 -290 31 93 all run function lib/modify_states/timeline/enable_time_lapse
execute if score timeline active matches 0 if block -276 31 84 air if blocks -290 29 96 -277 29 96 -290 31 96 all if blocks -290 29 93 -287 29 93 -290 31 93 all run function lib/utils/start_dialogue
execute if score timeline active matches 0 if block -276 31 84 air if blocks -290 29 96 -277 29 96 -290 31 96 all if blocks -290 29 93 -287 29 93 -290 31 93 all run scoreboard players set timeline active 31

#拿到蓝冰
execute if score blue_ice data matches 0 if block 11 74 123 chest if blocks 11 74 123 11 74 123 11 82 125 all run tellraw @a {"rawtext":[{"text":"§e你拿到了蓝冰！晶莹剔透很漂亮！"}]}
execute if score blue_ice data matches 0 if block 11 74 123 chest if blocks 11 74 123 11 74 123 11 82 125 all run scoreboard players set blue_ice data 1

#提交蓝冰之后不再刷新
execute if score blue_ice data matches 2 if block 11 74 123 chest run setblock 11 74 123 air

#吕岩的馈赠玻璃瓶
execute if score bottle3 data matches 0 if block -276 31 84 chest if blocks -276 31 84 -276 31 84 -234 -9 177 all run tellraw @a {"rawtext":[{"text":"§e你拿到了玻璃瓶，真是千辛万苦啊！"}]}
execute if score bottle3 data matches 0 if block -276 31 84 chest if blocks -276 31 84 -276 31 84 -234 -9 177 all run music play get_item 1 0 play_once
execute if score bottle3 data matches 0 if block -276 31 84 chest if blocks -276 31 84 -276 31 84 -234 -9 177 all run function music/play
execute if score bottle3 data matches 0 if block -276 31 84 chest if blocks -276 31 84 -276 31 84 -234 -9 177 all run scoreboard players set bottle3 data 1