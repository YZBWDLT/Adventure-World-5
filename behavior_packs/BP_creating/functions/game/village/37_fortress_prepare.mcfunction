#和吕岩对话-准备去下界要塞

execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[吕岩]想去下界要塞，必须修建§d传送门§f。"}]}
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§f[吕岩]传送门的材料是§d黑曜石§f，你在冒险途中有没有看见过？"}]}
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[吕岩]黑曜石的硬度很高，你手中的镐是不够用的。"}]}
execute if score timeline time matches 180 run event entity @e[type=aw:npc,x=-229,y=31,z=142,r=1] aw:shake_head
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[吕岩]必须要使用田萍的§d神镐§f了，要找他去借。"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[吕岩]但神镐对他来说很珍贵，我们准备个礼物送给他吧。"}]}

# 不送礼的分支剧情（先和吕岩对话时）
execute if score timeline time matches 420 if score monument_prepare data matches 0 run tellraw @a {"rawtext":[{"text":"§f[吕岩]但我没想好送什么，你问问§d邹鹭遥§f吧！"}]}
execute if score timeline time matches 420 if score monument_prepare data matches 0 run event entity @e[type=aw:npc,x=-229,y=31,z=142,r=1] aw:point
execute if score timeline time matches 420 if score monument_prepare data matches 0 if score fortress_prepare data matches 0 run scoreboard players set fortress_prepare data 1
execute if score timeline time matches 500 if score monument_prepare data matches 0 run camera @a clear
execute if score timeline time matches 500 if score monument_prepare data matches 0 run function lib/modify_states/timeline/disable

# 送礼的分支剧情（先和邹鹭遥对话时）
execute if score timeline time matches 420 if score monument_prepare data matches 1 run tellraw @a {"rawtext":[{"text":"§a[我]Σ(っ °Д °;)っ 说这么大声不怕田萍听到吗？"}]}
execute if score timeline time matches 500 if score monument_prepare data matches 1 run tellraw @a {"rawtext":[{"text":"§f[吕岩]没事，他精通新三定律，大声密谋他听不见，二人密谋反倒会被窃听。我们要是二人密谋送礼，他一定会六亲不认，水火无敌的。"}]}
execute if score timeline time matches 500 if score monument_prepare data matches 1 run event entity @e[type=aw:npc,x=-229,y=31,z=142,r=1] aw:bad_smile
execute if score timeline time matches 580 if score monument_prepare data matches 1 run camera @a set minecraft:free pos -309 38 99 facing -315 32 92
execute if score timeline time matches 580 if score monument_prepare data matches 1 run function unlock/dock_farm
execute if score timeline time matches 580 if score monument_prepare data matches 1 run tellraw @a {"rawtext":[{"text":"§f[吕岩]邹鹭遥说要去雪原，那正好准备一块稀有的§d蓝冰§f。等我在农场修建完§d农港§f，就可以去雪原了！"}]}
execute if score timeline time matches 660 if score monument_prepare data matches 1 run function game/village/events/prepare/lvyan_completed_2
