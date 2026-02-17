#提交给田萍蓝冰-可以借神镐

execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[田萍]好漂亮的冰块啊！这是给我的吗？"}]}
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§a[我]是的，收下吧！"}]}
execute if score timeline time matches 140 run clear @a blue_ice
execute if score timeline time matches 140 run kill @e[type=item]
execute if score timeline time matches 140 run scoreboard players set blue_ice data 2
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§a[我]我有一个请求，可以把神镐借给我吗？"}]}
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[田萍]好，其实你直接说也可以啦，不过还是谢谢你的礼物。"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[田萍]神镐不仅可以挖掘§d破碎的黑曜石§f，还可以§d在水下挖掘方块§f。"}]}
execute if score timeline time matches 340 run scoreboard players set 8_pe_item data 2
execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"§f[田萍]但我有个要求，神镐§d不能带入府邸、神殿和要塞里§f。在进入之前要把神镐§d还给我。"}]}
execute if score timeline time matches 500 run tellraw @a {"rawtext":[{"text":"§a[我]神镐挖到黑曜石之后还需要找个地方搭建传送门，能规划一块地吗？"}]}
execute if score timeline time matches 580 run tellraw @a {"rawtext":[{"text":"§f[田萍]好，就放在这里吧！"}]}
execute if score timeline time matches 580 run  function unlock/portal
execute if score timeline time matches 580 run camera @a set minecraft:free pos -239 33 139 facing -242 32 139

execute if score timeline time matches 660 run clone -239 -25 182 -238 -23 182 -234 -25 182
execute if score timeline time matches 660 run camera @a clear
execute if score timeline time matches 660 run function lib/modify_states/timeline/disable 