#开始跑酷
titleraw @a actionbar {"rawtext":[{"score":{"name":"timeline","objective":"time"}}]}

#退出跑酷
execute if block -63 68 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/stop_dialogue
execute if block -63 68 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_data/states/timeline/disable
execute if block -63 68 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -273 68 154
execute if block -63 68 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -273 68 154
execute if block -63 68 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 14
execute if block -63 68 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/music/replay
execute if block -63 68 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -273 68 154 facing -273 68 155
execute if block -63 68 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -63 68 183 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#完成跑酷
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b恭喜完成跑酷，你获得了一块木材！本次成绩为："},{"score":{"name":"timeline","objective":"time"}}]}
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -273 69 158 run give @p aw:build1 1
execute if score 7_fortress_boss data matches 2.. if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b额外奖励！你获得了一块木材！"}]}
execute if score 7_fortress_boss data matches 2.. if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -273 69 158 run give @p aw:build1 1
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score timeline time <= parkour data run tellraw @a {"rawtext":[{"text":"§b恭喜！你刷新了纪录！"}]}
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score timeline time <= parkour data run scoreboard players operation parkour data = timeline time
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/stop_dialogue
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_data/states/timeline/disable
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -273 68 154
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -273 68 154
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run music play finish_game 1 0 play_once
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 14
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/music/queue
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -273 68 154 facing -273 68 155
execute if block -17 75 151 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -17 75 151 stone_button["button_pressed_bit"=false,"facing_direction"=1]