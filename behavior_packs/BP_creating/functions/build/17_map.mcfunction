execute if score timeline time matches 5 positioned -220 32 178 run clear @p aw:build1 0 10
execute if score timeline time matches 5 positioned -220 32 178 run clear @p aw:build2 0 5
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -232 31 114 facing -231 31 114
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:map -230 31 103
execute if score timeline time matches 100 run fill -231 30 114 -227 30 114 smooth_stone
execute if score timeline time matches 140 run function lib/utils/stop_dialogue 
execute if score timeline time matches 140 run function lib/modify_data/states/timeline/disable