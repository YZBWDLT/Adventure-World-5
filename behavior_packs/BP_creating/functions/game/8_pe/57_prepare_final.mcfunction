#指示最后的地方，砍伐林场、准备做船

execute if score timeline time matches 1 run camera @a fade time 1 2 1 color 0 0 0
execute if score timeline time matches 20 run scoreboard players set music data 4
execute if score timeline time matches 20 run function lib/utils/music/replay
execute if score timeline time matches 40 run camera @a set minecraft:free pos -274 44 74 facing -261 37 66
execute if score timeline time matches 40 run event entity @e[type=aw:npc,x=-77,y=31,z=30,r=1,name="田萍"] aw:remove_immediately
execute if score timeline time matches 40 run event entity @e[type=aw:npc,x=-190,y=31,z=128,r=1,name="王予凡"] aw:remove_immediately
execute if score timeline time matches 40 run event entity @e[type=aw:npc,x=-214,y=31,z=134,r=1,name="邹鹭遥"] aw:remove_immediately
execute if score timeline time matches 40 run event entity @e[type=aw:npc,x=-166,y=37,z=119,r=1,name="吕岩"] aw:remove_immediately
execute if score timeline time matches 40 run event entity @e[type=aw:npc,x=-205,y=33,z=-36,r=1,name="倪高志"] aw:remove_immediately
execute if score timeline time matches 40 run summon aw:npc -265 31 66 facing -264 31 66 skin_0 "田萍"
execute if score timeline time matches 40 run summon aw:npc -264 39 163 facing -264 39 164 skin_1 "王予凡"
execute if score timeline time matches 40 run summon aw:npc -226 31 156 facing -226 31 157 skin_2 "邹鹭遥"
execute if score timeline time matches 40 run summon aw:npc -300 31 186 facing -300 31 187 skin_3 "吕岩"
execute if score timeline time matches 40 run summon aw:npc -228 -15 182 facing -229 -14 182 skin_4 "倪高志"
execute if score timeline time matches 60 run event entity @e[type=aw:npc,x=-264,y=39,z=163,r=1,name="王予凡"] aw:sit

execute if score timeline time matches 60 run structure load other:tomb -262 31 60
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§f[田萍]我的神镐啊，你死得好惨啊！"}]}
execute if score timeline time matches 160 run tp @a -265 31 69 facing -265 31 68
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§a[我]田萍，我从时间神庙出来了！"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§a[我]你的神镐也被复活了，还给你吧！"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§f[田萍]真的假的？"}]}
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§f[田萍]哇，居然是真的！我真是龙颜大悦啊！我的神镐回来啦！"}]}
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§f[田萍]……"}]}
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§f[田萍]嗯……我想了一下，还是你留着吧，这个神镐……我想送给你。"}]}
execute if score timeline time matches 640 run event entity @e[type=aw:npc,x=-265,y=31,z=66,r=1] aw:speak
execute if score timeline time matches 720 run tellraw @a {"rawtext":[{"text":"§a[我]咦，真的？为什么呢？"}]}
execute if score timeline time matches 800 run tellraw @a {"rawtext":[{"text":"§f[田萍]完成地牢之后，前往最后地方的道路也开启了。"}]}
execute if score timeline time matches 880 run camera @a set minecraft:free pos -233 -12 190 facing -232 -12 189
execute if score timeline time matches 885 run fill -225 -15 183 -225 -13 184 air destroy
execute if score timeline time matches 886 run kill @e[type=item,x=-225,y=-14,z=183,r=5]
execute if score timeline time matches 880 run tellraw @a {"rawtext":[{"text":"§f[田萍]在§d地铁中枢§f里，倪高志已经打通了新的地铁。"}]}
execute if score timeline time matches 900 run tp @a -290 31 180
execute if score timeline time matches 940 run structure load other:tree_cut1 -189 31 101
execute if score timeline time matches 940 run structure load other:tree_cut2 -164 36 101
execute if score timeline time matches 940 run structure load other:ship_new -320 29 193
execute if score timeline time matches 960 run camera @a set minecraft:free pos -302 35 172 facing -302 35 173
execute if score timeline time matches 960 run tellraw @a {"rawtext":[{"text":"§f[田萍]等那时，你也差不多要离开这里了。"}]}
execute if score timeline time matches 1040 run tellraw @a {"rawtext":[{"text":"§f[田萍]所以，神镐就送给你留作纪念了，希望你以后看到它就能想起我。"}]}
execute if score timeline time matches 1120 run tp @a -265 31 69 facing -265 31 68
execute if score timeline time matches 1120 run camera @a clear
execute if score timeline time matches 1120 run tellraw @a {"rawtext":[{"text":"§f[田萍]说多了，现在还有一场艰巨的挑战呢，做好准备吧！"}]}

execute if score timeline time matches 1200 run function game/starry/refresh
execute if score timeline time matches 1200 run function lib/utils/stop_dialogue
execute if score timeline time matches 1200 run function lib/modify_data/states/timeline/disable