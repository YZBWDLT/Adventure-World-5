#和邹鹭遥对话-准备去海底神殿

execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]海底神殿很深，以你现在的能力没有办法下潜到那个位置。"}]}
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]在§d雪原§f有一块§d贝壳§f，你只要拿到它就可以在水下呼吸了。"}]}
execute if score timeline time matches 100 run event entity @e[type=aw:npc,x=-235,y=31,z=136,r=1] aw:speak
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]但是，那块贝壳也放在水下，你也拿不到……"}]}
execute if score timeline time matches 180 run event entity @e[type=aw:npc,x=-235,y=31,z=136,r=1] aw:think
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§a[我]那岂不是没办法了？"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]不，还有另一种办法，就是酿造§d水肺药水§f。"}]}
execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]但这种药也有限制，它在常温环境下就会失效。"}]}
execute if score timeline time matches 500 run tellraw @a {"rawtext":[{"text":"§a[我]在雪原是不是就可以喝了？"}]}
execute if score timeline time matches 580 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]嗯，但它依旧很不稳定，我只能§d在雪原酿造§f，酿造完后你必须§d立刻喝下§f。"}]}
execute if score timeline time matches 660 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]药水的材料是§d河豚§f，但我之前抓河豚的时候被扎伤了，有一点心理阴影……"}]}
execute if score timeline time matches 180 run event entity @e[type=aw:npc,x=-235,y=31,z=136,r=1] aw:confuse
execute if score timeline time matches 740 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]你钓个两三条§d河豚§f之后带过去，我现场制作完你就可以下水寻找贝壳了。"}]}

# 不送礼的分支剧情（先和邹鹭遥对话时）
execute if score timeline time matches 820 if score fortress_prepare data matches 0 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]雪原离这里很远，需要建设新的交通设施。要不，你去找§d吕岩§f让他帮帮忙？"}]}
execute if score timeline time matches 820 if score fortress_prepare data matches 0 run event entity @e[type=aw:npc,x=-235,y=31,z=136,r=1] aw:point
execute if score timeline time matches 820 if score fortress_prepare data matches 0 if score monument_prepare data matches 0 run scoreboard players set monument_prepare data 1
execute if score timeline time matches 900 if score fortress_prepare data matches 0 run camera @a clear
execute if score timeline time matches 900 if score fortress_prepare data matches 0 run function lib/modify_states/timeline/disable

# 送礼的分支剧情（先和吕岩对话时）
execute if score timeline time matches 820 if score fortress_prepare data matches 1 run camera @a set minecraft:free pos -309 38 99 facing -315 32 92
execute if score timeline time matches 820 if score fortress_prepare data matches 1 run function unlock/dock_farm
execute if score timeline time matches 820 if score fortress_prepare data matches 1 run tellraw @a {"rawtext":[{"text":"§f[吕岩]雪原？正好给田萍带一块稀有的§d蓝冰§f，在农场修建§d农港§f去雪原吧！"}]}
execute if score timeline time matches 900 if score fortress_prepare data matches 1 run tellraw @a {"rawtext":[{"text":"§a[我]Σ(っ °Д °;)っ 说这么大声不怕田萍听到吗？"}]}
execute if score timeline time matches 980 if score fortress_prepare data matches 1 run tellraw @a {"rawtext":[{"text":"§f[吕岩]没事，他精通新三定律，大声密谋他听不见，二人密谋反倒会被窃听。我们要是二人密谋送礼，他一定会六亲不认，水火无敌的。"}]}
execute if score timeline time matches 1060 if score fortress_prepare data matches 1 run function game/village/events/prepare/zouluyao_completed_2
