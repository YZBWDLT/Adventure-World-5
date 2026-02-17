execute if score timeline time matches 5 positioned -220 32 178 run clear @p aw:build1 0 10
execute if score timeline time matches 5 positioned -220 32 178 run clear @p aw:build2 0 15
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -219 31 169 facing -219 31 170
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:dock -223 30 171
execute if score timeline time matches 100 run fill -221 30 168 -220 30 174 smooth_stone
execute if score timeline time matches 140 run function lib/modify_states/timeline/disable 