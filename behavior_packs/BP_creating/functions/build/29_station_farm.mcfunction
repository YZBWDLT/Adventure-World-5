execute if score timeline time matches 5 positioned -300 32 92 run clear @p aw:build2 0 15
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -298 31 81 facing -298 31 82
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:station_farm -306 30 83
execute if score timeline time matches 100 run clone -232 -15 179 -232 -14 179 -238 -15 184
execute if score timeline time matches 140 run function lib/modify_states/timeline/disable 