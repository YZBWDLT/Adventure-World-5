#完成地铁控制室，解锁地铁

execute if score timeline time matches 1 run camera @a fade time 1 2 1 color 0 0 0
execute if score timeline time matches 1 run scoreboard players set music data 4
execute if score timeline time matches 1 run function music/replay
execute if score timeline time matches 22 run tp @a -191.5 33.94 -40.5 facing -191.5 33.94 -41.5
execute if score timeline time matches 22 run camera @a set minecraft:free pos -197 40 -44 facing -192 34 -39
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"§a[我]天呐，谁家好人把地铁控制室做成这样啊……"}]}
execute if score timeline time matches 40..199 at @a run tp @a ~~~ ~-10 -90
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§f[倪高志]它也折磨我好久了，现在地铁就可以用了。"}]}
execute if score timeline time matches 200 run tp @a -191.5 33.94 -40.5 facing -191.5 33.94 -41.5
execute if score timeline time matches 220 run tp @e[type=aw:npc,x=-202,y=34,z=-59,r=1] -195 34 -47 facing -192 34 -41
execute if score timeline time matches 220 run camera @a set minecraft:free ease 1 in_out_sine pos -197 40 -44 facing -193 33 -44
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[倪高志]走吧，一起回小镇，叫上吕岩。"}]}
execute if score timeline time matches 300 run camera @a set minecraft:free ease 2 in_out_sine pos -197 40 -44 facing -197 40 -43
execute if score timeline time matches 300 run event entity @e[type=aw:npc,x=-175,y=31,z=61,r=1] aw:remove_immediately
execute if score timeline time matches 340 run camera @a set minecraft:free ease 4 in_out_quad pos -181 36 67 facing -177 32 62
execute if score timeline time matches 340 run tp @a -176 31 65 facing -176 31 64
execute if score timeline time matches 340 run summon aw:npc -175 31 61 facing -175 31 62 skin_3 "吕岩"
execute if score timeline time matches 340 run tp @e[type=aw:npc,x=-195,y=34,z=-47,r=1] -178 31 63 facing -175 31 61
execute if score timeline time matches 450 run event entity @e[type=aw:npc,x=-178,y=31,z=63,r=1] aw:speak
execute if score timeline time matches 470 run event entity @e[type=aw:npc,x=-175,y=31,z=61,r=1] aw:nod
execute if score timeline time matches 500 run camera @a set minecraft:free ease 3 in_out_sine pos -182 31.5 68 rot 90 -90
execute if score timeline time matches 560 run tp @a -232 31 139 facing -231 31 139
execute if score timeline time matches 570 run camera @a set minecraft:free pos -230 31.5 139 rot 90 -90
execute if score timeline time matches 580 as @a at @s anchored eyes run camera @a set minecraft:free ease 2 in_out_sine pos ^^^0.3 facing ^^^1
execute if score timeline time matches 580 run tp @e[type=aw:npc,x=-175,y=31,z=61,r=1] -229 31 142 facing -232 31 139
execute if score timeline time matches 580 run tp @e[type=aw:npc,x=-178,y=31,z=63,r=1] -231 31 136 facing -232 31 139

#此处插入刷新小镇场景
execute if score timeline time matches 580 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="王予凡"] aw:remove_immediately
execute if score timeline time matches 580 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="田萍"] aw:remove_immediately
execute if score timeline time matches 580 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="邹鹭遥"] aw:remove_immediately
execute if score timeline time matches 580 run summon aw:npc -228 31 139 facing -229 31 139 skin_0 "田萍"
execute if score timeline time matches 580 run summon aw:npc -233 31 144 facing -232 31 139 skin_1 "王予凡"
execute if score timeline time matches 580 run summon aw:npc -202 31 186 facing -202 31 185 skin_1 "王予凡"
execute if score timeline time matches 580 run summon aw:npc -227 31 176 facing -228 31 176 skin_1 "王予凡"
execute if score timeline time matches 580 run summon aw:npc -235 31 136 facing -232 31 139 skin_2 "邹鹭遥"

execute if score timeline time matches 580 run function unlock/station
execute if score timeline time matches 580 run function unlock/station_south
execute if score timeline time matches 580 run function unlock/station_farm
execute if score timeline time matches 660 run function area/village/refresh
execute if score timeline time matches 660 run tellraw @a {"rawtext":[{"text":"§f[田萍]终于，大家都聚在一起了，我们来讨论下一步的任务吧！"}]}
execute if score timeline time matches 740 run tellraw @a {"rawtext":[{"text":"§f[田萍]§d倪高志§f，你一直在研究如何进入森林，告诉林乐如何去§d林地府邸§f吧！"}]}
execute if score timeline time matches 820 run tellraw @a {"rawtext":[{"text":"§f[田萍]§d邹鹭遥§f，你对药水有研究，看看能不能找到水下呼吸进入§d海底神殿§f的办法。"}]}
execute if score timeline time matches 900 run tellraw @a {"rawtext":[{"text":"§f[田萍]§d吕岩§f，去§d下界要塞§f需要传送门，还是需要你这个建筑师来搭。"}]}
execute if score timeline time matches 980 run tellraw @a {"rawtext":[{"text":"§f[田萍]我和王予凡负责后勤支持，有问题就问我们吧！"}]}
execute if score timeline time matches 1000 run camera @a clear

execute if score timeline time matches 1000 run function lib/modify_states/timeline/disable