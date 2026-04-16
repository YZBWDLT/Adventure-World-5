# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-136.5,y=16,z=-9.5,r=1] run function game/badland/refresh
execute if score refreshArea data matches 0 if entity @a[x=-98.5,y=24,z=17.5,r=1] run function game/badland/refresh

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-129.5,y=34.5,z=-61.5,r=1.5] run tp @a -130 34 -62 facing -129 34 -62
execute if entity @e[type=aw:wind_pearl,x=-112.5,y=76.5,z=-53.5,r=1.5] run tp @a -113 75 -54 facing -113 75 -55
execute if entity @e[type=aw:wind_pearl,x=-85.5,y=50.5,z=-49.5,r=1.5] run tp @a -86 50 -50 facing -86 50 -49
execute if entity @e[type=aw:wind_pearl,x=-96.5,y=74.5,z=-52.5,r=1.5] run tp @a -97 74 -53 facing -96 74 -53
execute if entity @e[type=aw:wind_pearl,x=-95.5,y=71.5,z=-18.5,r=1.5] run tp @a -96 70 -19 facing -96 70 -20
execute if block -83 64 -26 light_blue_glazed_terracotta if entity @e[type=aw:wind_pearl,x=-82.5,y=64.5,z=-26.5,r=1.5] run tp @a -83 63 -27 facing -83 63 -26
execute if block -83 64 -26 light_blue_glazed_terracotta if entity @e[type=aw:wind_pearl,x=-82.5,y=64.5,z=-24.5,r=1.5] run tp @a -83 63 -25 facing -83 63 -26

#前往买卖村（地下）
execute if entity @a[x=-138.5,y=16,z=-9.5,r=1] run title @a title §o§6买卖村
execute if entity @a[x=-138.5,y=16,z=-9.5,r=1] run spawnpoint @a -143 16 -10
execute if entity @a[x=-138.5,y=16,z=-9.5,r=1] run setworldspawn -143 16 -10
execute if entity @a[x=-138.5,y=16,z=-9.5,r=1] run scoreboard players set position data 4
execute if entity @a[x=-138.5,y=16,z=-9.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-138.5,y=16,z=-9.5,r=1] run tp @a -143 16 -10 facing -144 16 -10

#前往旭日沙漠（捷径）
execute if entity @a[x=-98.5,y=24,z=19.5,r=1] run title @a title §l§o§6旭日沙漠
execute if entity @a[x=-98.5,y=24,z=19.5,r=1] run spawnpoint @a -99 24 23
execute if entity @a[x=-98.5,y=24,z=19.5,r=1] run setworldspawn -99 24 23
execute if entity @a[x=-98.5,y=24,z=19.5,r=1] run scoreboard players set position data 4
execute if entity @a[x=-98.5,y=24,z=19.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-98.5,y=24,z=19.5,r=1] run tp @a -99 24 23 facing -99 24 24

#怪物控制开关门
execute if block -99 22 -40 aw:dig8 if entity @e[family=monster,x=-101,y=22,z=-46,dx=5,dy=3,dz=5] run fill -99 22 -40 -99 23 -40 obsidian
execute if block -99 22 -40 obsidian unless entity @e[family=monster,x=-101,y=22,z=-46,dx=5,dy=3,dz=5] run fill -99 22 -40 -99 23 -40 aw:dig8

#南瓜显示-黑色带釉陶瓦
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -79 52 -16 black_glazed_terracotta run setblock -79 52 -16 black_glazed_terracotta
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -79 52 -16 black_glazed_terracotta run setblock -79 52 -16 air

#使用木材、石料、彩岩制作护盾药水
execute positioned -116 43 -37 if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p run function game/badland/events/get_shield_potion_1
execute positioned -116 43 -39 if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p run function game/badland/events/get_shield_potion_2
execute positioned -116 43 -41 if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p run function game/badland/events/get_shield_potion_3

#邹鹭遥留言1
execute if block -109 43 -39 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]我在这里研究的护盾药水可以让你获得额外的心，而且能保持超长时间，但需要建筑材料制作。"}]}
execute if block -109 43 -39 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -109 43 -39 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#邹鹭遥留言2
execute if block -109 43 -37 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]不用担心材料消耗。吕岩告诉我，岛上所有箱子加起来材料正好能搭所有建筑，小游戏获得的材料都是额外的。"}]}
execute if block -109 43 -37 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -109 43 -37 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#领取明信片
execute positioned -94 80 -47 if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p run function game/badland/events/get_postcard

#五色山水流洞穴音乐
execute if score music data matches 141 if entity @a[x=-97,y=23,z=-43,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-97,y=23,z=-43,dx=2,dy=2,dz=2] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-97,y=23,z=-43,dx=2,dy=2,dz=2] run function lib/utils/music/replay

execute if score music data matches 2 if entity @a[x=-95,y=25,z=-39,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-95,y=25,z=-39,dx=2,dy=2,dz=2] run scoreboard players set music data 141
execute if score repmusic data matches 1 if entity @a[x=-95,y=25,z=-39,dx=2,dy=2,dz=2] run function lib/utils/music/replay

#五色山药店通道音乐
execute if score music data matches 141 if entity @a[x=-113,y=24,z=-47,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-113,y=24,z=-47,dx=2,dy=2,dz=2] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-113,y=24,z=-47,dx=2,dy=2,dz=2] run function lib/utils/music/replay

execute if score music data matches 141 if entity @a[x=-108,y=37,z=-45,dx=2,dy=1,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-108,y=37,z=-45,dx=2,dy=1,dz=2] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-108,y=37,z=-45,dx=2,dy=1,dz=2] run function lib/utils/music/replay

execute if score music data matches 3 if entity @a[x=-113,y=24,z=-52,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-113,y=24,z=-52,dx=2,dy=2,dz=2] run scoreboard players set music data 141
execute if score repmusic data matches 1 if entity @a[x=-113,y=24,z=-52,dx=2,dy=2,dz=2] run function lib/utils/music/replay

execute if score music data matches 3 if entity @a[x=-111,y=42,z=-43,dx=4,dy=1,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-111,y=42,z=-43,dx=4,dy=1,dz=2] run scoreboard players set music data 141
execute if score repmusic data matches 1 if entity @a[x=-111,y=42,z=-43,dx=4,dy=1,dz=2] run function lib/utils/music/replay