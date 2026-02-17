#和倪高志对话-准备去林地府邸

execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[倪高志]我来告诉你目前的研究进展。"}]}
execute if score timeline time matches 20 run event entity @e[type=aw:npc,x=-231,y=31,z=136,r=1] aw:speak
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§f[倪高志]去林地府邸必须经过一片§d迷失森林§f，在那里如果不按顺序走就会原地打转。"}]}
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[倪高志]我曾经蒙对了一次，穿过迷失森林后修建了地铁，但还没完全通车。"}]}
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[倪高志]你穿过之后，一定要先去地铁站啊，通车之后再去森林就容易了。"}]}
execute if score timeline time matches 260 run event entity @e[type=aw:npc,x=-231,y=31,z=136,r=1] aw:speak
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[倪高志]我发现了一个能破解迷失森林的法宝，现在就放在我的§d实验室§f里。"}]}
execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"§f[倪高志]地铁出故障后我就把实验室关闭了，现在钥匙交给你了！"}]}
execute if score timeline time matches 420 run event entity @e[type=aw:npc,x=-231,y=31,z=136,r=1] aw:point
execute if score timeline time matches 420 run clone -229 29 135 -229 29 135 -229 31 135
execute if score timeline time matches 500 run tellraw @a {"rawtext":[{"text":"§a[我]实验室在哪？"}]}
execute if score timeline time matches 580 run tellraw @a {"rawtext":[{"text":"§f[倪高志]就在买卖村里，过桥那一片地方，你注意钥匙孔就找到了。"}]}
execute if score timeline time matches 660 run tellraw @a {"rawtext":[{"text":"§f[倪高志]还有，拿到法宝之后你还要在实验室里做一系列§d测试§f才能出去，辛苦你啦。"}]}
execute if score timeline time matches 660 run event entity @e[type=aw:npc,x=-231,y=31,z=136,r=1] aw:bad_smile

execute if score timeline time matches 740 run function lib/modify_states/timeline/disable