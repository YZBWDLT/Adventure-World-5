execute if score timeline time matches 5 positioned -243 32 114 run clear @p aw:build3 0 10
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -313 31 81 facing -313 31 82
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:dock_farm -320 30 83
execute if score timeline time matches 140 run function lib/utils/stop_dialogue
execute if score timeline time matches 140 run function lib/modify_data/states/timeline/disable