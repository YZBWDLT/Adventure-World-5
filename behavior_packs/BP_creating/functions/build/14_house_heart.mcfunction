execute if score timeline time matches 5 positioned -192 32 154 run clear @p aw:build1 0 25
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -192 31 161 facing -192 31 160
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:house_heart -195 29 144
execute if score timeline time matches 100 run fill -192 30 160 -192 30 164 smooth_stone
execute if score timeline time matches 140 run function lib/utils/stop_dialogue 
execute if score timeline time matches 140 run function lib/modify_data/states/timeline/disable