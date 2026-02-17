#完成浮空峰遗迹后前往平原-临走嘱托

execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[田萍]嗨~你从山上下来啦！"}]}
execute if score timeline time matches 20 run event entity @e[type=aw:npc,x=-204,y=31,z=109,r=1] aw:wave_hand
execute if score timeline time matches 60 run camera @a fade time 1 2 1 color 0 0 0
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§a[我]（复述了听到的断断续续的话）"}]}
execute if score timeline time matches 100 run camera @a set minecraft:free pos -204 33 111 facing -204 32 109
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[田萍]§d森林、海洋、下界……"}]}
execute if score timeline time matches 180 run event entity @e[type=aw:npc,x=-204,y=31,z=109,r=1] aw:think
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[田萍]这就是汇灵岛上的各区域，我可以给你做向导。"}]}
execute if score timeline time matches 260 run event entity @e[type=aw:npc,x=-204,y=31,z=109,r=1] aw:point
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§a[我]真的吗？"}]}
execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"§f[田萍]不过，在此之前还要做一些准备，还需要叫上更多人一起。"}]}
execute if score timeline time matches 420 run camera @a set minecraft:free ease 4 linear pos -201 34 102 facing -200 34 100
execute if score timeline time matches 500 run tellraw @a {"rawtext":[{"text":"§f[田萍]从这里出去就是§d逍遥平原§f了，那里有人能帮到你。就住在那个屋。"}]}
execute if score timeline time matches 580 run tellraw @a {"rawtext":[{"text":"§f[田萍]不过他最近遇到了些麻烦，你过去后还要帮些忙。王予凡已经打好招呼了，直接进他家就行。"}]}
execute if score timeline time matches 580 run camera @a set minecraft:free pos -204 33 111 facing -204 32 109
execute if score timeline time matches 660 run tellraw @a {"rawtext":[{"text":"§f[王予凡]嗯……（眼神回避）"}]}
execute if score timeline time matches 660 run event entity @e[type=aw:npc,x=-197,y=31,z=107,r=1] aw:look_around
execute if score timeline time matches 660 run camera @a set minecraft:free pos -198 33 109 facing -197 32 107
execute if score timeline time matches 740 run camera @a clear
execute if score timeline time matches 740 run function lib/modify_states/timeline/disable 