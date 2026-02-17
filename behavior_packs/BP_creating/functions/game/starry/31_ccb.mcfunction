#集齐所有染料-获得玻璃瓶

execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[王予凡]太好了，染料都集齐了！"}]}
execute if score timeline time matches 60 run camera @a fade time 1 2 1 color 0 0 0
execute if score timeline time matches 68 run playsound step.grass @a -281 35 88
execute if score timeline time matches 76 run playsound step.grass @a -281 35 88
execute if score timeline time matches 84 run playsound step.grass @a -281 35 88
execute if score timeline time matches 92 run playsound step.grass @a -281 35 88
execute if score timeline time matches 100 run playsound step.grass @a -281 35 88
execute if score timeline time matches 100 run tp @a -272 31 99 facing -273 31 98
execute if score timeline time matches 100 run clone -276 27 84 -276 28 84 -276 31 84
execute if score timeline time matches 100 run summon aw:npc -279 31 90 facing -280 31 90 skin_3 "吕岩"
execute if score timeline time matches 100 run camera @a set minecraft:free pos -281.5 34.8 88.5 facing -281 33 90
execute if score timeline time matches 108 run playsound step.grass @a -281 35 88
execute if score timeline time matches 116 run playsound step.grass @a -281 35 88
execute if score timeline time matches 124 run playsound step.grass @a -281 35 88
execute if score timeline time matches 132 run playsound step.grass @a -281 35 88
execute if score timeline time matches 140 run playsound step.grass @a -281 35 88

execute if score timeline time matches 200 run tellraw @a {"rawtext":[{"text":"§f[王予凡]吕岩？你找我有什么事？"}]}
execute if score timeline time matches 280 run tellraw @a {"rawtext":[{"text":"§f[吕岩]我来问你？你的染料都是从哪来的？"}]}
execute if score timeline time matches 360 run tellraw @a {"rawtext":[{"text":"§f[王予凡]啊？这个……(づ￣ 3￣)づ"}]}
execute if score timeline time matches 360 run event entity @e[type=aw:npc,x=-283,y=31,z=90,r=1] aw:confuse
execute if score timeline time matches 440 run tellraw @a {"rawtext":[{"text":"§f[吕岩]我说最近怎么房间里的花经常消失呢，果然是你的馊主意！(╬▔皿▔)╯"}]}
execute if score timeline time matches 440 run event entity @e[type=aw:npc,x=-279,y=31,z=90,r=1] aw:point
execute if score timeline time matches 520 run tellraw @a {"rawtext":[{"text":"§f[吕岩]要不是林乐经常提醒我修复建筑，我现在都不知道。"}]}
execute if score timeline time matches 600 run tellraw @a {"rawtext":[{"text":"§f[王予凡]都是一家人，资源大家要共享嘛……(´･ω･`)"}]}
execute if score timeline time matches 600 run event entity @e[type=aw:npc,x=-283,y=31,z=90,r=1] aw:confuse
execute if score timeline time matches 680 run tellraw @a {"rawtext":[{"text":"§f[吕岩]但你偷我摆的花还是不能善罢甘休，必须给你迎头痛击！<( ‵□′)>───Ｃε(┬﹏┬)3"}]}
execute if score timeline time matches 760 run tellraw @a {"rawtext":[{"text":"§f[王予凡]…(⊙_⊙;)…"}]}

execute if score timeline time matches 800..880 run particle minecraft:huge_explosion_emitter -282 33 88
execute if score timeline time matches 810 run playsound game.player.hurt @a -281 35 88
execute if score timeline time matches 810 run playsound game.player.attack.strong @a -281 35 88
execute if score timeline time matches 830 run playsound game.player.hurt @a -281 35 88
execute if score timeline time matches 830 run playsound game.player.attack.strong @a -281 35 88
execute if score timeline time matches 850 run playsound game.player.hurt @a -281 35 88
execute if score timeline time matches 850 run playsound game.player.attack.strong @a -281 35 88
execute if score timeline time matches 870 run playsound game.player.hurt @a -281 35 88
execute if score timeline time matches 870 run playsound game.player.attack.strong @a -281 35 88

execute if score timeline time matches 880 run camera @a set minecraft:free pos -280 33.9 90 facing -283 31.5 90
execute if score timeline time matches 880 run event entity @e[type=aw:npc,x=-283,y=31,z=90,r=1] aw:lie
execute if score timeline time matches 900 run tp @e[type=aw:npc,x=-283,y=31,z=90,r=5,name="吕岩"] -283 32 90 facing -282 32 90
execute if score timeline time matches 910 run playsound random.hurt @a -281 35 88
execute if score timeline time matches 920 run tp @e[type=aw:npc,x=-283,y=31,z=90,r=5,name="吕岩"] -283 32 90 facing -282 32 90
execute if score timeline time matches 930 run playsound random.hurt @a -281 35 88
execute if score timeline time matches 940 run tp @e[type=aw:npc,x=-283,y=31,z=90,r=5,name="吕岩"] -283 32 90 facing -282 32 90
execute if score timeline time matches 950 run playsound random.hurt @a -281 35 88
execute if score timeline time matches 960 run tp @e[type=aw:npc,x=-283,y=31,z=90,r=5,name="吕岩"] -283 32 90 facing -282 32 90
execute if score timeline time matches 970 run playsound random.hurt @a -281 35 88

execute if score timeline time matches 980 run camera @a fade time 1 10 1 color 0 0 0
execute if score timeline time matches 1020 run tellraw @a {"rawtext":[{"text":"§f[吕岩]林乐别怕，大家都是熟人，开个玩笑而已。"}]}
execute if score timeline time matches 1100 run tellraw @a {"rawtext":[{"text":"§f[吕岩]需要什么跟我说。还有你，别再私自摘花了啊。"}]}
execute if score timeline time matches 1180 run tellraw @a {"rawtext":[{"text":"§f[吕岩]我给你准备了一个礼物放在了门口。"}]}
execute if score timeline time matches 1200 run event entity @e[type=aw:npc,x=-283,y=31,z=90,r=5,name="吕岩"] aw:remove_immediately
execute if score timeline time matches 1200 run event entity @e[type=aw:npc,x=-283,y=31,z=90,r=1] aw:stand
execute if score timeline time matches 1200 run camera @a clear
execute if score timeline time matches 1200 run scoreboard players set music data 101
execute if score timeline time matches 1200 run function music/replay
execute if score timeline time matches 1200 run function lib/modify_states/timeline/disable