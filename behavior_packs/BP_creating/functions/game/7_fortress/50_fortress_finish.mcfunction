#初次通关下界要塞之后播放的动画
#在紧急情况下田萍觉醒了一部分空间贤者的意识
#帮助主角消灭了这里的怪物，但大家都不知道
#岛上本来没有人，npc全都是空间贤者的意识产物

execute if score timeline time matches 1 run camera @a fade time 1 1 1 color 0 0 0
execute if score timeline time matches 20 run tp @a -240 31 139 facing -239 31 139
execute if score timeline time matches 25 run summon aw:npc -228 31 137 facing -233 31 139 skin_1 "王予凡"
execute if score timeline time matches 25 run tp @e[type=aw:npc,x=-228,y=31,z=139,r=1] -228 31 139 facing -233 31 139
execute if score timeline time matches 25 run tp @e[type=aw:npc,x=-229,y=31,z=142,r=1] -229 31 142 facing -233 31 139
execute if score timeline time matches 25 run camera @a set minecraft:free pos -232 32.7 139 facing -225 32.7 140
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§f[田萍]可吓死我们了，还好你平安无事。"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§a[我]我听到了有个声音在说什么，然后所有怪物就都消失了。"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§f[王予凡]“尽我所能，将林乐救出来吧！”"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§a[我]没错！你们也听见了？"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§f[田萍]嗯，这句话就是我喊的，当时完全手足无措了。"}]}
execute if score timeline time matches 400 run event entity @e[type=aw:npc,x=-228,y=31,z=139,r=1] aw:nod
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§a[我]可是说话声音……算了，也可能是我没听清。"}]}
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§a[我]那怪物为什么会消失呢？你做了什么吗？"}]}
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§f[田萍]没有啊，我们也完全不知道怎么回事。"}]}
execute if score timeline time matches 640 run event entity @e[type=aw:npc,x=-228,y=31,z=139,r=1] aw:shake_head
execute if score timeline time matches 720 run tellraw @a {"rawtext":[{"text":"§f[王予凡]也许田萍的呼唤得到了神的响应？"}]}
execute if score timeline time matches 720 run event entity @e[type=aw:npc,x=-228,y=31,z=137,r=1] aw:confuse
execute if score timeline time matches 800 run tellraw @a {"rawtext":[{"text":"§f[王予凡]又或者，田萍就是那个神，紧急情况下觉醒了力量？"}]}
execute if score timeline time matches 800 run event entity @e[type=aw:npc,x=-228,y=31,z=137,r=1] aw:bad_smile
execute if score timeline time matches 880 run tellraw @a {"rawtext":[{"text":"§f[田萍]完全没有头绪，只能等以后你彻底知晓此岛的秘密才知道了。"}]}
execute if score timeline time matches 960 run tellraw @a {"rawtext":[{"text":"§f[王予凡]以后再说吧，你通过了下界要塞，现在吕岩有好东西给你了。"}]}
execute if score timeline time matches 1040 run tellraw @a {"rawtext":[{"text":"§f[吕岩]没错，我对岛上的小游戏都做了改进。"}]}
execute if score timeline time matches 1040 run event entity @e[type=aw:npc,x=-229,y=31,z=142,r=1] aw:speak
execute if score timeline time matches 1120 run tellraw @a {"rawtext":[{"text":"§f[吕岩]现在你通关小游戏有§d额外材料奖励§f了！"}]}
execute if score timeline time matches 1120 run event entity @e[type=aw:npc,x=-229,y=31,z=142,r=1] aw:point 

execute if score timeline time matches 1200 run event entity @e[type=aw:npc,x=-228,y=31,z=137,r=1] aw:remove_immediately
execute if score timeline time matches 1200 run camera @a clear
execute if score timeline time matches 1200 run function lib/modify_states/timeline/disable