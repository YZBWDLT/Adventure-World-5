#BOSS战挖开石头见到黑曜石-田萍帮助

execute if score timeline time matches 1 run camera @a fade time 1 2 2 color 0 0 0
execute if score timeline time matches 20 run function area/village/refresh
execute if score timeline time matches 20 run tp @a -215 31 137 facing -216 31 133
execute if score timeline time matches 20 run camera @a set minecraft:free pos -210 34 132 facing -219 31 136
execute if score timeline time matches 20 run scoreboard players set music data 4
execute if score timeline time matches 20 run function music/replay

#此处插入刷新小镇场景
execute if score timeline time matches 20 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="王予凡"] aw:remove_immediately
execute if score timeline time matches 20 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="田萍"] aw:remove_immediately
execute if score timeline time matches 20 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="邹鹭遥"] aw:remove_immediately
execute if score timeline time matches 20 run summon aw:npc -217 31 134 facing -216 31 134 skin_0 "田萍"
execute if score timeline time matches 20 run summon aw:npc -215 31 132 facing -215 31 133 skin_1 "王予凡"
execute if score timeline time matches 20 run summon aw:npc -202 31 186 facing -202 31 185 skin_1 "王予凡"
execute if score timeline time matches 20 run summon aw:npc -227 31 176 facing -228 31 176 skin_1 "王予凡"
execute if score timeline time matches 20 run summon aw:npc -242 31 133 facing -241 31 133 skin_2 "邹鹭遥"
execute if score timeline time matches 20 run clone -259 5 121 -245 21 134 -259 31 121

execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"§a[我]我给你们讲讲我的详细情况吧……"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"§a[我]我来自遥远的陆地，那里曾经有一只可怕的恶魔。"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"§a[我]我的一位战友曾经独自远行，破坏了恶魔的能量源泉，让我成功消灭了恶魔。"}]}
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"§a[我]但她被残余的魔能困住下落不明，我出海就是为了寻找。"}]}
execute if score timeline time matches 340 run camera @a set minecraft:free pos -320 41 191 facing -310 33 183
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"§a[我]有法术的指引，我能大概确定方向。"}]}
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"§a[我]在我的感觉越来越强烈时，遭遇了暴风雨，落到了这个岛上。"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"§a[我]我判断，我要找的人很可能就在这个岛上。"}]}
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"§a[我]但现在不知道要从何做起，还要问问你们。"}]}
execute if score timeline time matches 660 run camera @a set minecraft:free pos -210 34 132 facing -219 31 136
execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"§f[田萍]原来是这样啊，听起来是一场很传奇的冒险。"}]}
execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"text":"§f[田萍]但你说的要找人……我们对此一无所知。"}]}
execute if score timeline time matches 780 run event entity @e[type=aw:npc,x=-217,y=31,z=134,r=1] aw:shake_head
execute if score timeline time matches 860 run tellraw @a {"rawtext":[{"text":"§f[王予凡]如果她在我们这儿的话我们不可能不知道。"}]}
execute if score timeline time matches 860 run event entity @e[type=aw:npc,x=-215,y=31,z=132,r=1] aw:confuse
execute if score timeline time matches 940 run tellraw @a {"rawtext":[{"text":"§f[田萍]但这个岛上确实还有很多我们不知道的秘密……"}]}
execute if score timeline time matches 940 run event entity @e[type=aw:npc,x=-217,y=31,z=134,r=1] aw:think
execute if score timeline time matches 1020 run tellraw @a {"rawtext":[{"text":"§f[田萍]等等，我想起一个地方对你可能有帮助。"}]}
execute if score timeline time matches 1060 run camera @a set minecraft:free ease 3 in_out_quad pos -237 33 130 facing -247 35 130
execute if score timeline time matches 1140 run tellraw @a {"rawtext":[{"text":"§f[田萍]小镇西边有一片山脉名叫§d浮空山§f，浮空峰内部有一片§d遗迹§f。"}]}
execute if score timeline time matches 1220 run tellraw @a {"rawtext":[{"text":"§f[田萍]我们都觉得那里面藏了什么秘密，但没人能进去过。"}]}
execute if score timeline time matches 1300 run tellraw @a {"rawtext":[{"text":"§f[田萍]你是专业冒险家可以去试试，或许会有什么发现。"}]}
execute if score timeline time matches 1380 run tellraw @a {"rawtext":[{"text":"§f[王予凡]去之前别忘了先到§d冒险中心§f看看啊，我给你准备了好东西。"}]}
execute if score timeline time matches 1420 as @a at @s anchored eyes run camera @a set minecraft:free ease 3 in_out_quad pos ^^^0.3 facing ^^^1
execute if score timeline time matches 1480 run camera @a clear

execute if score timeline time matches 1480 run function lib/modify_states/timeline/disable 