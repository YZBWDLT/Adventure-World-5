# ===== 开始制作人动画 =====

# 将玩家传送回筑梦镇，并限制玩家的活动
execute positioned -239 -9 177 facing -240 -9 177 run function game/village/enter
title @a clear
function lib/modify_states/timeline/enable_lock_camera
hud @a hide all

# 控制时间线流逝
scoreboard players set timeline active 64
function lib/modify_states/timeline/enable_time_lapse

# 播放音乐
scoreboard players set music data 158
function music/replay

# 控制相机
camera @a clear
camera @a fade time 0 10 0 color 0 0 0

# 令 NPC 面向一个特定的角度

## 田萍
execute as @e[type=aw:npc,x=-265,y=31,z=66,r=1] at @s run tp @s ~~~ 45 0
## 王予凡
execute as @e[type=aw:npc,x=-264,y=39,z=163,r=1] at @s run tp @s ~~~ 0 0
## 邹鹭遥
execute as @e[type=aw:npc,x=-226,y=31,z=156,r=1] at @s run tp @s ~~~ 0 0
## 吕岩
execute as @e[type=aw:npc,x=-300,y=31,z=186,r=1] at @s run tp @s ~~~ 180 0
## 倪高志
execute as @e[type=aw:npc,x=-228,y=-15,z=182,r=1] at @s run tp @s ~~~ 0 0
## 胡雨
execute as @e[type=aw:npc,x=-219,y=31,z=128,r=1] at @s run tp @s ~~~ 0 0
## 陆千里
execute as @e[type=aw:npc,x=-250,y=31,z=165,r=1] at @s run tp @s ~~~ 315 0
## 陈林夕
execute as @e[type=aw:npc,x=-195,y=31,z=110,r=1] at @s run tp @s ~~~ 90 0
## 孙嘉睿 | 添加一个临时常加载区域
execute as @e[type=aw:npc,x=-146,y=31,z=72,r=1] at @s run tp @s ~~~ 45 0
tickingarea add -146 31 72 -146 31 72 "temp"
## 杨程
execute as @e[type=aw:npc,x=-272,y=57,z=153,r=1] at @s run tp @s ~~~ 90 0
## 伊云
execute as @e[type=aw:npc,x=-284,y=31,z=76,r=1] at @s run tp @s ~~~ 315 0
