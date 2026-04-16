#在沙滩和王予凡聊天

execute if score timeline time matches 20 run camera @a fade time 1 1 2 color 200 200 255
execute if score timeline time matches 20 run scoreboard players set music data 18
execute if score timeline time matches 20 run function lib/utils/music/replay
execute if score timeline time matches 50 run tp @a -271 32 188 facing -271 32 189
execute if score timeline time matches 50 run event entity @e[type=aw:npc,x=-233,y=31,z=144,r=1] should_not_see_player
execute if score timeline time matches 50 run event entity @e[type=aw:npc,x=-233,y=31,z=144,r=1] aw:sit
execute if score timeline time matches 50 run event entity @e[type=aw:npc,x=-273,y=31,z=185,r=1] aw:remove_immediately
execute if score timeline time matches 50 run tp @e[type=aw:npc,x=-233,y=31,z=144,r=1] -273 32 187 facing -273 32 188
execute if score timeline time matches 50 run camera @a set minecraft:free pos -272 50 180 facing -272 50 181
execute if score timeline time matches 60 run camera @a set minecraft:free ease 5 linear pos -272 33 180 facing -272 33 181

execute if score timeline time matches 200 run tellraw @a {"rawtext":[{"text":"§f[王予凡]这个椰子到底是从哪儿来的呢……"}]}
execute if score timeline time matches 280 run tellraw @a {"rawtext":[{"text":"§f[王予凡]虽然在这里只能看到一望无际的海洋，但我相信对面一定有更大的世界！"}]}
execute if score timeline time matches 360 run tellraw @a {"rawtext":[{"text":"§f[王予凡]你的到来让整个小岛都活了起来，就像是梦中的一束光打破了沉睡的思绪。"}]}
execute if score timeline time matches 440 run tellraw @a {"rawtext":[{"text":"§f[王予凡]就连以前在岛上找不到的怪物都活跃了起来。"}]}
execute if score timeline time matches 520 run tellraw @a {"rawtext":[{"text":"§f[王予凡]你帮助我们救了田萍、清理了矿井的怪物，修好了倪高志的地铁……"}]}
execute if score timeline time matches 520 run event entity @e[type=aw:npc,x=-273,y=32,z=187,r=1] aw:speak
execute if score timeline time matches 600 run tellraw @a {"rawtext":[{"text":"§f[王予凡]我代表所有人向你表示由衷的感谢，真的感激不尽！"}]}
execute if score timeline time matches 600 run event entity @e[type=aw:npc,x=-273,y=32,z=187,r=1] aw:applause
execute if score timeline time matches 680 run tellraw @a {"rawtext":[{"text":"§f[王予凡]看到你时，大家就觉得你有一股熟悉的感觉……"}]}
execute if score timeline time matches 760 run tellraw @a {"rawtext":[{"text":"§f[王予凡]你一定是为了告诉我们什么才来到这个岛上的！"}]}
execute if score timeline time matches 840 run tellraw @a {"rawtext":[{"text":"§a[我]我住在远方的一片陆地上，那里有我的三个朋友。"}]}
execute if score timeline time matches 920 run tellraw @a {"rawtext":[{"text":"§a[我]一个像田萍一样见识广博而有领导力，他的性格像你一样活泼。"}]}
execute if score timeline time matches 1000 run tellraw @a {"rawtext":[{"text":"§a[我]一个聪明漂亮而又可爱，给予了我很大的帮助，我很喜欢她……"}]}
execute if score timeline time matches 1080 run tellraw @a {"rawtext":[{"text":"§a[我]还有一个……我很久都没见到了。"}]}
execute if score timeline time matches 1160 run tellraw @a {"rawtext":[{"text":"§a[我]她为我们消灭恶魔奠定了胜机，而她自己却不知被困何方。"}]}
execute if score timeline time matches 1240 run tellraw @a {"rawtext":[{"text":"§a[我]我在浮空峰遗迹里听到了她说话，但我只能按照指引向前，不知迎接我的是什么。"}]}
execute if score timeline time matches 1320 run tellraw @a {"rawtext":[{"text":"§f[王予凡]有朝一日，我真想去林乐的家乡看看呢。"}]}
execute if score timeline time matches 1400 run tellraw @a {"rawtext":[{"text":"§f[王予凡]你知道吗？当我在海滩发现你的时候，我的心跳得很快。"}]}
execute if score timeline time matches 1480 run tellraw @a {"rawtext":[{"text":"§a[我](°ー°〃)"}]}
execute if score timeline time matches 1560 run tellraw @a {"rawtext":[{"text":"§f[王予凡]我不想费劲去收集建筑材料，终于有人能帮我了:P"}]}
execute if score timeline time matches 1560 run event entity @e[type=aw:npc,x=-273,y=32,z=187,r=1] aw:bad_smile
execute if score timeline time matches 1560 run playsound random.explode @a -272 33 180 0.5
execute if score timeline time matches 1640 run tellraw @a {"rawtext":[{"text":"§a[我](╯‵□′)╯︵┻━┻"}]}
execute if score timeline time matches 1720 run tellraw @a {"rawtext":[{"text":"§f[王予凡]好了好了，我给你准备了一个东西，来§d我家§f拿吧！"}]}

#此动画结束后放的村庄音乐有很大可能无法正常停止，于是将1800改成1799试图解决
execute if score timeline time matches 1799 run event entity @e[type=aw:npc,x=-273,y=32,z=187,r=1] aw:stand
execute if score timeline time matches 1799 run event entity @e[type=aw:npc,x=-273,y=32,z=187,r=1] should_see_player
execute if score timeline time matches 1799 run tp @e [type=aw:npc,x=-273,y=32,z=187,r=1] -190 31 128 facing -190 31 129
execute if score timeline time matches 1799 run setblock -190 30 130 air
execute if score timeline time matches 1799 run camera @a clear
execute if score timeline time matches 1799 run scoreboard players set music data 14
execute if score timeline time matches 1799 run function lib/utils/music/replay

execute if score timeline time matches 1800 run function lib/modify_states/timeline/disable 