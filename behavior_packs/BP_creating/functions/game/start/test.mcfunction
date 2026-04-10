# ===== 所有检测执行的指令 =====

#出门-出事故沉船
execute if score position data matches 0 if entity @a[x=-207,y=31,z=453,dx=2,dy=2,dz=2] run scoreboard players set timeline active 1
execute if score position data matches 0 if entity @a[x=-207,y=31,z=453,dx=2,dy=2,dz=2] run function lib/modify_states/timeline/enable_time_lapse
execute if score position data matches 0 if entity @a[x=-207,y=31,z=453,dx=2,dy=2,dz=2] run scoreboard players set position data 1

#倪高志的馈赠玻璃瓶
execute if score bottle2 data matches 0 if block -233 -15 183 chest if blocks -233 -15 183 -233 -15 183 -232 -9 179 all run tellraw @a {"rawtext":[{"text":"§e你拿到了玻璃瓶，这是你让地铁重新开通的奖励！"}]}
execute if score bottle2 data matches 0 if block -233 -15 183 chest if blocks -233 -15 183 -233 -15 183 -232 -9 179 all run music play get_item 1 0 play_once
execute if score bottle2 data matches 0 if block -233 -15 183 chest if blocks -233 -15 183 -233 -15 183 -232 -9 179 all run function music/play
execute if score bottle2 data matches 0 if block -233 -15 183 chest if blocks -233 -15 183 -233 -15 183 -232 -9 179 all run scoreboard players set bottle2 data 1

#地铁-买卖村
execute if block -232 -14 179 stone_button["button_pressed_bit"=true,"facing_direction"=1] run title @a title §o§6买卖村
execute if block -232 -14 179 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -200 33 -40
execute if block -232 -14 179 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -200 33 -40
execute if block -232 -14 179 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set position data 4
execute if block -232 -14 179 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set refreshArea data 0
execute if block -232 -14 179 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -200 33 -40 facing -200 33 -41
execute if block -232 -14 179 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -232 -14 179 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#地铁-筑梦站
execute if block -235 -14 186 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -244 31 115 facing -243 31 115 run function game/village/enter
execute if block -235 -14 186 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -235 -14 186 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#地铁-筑梦南站
execute if block -231 -14 190 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -167 31 180 facing -167 31 179 run function game/village/enter
execute if block -231 -14 190 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -231 -14 190 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#地铁-明月森林
execute if block -238 -14 177 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -293 31 -57 run function game/forest/enter
execute if block -238 -14 177 stone_button["button_pressed_bit"=true,"facing_direction"=1] run time set midnight
execute if block -238 -14 177 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set refreshArea data 0
execute if block -238 -14 177 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -293 31 -57 facing -293 31 -56
execute if block -238 -14 177 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -238 -14 177 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#地铁-繁星农场
execute if block -238 -14 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run title @a title §c繁§9星§h农§e场
execute if block -238 -14 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -298 31 87
execute if block -238 -14 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -298 31 87
execute if block -238 -14 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set position data 10
execute if block -238 -14 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set refreshArea data 0
execute if block -238 -14 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -298 31 87 facing -298 31 86
execute if block -238 -14 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -238 -14 184 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#地铁-旭日沙漠
execute if block -229 -13 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run title @a title §l§o§6旭日沙漠
execute if block -229 -13 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -123 33 33
execute if block -229 -13 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -123 33 33
execute if block -229 -13 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set position data 4
execute if block -229 -13 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set refreshArea data 0
execute if block -229 -13 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -123 33 33 facing -123 33 34
execute if block -229 -13 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -229 -13 181 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#进入最终战前置房间
execute if entity @a[x=-214.5,y=-15,z=184.0,r=1] if score 9_the_end_story data matches 0 run scoreboard players set music data 151
execute if entity @a[x=-214.5,y=-15,z=184.0,r=1] if score 9_the_end_story data matches 0 run function music/replay
execute if entity @a[x=-214.5,y=-15,z=184.0,r=1] if score 9_the_end_story data matches 0 run tp @a -202 -24 187 facing -202 -24 186
execute if entity @a[x=-214.5,y=-15,z=184.0,r=1] if score 9_the_end_story data matches !0 in the_end run function game/the_end/enter

#房间1走错路
execute if entity @a[x=-201.5,y=-24,z=179.5,r=1] run tp @a -202 -24 187 facing -202 -24 186
execute if entity @a[x=-195.5,y=-24,z=183.5,r=1] run tp @a -202 -24 187 facing -202 -24 186

#房间2走错路
execute if entity @a[x=-201.5,y=-36,z=179.5,r=1] run tp @a -202 -36 187 facing -202 -36 186
execute if entity @a[x=-195.5,y=-36,z=183.5,r=1] run tp @a -202 -36 187 facing -202 -36 186

#房间3走错路
execute if entity @a[x=-201.5,y=-48,z=179.5,r=1] run tp @a -202 -48 187 facing -202 -48 186
execute if entity @a[x=-207.5,y=-48,z=183.5,r=1] run tp @a -202 -48 187 facing -202 -48 186

#房间4走错路
execute if entity @a[x=-201.5,y=-60,z=179.5,r=1] run tp @a -202 -60 187 facing -202 -60 186
execute if entity @a[x=-195.5,y=-60,z=183.5,r=1] run tp @a -202 -60 187 facing -202 -60 186

#房间1剧情
execute if entity @a[x=-207.5,y=-24,z=183.5,r=1] run scoreboard players set timeline active 58
execute if entity @a[x=-207.5,y=-24,z=183.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if entity @a[x=-207.5,y=-24,z=183.5,r=1] run tp @a -238.5 -9 177.5

#房间2剧情
execute if entity @a[x=-207.5,y=-36,z=183.5,r=1] run scoreboard players set timeline active 59
execute if entity @a[x=-207.5,y=-36,z=183.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if entity @a[x=-207.5,y=-36,z=183.5,r=1] run tp @a -238.5 -9 177.5

#房间3剧情
execute if entity @a[x=-195.5,y=-48,z=183.5,r=1] run scoreboard players set timeline active 60
execute if entity @a[x=-195.5,y=-48,z=183.5,r=1] run function lib/modify_states/timeline/enable_time_lapse 
execute if entity @a[x=-195.5,y=-48,z=183.5,r=1] run tp @a -238.5 -9 177.5

#房间4剧情
execute if entity @a[x=-207.5,y=-60,z=183.5,r=1] run scoreboard players set timeline active 61
execute if entity @a[x=-207.5,y=-60,z=183.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if entity @a[x=-207.5,y=-60,z=183.5,r=1] run tp @a -238.5 -9 177.5