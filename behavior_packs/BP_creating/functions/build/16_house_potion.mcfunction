execute if score timeline time matches 5 positioned -174 32 152 run clear @p aw:build3 0 25
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -175 31 161 facing -175 31 160
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:house_potion -178 29 145
execute if score timeline time matches 100 run fill -175 30 158 -175 30 164 smooth_stone
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]啊，我终于有自己的房子了！谢谢你们，真是辛苦了。我在楼上准备了新的药水，你有需要可以随时取用。"}]}
execute if score timeline time matches 140 run function lib/utils/stop_dialogue
execute if score timeline time matches 140 run function lib/modify_data/states/timeline/disable