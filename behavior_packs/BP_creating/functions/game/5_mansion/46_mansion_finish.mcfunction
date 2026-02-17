#初次通关林地府邸之后播放的动画
#这里是魔王的能量所聚成的梦境岛屿
#以魔王视角描述这个岛，岛上只有怪物，没有人类
#居民npc是空间贤者为了对抗而意识化作的产物

execute if score timeline time matches 1 run camera @a fade time 1 1 1 color 0 0 0
execute if score timeline time matches 20 run tp @a -239 -9 177
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§7§o森林、沙漠、高山……一切都投影于此。"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§7§o这里是理想的维度，完美的世界！"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§7§o永无低等的人类，愚蠢的生物！"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§7§o让那些可笑的空房屋随草木一起映于地上。"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§7§o这里只有听命于我的怪物军队！"}]}
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§7§o无尽的能量，造就这世外桃源。"}]}
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§7§o海的那边，曾经的抵抗，终究会灭绝。"}]}
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§7§o此处的一切将会成为现实！"}]}

execute if score timeline time matches 800 run tellraw @a {"rawtext":[{"text":"§a[我]完成林地府邸了！我要把这个好消息§d告诉倪高志！"}]}
execute if score timeline time matches 800 run title @a title §9明月森林
execute if score timeline time matches 800 run tp @a -299 31 10 facing -298 31 10
execute if score timeline time matches 800 run function lib/modify_states/timeline/disable