# ===== 岛屿消失动画 =====

# [60] 将玩家的相机调到正对华梦言
execute if score timeline time matches 60 as @e[type=aw:npc,x=-228,y=-14,z=194,r=1] at @s anchored eyes run camera @a set minecraft:free pos ^^^4 facing ~~~

# [130] 令华梦言对玩家挥手
execute if score timeline time matches 130 as @e[type=aw:npc,x=-228,y=-14,z=194,r=1] at @s run event entity @s aw:wave_hand

# [200] 开始对话
execute if score timeline time matches 200 as @e[type=aw:npc,x=-228,y=-14,z=194,r=1] at @s run event entity @s aw:speak
execute if score timeline time matches 200 run tellraw @a {"rawtext":[{"text":"§9[华梦言]我做了一个很长的梦……"}]}
execute if score timeline time matches 280 run tellraw @a {"rawtext":[{"text":"§9[华梦言]我梦到了山，梦到了水，梦到了树，却唯独没有一个人……"}]}
execute if score timeline time matches 360 run tellraw @a {"rawtext":[{"text":"§9[华梦言]那是无尽的孤独与荒芜，我眺望地平线，却空空如也，海底深处，传来恶魔的狞笑……"}]}
execute if score timeline time matches 360 as @e[type=aw:npc,x=-228,y=-14,z=194,r=1] at @s run event entity @s aw:shake_head
execute if score timeline time matches 440 run tellraw @a {"rawtext":[{"text":"§9[华梦言]我不能就此迷失，还有人在找我！"}]}
execute if score timeline time matches 520 run tellraw @a {"rawtext":[{"text":"§9[华梦言]我梦到两个人走上了岛，双手空空的他们在沙滩边的山洞里蜷缩着度过了第一晚。"}]}
execute if score timeline time matches 520 as @e[type=aw:npc,x=-228,y=-14,z=194,r=1] at @s run event entity @s aw:bad_smile
execute if score timeline time matches 600 run tellraw @a {"rawtext":[{"text":"§9[华梦言]第二天，他们重整旗鼓，在草地上砍树，挖矿，钓鱼，搭建旅馆。"}]}
execute if score timeline time matches 680 run tellraw @a {"rawtext":[{"text":"§9[华梦言]接着，越来越多的人来到了岛上，各司其职，一片欣欣向荣。"}]}
execute if score timeline time matches 760 run tellraw @a {"rawtext":[{"text":"§9[华梦言]我能感受到，每一个人所见的，所做的。他们都是我，是我的愿望……"}]}
execute if score timeline time matches 840 run tellraw @a {"rawtext":[{"text":"§9[华梦言]但，不论是噩梦还是美梦，梦终需醒。"}]}
execute if score timeline time matches 920 run tellraw @a {"rawtext":[{"text":"§9[华梦言]终于有一天，你来到了岛上，开始了冒险，岛上的怪物为了阻止你也活跃了起来。"}]}
execute if score timeline time matches 1000 run tellraw @a {"rawtext":[{"text":"§9[华梦言]当你消灭了最后的守卫时，这座岛便会消失吧。"}]}
execute if score timeline time matches 1000 as @e[type=aw:npc,x=-228,y=-14,z=194,r=1] at @s run event entity @s aw:confuse
execute if score timeline time matches 1080 run tellraw @a {"rawtext":[{"text":"§9[华梦言]但是，在这座岛的回忆，会作为现实，留在你心中。"}]}
execute if score timeline time matches 1160 run tellraw @a {"rawtext":[{"text":"§9[华梦言]然后……有一天你也会想起这座岛吧。"}]}
execute if score timeline time matches 1240 run tellraw @a {"rawtext":[{"text":"§9[华梦言]…………谢谢你，林乐……"}]}
execute if score timeline time matches 1320 run tellraw @a {"rawtext":[{"text":"§9[华梦言]时机已至！让我们一起苏醒吧！"}]}
execute if score timeline time matches 1320 as @e[type=aw:npc,x=-228,y=-14,z=194,r=1] at @s run event entity @s aw:speak

# [1380~2260] 白屏过渡，开始播放岛消失的音乐和动画，并移除华梦言
execute if score timeline time matches 1380 run event entity @e[type=aw:npc,x=-228,y=-14,z=194,r=1] aw:remove_immediately
execute if score timeline time matches 1380 run scoreboard players set music data 157
execute if score timeline time matches 1380 run function music/replay
execute if score timeline time matches 1380 run camera @a fade time 1 2 1 color 255 255 255

# 王予凡镜头
execute if score timeline time matches 1400 run camera @a set minecraft:free pos -200 34 180 facing -202 31 188
execute if score timeline time matches 1500 run camera @a fade time 2 1.9 0.1 color 255 255 255
# 田萍&王予凡家镜头
execute if score timeline time matches 1540 run camera @a set minecraft:free pos -203 40 123 facing -193 36 129
execute if score timeline time matches 1640 run camera @a fade time 2 1.9 0.1 color 255 255 255
# 买卖村镜头
execute if score timeline time matches 1680 run camera @a set minecraft:free pos -202 45 -47 facing -216 31 -29
execute if score timeline time matches 1780 run camera @a fade time 2 1.9 0.1 color 255 255 255
# 繁星农场镜头
execute if score timeline time matches 1820 run camera @a set minecraft:free pos -311 54 40 facing -269 30 64
execute if score timeline time matches 1920 run camera @a fade time 2 1.9 0.1 color 255 255 255
# 小岛消失
execute if score timeline time matches 1960 run camera @a set minecraft:free pos -200 40 250 facing -200 40 200
execute if score timeline time matches 2060 run camera @a fade time 1 2 1 color 192 216 255
execute if score timeline time matches 2081 run camera @a set minecraft:free pos -200 40 250 facing -200 40 300
execute if score timeline time matches 2160 run camera @a fade time 4 6 0 color 0 0 0

# [2261] 进入结束动画
execute if score timeline time matches 2261.. run function game/village/events/credits/start
