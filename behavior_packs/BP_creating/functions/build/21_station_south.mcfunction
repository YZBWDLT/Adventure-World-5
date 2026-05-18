execute if score timeline time matches 5 positioned -168 32 176 run clear @p aw:build1 0 10
execute if score timeline time matches 5 positioned -168 32 176 run clear @p aw:build2 0 10
execute if score timeline time matches 5 positioned -168 32 176 run clear @p aw:build3 0 10
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -168 31 166 facing -168 31 167
execute if score timeline time matches 80 run camera @a set minecraft:free pos -168 52 143 rot 15 0
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:station_south -191 30 168
execute if score timeline time matches 100 run clone -232 -15 179 -232 -14 179 -231 -15 190
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"§a[我]天呐，这么大？"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"§f[吕岩]没错，而且我还在楼上准备了一些对你有用的§d附魔§f。"}]}
execute if score timeline time matches 300 run camera @a clear
execute if score timeline time matches 300 run function lib/utils/stop_dialogue 
execute if score timeline time matches 300 run function lib/modify_data/states/timeline/disable