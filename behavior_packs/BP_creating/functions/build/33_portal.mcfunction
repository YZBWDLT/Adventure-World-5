execute if score timeline time matches 5 run clear @a obsidian
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -235 31 139 facing -236 31 139
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:portal -244 31 136
execute if score timeline time matches 100 run fill -241 30 138 -235 30 140 smooth_stone
execute if score timeline time matches 100 run scoreboard players set fortress_prepare data 3
execute if score timeline time matches 140 run function lib/utils/stop_dialogue 
execute if score timeline time matches 140 run function lib/modify_data/states/timeline/disable