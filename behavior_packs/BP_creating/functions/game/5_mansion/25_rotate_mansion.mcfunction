#根据当前数据旋转府邸

execute if score timeline time matches 1 run camera @a set minecraft:free pos -310 65 11 rot 90 90
execute if score timeline time matches 60 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 62 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 64 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 66 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 68 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 70 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 70 if score 5_mansion_direction data matches 1 run structure load other:mansion_f2 -319 43 2 0_degrees
execute if score timeline time matches 70 if score 5_mansion_direction data matches 2 run structure load other:mansion_f2 -319 43 2 270_degrees
execute if score timeline time matches 70 if score 5_mansion_direction data matches 3 run structure load other:mansion_f2 -319 43 2 180_degrees
execute if score timeline time matches 70 if score 5_mansion_direction data matches 4 run structure load other:mansion_f2 -319 43 2 90_degrees
execute if score timeline time matches 72 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 74 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 76 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 78 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 80 run particle minecraft:dragon_death_explosion_emitter -310 65 11
execute if score timeline time matches 100 run music play solve_puzzle 1 0 play_once
execute if score timeline time matches 100 run function music/play
execute if score timeline time matches 140 run camera @a clear
execute if score timeline time matches 140 run function lib/modify_states/timeline/disable 