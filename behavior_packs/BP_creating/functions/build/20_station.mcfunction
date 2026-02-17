execute if score timeline time matches 5 positioned -243 32 114 run clear @p aw:build2 0 25
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -234 31 115 facing -235 31 115
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:station -250 30 109
execute if score timeline time matches 100 run clone -232 -15 179 -232 -14 179 -235 -15 186
execute if score timeline time matches 140 run function lib/modify_states/timeline/disable 