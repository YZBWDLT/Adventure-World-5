# ===== 制作人动画 =====

# 时间计算原则：
# 1. [A][B] 间相差 140，[上][下]相差 70。
# 2. 数字切换时（例如 1B -> 2A, 4B 下 -> 5A 上），在原则 1 基础上时间 -5。

# --- 前奏 ---

execute if score timeline time matches 1 run title @a times 10 70 20

execute if score timeline time matches 1 run title @a title §1
execute if score timeline time matches 1 run title @a subtitle 出品 §b极筑工坊
execute if score timeline time matches 80 run title @a title §1
execute if score timeline time matches 80 run title @a subtitle 冒险世界 第 §l§b5§r§f 部作品
execute if score timeline time matches 180 run title @a title §l§e冒 险 世 界
execute if score timeline time matches 180 run title @a subtitle §b筑梦
execute if score timeline time matches 180 run camera @a set minecraft:free pos -250 60 175 facing -172 40 130

# --- 作者与地图时间信息 ---

execute if score timeline time matches 200 run title @a times 10 150 20

# 1A | 作者：巴豆展示
execute if score timeline time matches 220 run title @a title §b狂野巴豆
execute if score timeline time matches 220 run title @a subtitle §l作者
execute if score timeline time matches 219 run summon aw:npc -200 31 175 180 0 skin_12
execute if score timeline time matches 220 run event entity @e[type=aw:npc,x=-200,y=31,z=175,r=1] aw:wave_hand
execute if score timeline time matches 220 run camera @a set minecraft:free pos -200 33 170 facing -203 33 177
execute if score timeline time matches 361 run event entity @e[type=aw:npc,x=-200,y=31,z=175,r=1] aw:remove_immediately
# 1B | 联合作者：量筒展示
execute if score timeline time matches 360 run title @a title §b一只卑微的量筒
execute if score timeline time matches 360 run title @a subtitle §l联合作者，技术支持
execute if score timeline time matches 359 run summon aw:npc -197 31 130 90 0 skin_13
execute if score timeline time matches 360 run event entity @e[type=aw:npc,x=-197,y=31,z=130,r=1] aw:wave_hand
execute if score timeline time matches 360 run camera @a set minecraft:free pos -201 33 130 facing -197 33 132
execute if score timeline time matches 496 run event entity @e[type=aw:npc,x=-197,y=31,z=130,r=1] aw:remove_immediately

# 2A | 皮肤：文雨展示
execute if score timeline time matches 495 run title @a title §bKrisChambers文雨
execute if score timeline time matches 495 run title @a subtitle §l皮肤
execute if score timeline time matches 494 run summon aw:npc -273 55 36 270 0 skin_14
execute if score timeline time matches 495 run event entity @e[type=aw:npc,x=-273,y=55,z=36,r=1] aw:wave_hand
execute if score timeline time matches 495 run camera @a set minecraft:free pos -269 57 36 facing -272 56 34
execute if score timeline time matches 636 run event entity @e[type=aw:npc,x=-273,y=55,z=36,r=1] aw:remove_immediately
# 2B | 部分建筑指导：绿叶展示
execute if score timeline time matches 635 run title @a title §bo绿叶o
execute if score timeline time matches 635 run title @a subtitle §l部分建筑指导
execute if score timeline time matches 634 run summon aw:npc -214 32 -19 315 0 skin_15
execute if score timeline time matches 635 run event entity @e[type=aw:npc,x=-214,y=32,z=-19,r=1] aw:wave_hand
execute if score timeline time matches 635 run camera @a set minecraft:free pos -210 34 -15 facing -213 34 -21
execute if score timeline time matches 771 run event entity @e[type=aw:npc,x=-214,y=32,z=-19,r=1] aw:remove_immediately

# 3A
execute if score timeline time matches 770 run title @a title §b2024.10.08
execute if score timeline time matches 770 run title @a subtitle §l立项时间
execute if score timeline time matches 770 run camera @a set minecraft:free pos -230 40 140 facing -220 40 130
execute if score timeline time matches 771 run camera @a set minecraft:free ease 14 linear pos -220 40 130 facing -220 40 130
# 3B
execute if score timeline time matches 910 run title @a title §b2026.02.17
execute if score timeline time matches 910 run title @a subtitle §l完成时间
execute if score timeline time matches 910 run camera @a set minecraft:free pos -165 36 140 facing -165 36 170
execute if score timeline time matches 911 run camera @a set minecraft:free ease 20 linear pos -165 36 170 facing -165 36 170

# --- 测试 ---

# 4A 上 | 第一大矿洞
execute if score timeline time matches 1045 run title @a title §a一只卑微的量筒
execute if score timeline time matches 1045 run title @a subtitle 测试
execute if score timeline time matches 1045 run camera @a set minecraft:free pos -228 -27 131 facing -233 -27 136
execute if score timeline time matches 1046 run camera @a set minecraft:free ease 14 linear pos -233 -27 136 facing -233 -27 136
# 4A 下 | 浮空山遗迹
execute if score timeline time matches 1115 run title @a title §atck1122 小飞侠
execute if score timeline time matches 1115 run title @a subtitle 测试
execute if score timeline time matches 1115 run camera @a set minecraft:free pos -287 -42 133 facing -287 -42 121
execute if score timeline time matches 1116 run camera @a set minecraft:free ease 14 linear pos -287 -42 121 facing -287 -42 121
# 4B 上 | 逍遥矿井
execute if score timeline time matches 1185 run title @a title §alanos212
execute if score timeline time matches 1185 run title @a subtitle 测试
execute if score timeline time matches 1185 run camera @a set minecraft:free pos -143 -29 116 facing -138 -34 111
execute if score timeline time matches 1186 run camera @a set minecraft:free ease 14 linear pos -138 -34 111 facing -138 -34 111
# 4B 下 | 地铁控制室
execute if score timeline time matches 1255 run title @a title §ayiyishi54188 Ag2S
execute if score timeline time matches 1255 run title @a subtitle 测试
execute if score timeline time matches 1255 run camera @a set minecraft:free pos -145 -40 -10 facing -128 -43 -26
execute if score timeline time matches 1256 run camera @a set minecraft:free ease 21 linear pos -128 -43 -26 facing -128 -43 -26

# 5A 上 | 林地府邸
execute if score timeline time matches 1320 run title @a title §aKrisChambers文雨
execute if score timeline time matches 1320 run title @a subtitle 测试
execute if score timeline time matches 1320 run camera @a set minecraft:free pos -265 -48 -13 facing -280 -48 -13
execute if score timeline time matches 1321 run camera @a set minecraft:free ease 14 linear pos -280 -48 -13 facing -280 -48 -13
# 5A 下 | 海洋神殿
execute if score timeline time matches 1390 run title @a title §a比翼鸟
execute if score timeline time matches 1390 run title @a subtitle 测试
execute if score timeline time matches 1390 run camera @a set minecraft:free pos -127 -47 167 facing -122 -47 172
execute if score timeline time matches 1391 run camera @a set minecraft:free ease 14 linear pos -122 -47 172 facing -122 -47 172
# 5B 上 | 下界要塞
execute if score timeline time matches 1460 run title @a title §aPigeonKI 鸽子
execute if score timeline time matches 1460 run title @a subtitle 测试
execute if score timeline time matches 1460 run camera @a set minecraft:free pos -290 -45 50 facing -277 -51 33
execute if score timeline time matches 1461 run camera @a set minecraft:free ease 28 linear pos -277 -51 33 facing -277 -51 33
# 5B 下 | 时间神庙
execute if score timeline time matches 1530 run title @a title §a烟雨
execute if score timeline time matches 1530 run title @a subtitle 测试
execute if score timeline time matches 1530 run camera @a set minecraft:free pos -235 -45 -33 facing -231 -37 -29
execute if score timeline time matches 1531 run camera @a set minecraft:free ease 14 linear pos -235 -20 -33 facing -231 -37 -29

# 6A 上 | 逍遥平原迷宫
execute if score timeline time matches 1595 run title @a title §alonglongxiaotao 龙龙
execute if score timeline time matches 1595 run title @a subtitle 测试
execute if score timeline time matches 1595 run camera @a set minecraft:free pos -232 44 64 facing -244 36 49
execute if score timeline time matches 1596 run camera @a set minecraft:free ease 14 linear pos -244 36 49 facing -244 36 49
# 6A 下 | 买卖村
execute if score timeline time matches 1665 run title @a title §afreeorange114 橘子
execute if score timeline time matches 1665 run title @a subtitle 测试
execute if score timeline time matches 1665 run camera @a set minecraft:free pos -197 35 -47 facing -207 35 -41
execute if score timeline time matches 1666 run camera @a set minecraft:free ease 14 linear pos -207 35 -41 facing -207 35 -41
# 6B 上 | 迷失森林
execute if score timeline time matches 1735 run title @a title §aHfpa0117 帕
execute if score timeline time matches 1735 run title @a subtitle 测试
execute if score timeline time matches 1735 run camera @a set minecraft:free pos -262 33 -39 facing -272 33 -48
execute if score timeline time matches 1736 run camera @a set minecraft:free ease 14 linear pos -272 33 -48 facing -272 33 -48
# 6B 下 | 明月森林
execute if score timeline time matches 1805 run title @a title §aTraptrix SL
execute if score timeline time matches 1805 run title @a subtitle 测试
execute if score timeline time matches 1804 run time set night
execute if score timeline time matches 1805 run camera @a set minecraft:free pos -261 33 -13 facing -272 33 6
execute if score timeline time matches 1806 run camera @a set minecraft:free ease 28 linear pos -272 33 6 facing -272 33 6
execute if score timeline time matches 1870 run time set day

# 7A 上 | 旭日沙漠
execute if score timeline time matches 1870 run title @a title §asakura-nyanko
execute if score timeline time matches 1870 run title @a subtitle 测试
execute if score timeline time matches 1870 run camera @a set minecraft:free pos -126 33 68 facing -96 44 65
execute if score timeline time matches 1871 run camera @a set minecraft:free ease 14 linear pos -96 44 65 facing -96 44 65
# 7A 下 | 浮空山
execute if score timeline time matches 1940 run title @a title §aDemoclight 残梦
execute if score timeline time matches 1940 run title @a subtitle 测试
execute if score timeline time matches 1940 run camera @a set minecraft:free pos -265 80 155 facing -281 71 133
execute if score timeline time matches 1941 run camera @a set minecraft:free ease 14 linear pos -281 71 133 facing -281 71 133
# 7B 上 | 溟海
execute if score timeline time matches 2010 run title @a title §aNeptune exe1591
execute if score timeline time matches 2010 run title @a subtitle 测试
execute if score timeline time matches 2010 run camera @a set minecraft:free pos -102 7 175 facing -102 8 185
execute if score timeline time matches 2011 run camera @a set minecraft:free ease 7 linear pos -102 8 185 facing -102 8 185
# 7B 下 | 五色山
execute if score timeline time matches 2080 run title @a title §aEnder_Kafi
execute if score timeline time matches 2080 run title @a subtitle 测试
execute if score timeline time matches 2080 run camera @a set minecraft:free pos -75 80 -45 facing -97 68 -26
execute if score timeline time matches 2081 run camera @a set minecraft:free ease 28 linear pos -97 68 -26 facing -97 68 -26

# 8A 上 | 冰船小游戏
execute if score timeline time matches 2145 run title @a title §aAS2 王牌
execute if score timeline time matches 2145 run title @a subtitle 测试
execute if score timeline time matches 2145 run camera @a set minecraft:free pos -59 62 65 facing -59 62 122
execute if score timeline time matches 2146 run camera @a set minecraft:free ease 28 linear pos -59 62 122 facing -59 62 122
# 8A 下 | 坤坤忍者
execute if score timeline time matches 2215 run title @a title §aPumpkinJui 南瓜汁
execute if score timeline time matches 2215 run title @a subtitle 测试
execute if score timeline time matches 2215 run camera @a set minecraft:free pos -3 78 180 facing 9 75 167
execute if score timeline time matches 2216 run camera @a set minecraft:free ease 14 linear pos 9 75 167 facing 9 75 167
# 8B 上 | 南瓜密室
execute if score timeline time matches 2285 run title @a title §aCuzyXD
execute if score timeline time matches 2285 run title @a subtitle 测试
execute if score timeline time matches 2285 run camera @a set minecraft:free pos -232 23 -14 facing -221 23 -4
execute if score timeline time matches 2286 run camera @a set minecraft:free ease 14 linear pos -221 23 -4 facing -221 23 -4
# 8B 下 | 雪原
execute if score timeline time matches 2355 run title @a title §ao绿叶o
execute if score timeline time matches 2355 run title @a subtitle 测试
execute if score timeline time matches 2355 run camera @a set minecraft:free pos 25 63 95 facing 16 63 108
execute if score timeline time matches 2356 run camera @a set minecraft:free ease 14 linear pos 16 63 108 facing 16 63 108

# --- 主演 ---

# 9A 上
execute if score timeline time matches 2420 run title @a title §c田萍 - 量筒
execute if score timeline time matches 2420 run title @a subtitle 领衔主演
execute if score timeline time matches 2420 as @e[type=aw:npc,x=-265,y=31,z=66,r=1] at @s run function game/village/events/credits/camera_to_npc
# 9A 下
execute if score timeline time matches 2490 run title @a title §c王予凡 - 巴豆
execute if score timeline time matches 2490 run title @a subtitle 领衔主演
execute if score timeline time matches 2490 as @e[type=aw:npc,x=-264,y=39,z=163,r=1] at @s run function game/village/events/credits/camera_to_npc
# 9B 上
execute if score timeline time matches 2560 run title @a title §c邹鹭遥 - 鸽子
execute if score timeline time matches 2560 run title @a subtitle 领衔主演
execute if score timeline time matches 2560 as @e[type=aw:npc,x=-226,y=31,z=156,r=1] at @s run function game/village/events/credits/camera_to_npc
# 9B 下
execute if score timeline time matches 2630 run title @a title §c吕岩 - 绿叶
execute if score timeline time matches 2630 run title @a subtitle 领衔主演
execute if score timeline time matches 2630 as @e[type=aw:npc,x=-300,y=31,z=186,r=1] at @s run function game/village/events/credits/camera_to_npc

# 10A 上
execute if score timeline time matches 2695 run title @a title §c倪高志 - 南瓜汁
execute if score timeline time matches 2695 run title @a subtitle 领衔主演
execute if score timeline time matches 2695 as @e[type=aw:npc,x=-228,y=-15,z=182,r=1] at @s run function game/village/events/credits/camera_to_npc
# 10A 下
execute if score timeline time matches 2765 run title @a title §c胡雨 - 祉语
execute if score timeline time matches 2765 run title @a subtitle 主演
execute if score timeline time matches 2765 as @e[type=aw:npc,x=-219,y=31,z=128,r=1] at @s run function game/village/events/credits/camera_to_npc
# 10B 上
execute if score timeline time matches 2835 run title @a title §c陆千里 - 千里
execute if score timeline time matches 2835 run title @a subtitle 主演
execute if score timeline time matches 2835 as @e[type=aw:npc,x=-250,y=31,z=165,r=1] at @s run function game/village/events/credits/camera_to_npc
# 10B 下
execute if score timeline time matches 2905 run title @a title §c陈林夕 - 残梦
execute if score timeline time matches 2905 run title @a subtitle 主演
execute if score timeline time matches 2905 as @e[type=aw:npc,x=-195,y=31,z=110,r=1] at @s run function game/village/events/credits/camera_to_npc

# 11A 上
execute if score timeline time matches 2970 run title @a title §c孙嘉睿 - 幻光溢彩
execute if score timeline time matches 2970 run title @a subtitle 主演
execute if score timeline time matches 2970 as @e[type=aw:npc,x=-146,y=31,z=72,r=1] at @s run function game/village/events/credits/camera_to_npc
# 11A 下
execute if score timeline time matches 3040 run title @a title §c杨程 - ECheng
execute if score timeline time matches 3040 run title @a subtitle 主演
execute if score timeline time matches 3040 as @e[type=aw:npc,x=-272,y=57,z=153,r=1] at @s run function game/village/events/credits/camera_to_npc
# 11B 上
execute if score timeline time matches 3110 run title @a title §c伊云 - 一云
execute if score timeline time matches 3110 run title @a subtitle 主演
execute if score timeline time matches 3110 as @e[type=aw:npc,x=-284,y=31,z=76,r=1] at @s run function game/village/events/credits/camera_to_npc
# 11B 下
execute if score timeline time matches 3180 run title @a title §c雪狐狐 - 文雨
execute if score timeline time matches 3180 run title @a subtitle 特别出演
execute if score timeline time matches 3110 run summon aw:snow_fox -294 48 41 0 0
execute if score timeline time matches 3180 run camera @a set minecraft:free pos -292 49 41 facing -330 42 22
execute if score timeline time matches 3320 run kill @e[type=aw:snow_fox,x=-294,y=48,z=41,r=1]

# --- 结束 ---

execute if score timeline time matches 3240 run title @a title §1
execute if score timeline time matches 3240 run title @a subtitle §l§c感 §6谢 §e您 §a的 §3游 §9玩 §d！
execute if score timeline time matches 3240 run camera @a set minecraft:free pos -315 37 207 facing -307 33 193

execute if score timeline time matches 3320 run title @a title §1
execute if score timeline time matches 3320 run titleraw @a subtitle {"rawtext":[{"text":"§l以此作品纪念我们逝去的生存服 —— 量筒生存服 II 档"}]}
execute if score timeline time matches 3360 run camera @a fade time 0 10 0

execute if score timeline time matches 3460 run camera @a fade time 0 10 0
execute if score timeline time matches 3560 run title @a title §1
execute if score timeline time matches 3560 run title @a subtitle §lTHE END.
execute if score timeline time matches 3560 run camera @a fade time 0 7 3

execute if score timeline time matches 3700.. run function game/village/events/new_boat/start
