execute if score timeline time matches 5 positioned -279 32 90 run clear @p aw:build1 0 10
execute if score timeline time matches 5 positioned -279 32 90 run clear @p aw:build3 0 15
execute if score timeline time matches 5 run kill @e[type=item]
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我现在就开工。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -278.0 31 81.5 facing -278.0 31 82.5
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run structure load build:color -293 30 83
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§a[我]让我猜猜经营染坊的是……"}]}
execute if score timeline time matches 220 run camera @a set minecraft:free ease 2 linear pos -279 32.7 90 facing -279 32.7 91
execute if score timeline time matches 235 run setblock -278 31 87 wooden_door["direction"=2]
execute if score timeline time matches 235 run setblock -279 31 87 wooden_door["direction"=3,"open_bit"=true]
execute if score timeline time matches 235 run playsound open.wooden_door @a
execute if score timeline time matches 280 run camera @a set minecraft:free ease 0.5 linear pos -279 32.7 90 facing -280 32.7 90
execute if score timeline time matches 290 run tp @a -278 31 90 facing -279 31 90
execute if score timeline time matches 340 run event entity @e[type=aw:npc,x=-283,y=31,z=90,r=1] aw:wave_hand
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§f[王予凡]你好！在这儿可以把你的衣服染成喜欢的颜色！"}]}
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§a[我]……"}]}
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§f[王予凡]不过，染坊里还缺一样东西。"}]}
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§a[我]什么？"}]}
execute if score timeline time matches 720 run tellraw @a {"rawtext":[{"text":"§f[王予凡]染料！"}]}
execute if score timeline time matches 720 run event entity @e[type=aw:npc,x=-283,y=31,z=90,r=1] aw:confuse
execute if score timeline time matches 750 run camera @a set minecraft:free ease 1.5 out_bounce pos -279.5 31.3 90.5 facing -279.5 31.0 90.5
execute if score timeline time matches 750 run playsound random.explode @a
execute if score timeline time matches 800 run tellraw @a {"rawtext":[{"text":"§f[王予凡]别这样，每种染料只要给我一个你就可以无限用了！"}]}
execute if score timeline time matches 840 run camera @a set minecraft:free ease 2 in_out_sine pos -279 32.7 90 facing -280 32.7 90
execute if score timeline time matches 900 run tellraw @a {"rawtext":[{"text":"§a[我]那我从哪里去找染料给你呢？"}]}
execute if score timeline time matches 980 run tellraw @a {"rawtext":[{"text":"§f[王予凡]这个嘛……就要你去小镇里仔细找找了。"}]}
execute if score timeline time matches 980 run event entity @e[type=aw:npc,x=-283,y=31,z=90,r=1] aw:bad_smile
execute if score timeline time matches 1080 run camera @a clear
execute if score timeline time matches 1080 run function lib/utils/stop_dialogue 
execute if score timeline time matches 1080 run function lib/modify_data/states/timeline/disable