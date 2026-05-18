execute if score timeline time matches 5 positioned -155 32 155 run clear @p aw:build1 0 15
execute if score timeline time matches 5 positioned -155 32 155 run clear @p aw:build3 0 10
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -155 31 164 facing -155 31 163
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:house_hint -160 30 142
execute if score timeline time matches 100 run fill -155 30 159 -155 30 164 smooth_stone
execute if score timeline time matches 140 run function lib/utils/stop_dialogue 
execute if score timeline time matches 140 run function lib/modify_data/states/timeline/disable