#显示时间
titleraw @a actionbar {"rawtext":[{"score":{"name":"timeline","objective":"time"}}]}

#中途退出
execute if block 34 68 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/disable
execute if block 34 68 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -279 31 67
execute if block 34 68 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -279 31 67
execute if block 34 68 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 101
execute if block 34 68 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/music/replay
execute if block 34 68 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -279 31 67 facing -280 31 67
execute if block 34 68 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock 34 68 114 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#胜利判定
execute if score timeline time matches 200.. if block 42 66 114 grass if blocks 33 60 103 54 90 124 58 60 103 all run tp @a[x=33,y=60,z=103,dx=21,dy=30,dz=21] 37 67 99 facing 37 67 98

#完成灭火
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b恭喜完成灭火，你获得了一块石料！本次成绩为："},{"score":{"name":"timeline","objective":"time"}}]}
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned 37 68 93 run give @p aw:build2 1
execute if score 7_fortress_boss data matches 2.. if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b额外奖励！你获得了一块彩岩！"}]}
execute if score 7_fortress_boss data matches 2.. if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned 37 68 93 run give @p aw:build3 1
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score timeline time <= firefight data run tellraw @a {"rawtext":[{"text":"§b恭喜！你刷新了纪录！"}]}
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score timeline time <= firefight data run scoreboard players operation firefight data = timeline time
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/disable
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -279 31 67
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -279 31 67
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run music play finish_game 1 0 play_once
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 101
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/music/queue
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -279 31 67 facing -280 31 67
execute if block 37 68 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock 37 68 93 stone_button["button_pressed_bit"=false,"facing_direction"=1]