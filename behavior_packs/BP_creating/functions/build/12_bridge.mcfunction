execute if score timeline time matches 5 positioned -200 32 23 run clear @p aw:build1 0 5
execute if score timeline time matches 5 positioned -200 32 23 run clear @p aw:build2 0 5
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工，这样你就能过河了。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -199.00 31.00 28.50 facing -199.00 31.00 27.50
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:bridge -201 31 9
execute if score timeline time matches 140 run function lib/modify_states/timeline/disable 