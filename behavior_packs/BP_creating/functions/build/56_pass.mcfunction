execute if score timeline time matches 5 positioned -99 17 10 run clear @p aw:build2 0 5
execute if score timeline time matches 5 positioned -99 17 10 run clear @p aw:build3 0 20
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -99 16 5 facing -99 16 6
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:pass -101 16 8
execute if score timeline time matches 140 run function lib/modify_states/timeline/disable 