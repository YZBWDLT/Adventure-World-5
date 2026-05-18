#初次通关海底神殿之后播放的动画
#空间贤者为了抑制魔王从这里索取能量而来破坏
#魔王前作已经消灭了，但空间贤者也被能量禁锢
#需要主角消灭这里的最终BOSS，能量就会消散，岛也会消失

execute if score timeline time matches 1 run camera @a fade time 1 1 1 color 0 0 0
execute if score timeline time matches 20 run tp @a -239 -9 177
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§9[？]没想到……竟然藏在这里。"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§9[？]这难以触及的地方……成为了无尽的黑暗之源。"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§9[？]若不破坏……他们无法与之一战！"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§9[？]哪怕会被吞噬禁锢……也在所不惜！"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§9[？]在诛灭恶魔后……一定能找到这里的。"}]}
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§9[？]无主的能量……处于慌忙和混乱中。"}]}
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§9[？]只要消灭“它”……一切能量都将消散。"}]}
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§9[？]我要尽我所能……提供帮助……"}]}

execute if score timeline time matches 800 run tellraw @a {"rawtext":[{"text":"§a[我]完成海底神殿了！我要把这个好消息§d告诉邹鹭遥！"}]}
execute if score timeline time matches 800 run title @a title §l§9溟海
execute if score timeline time matches 800 run tp @a -102 5 188 facing -102 5 187
execute if score timeline time matches 800 run function lib/utils/stop_dialogue
execute if score timeline time matches 800 run function lib/modify_data/states/timeline/disable