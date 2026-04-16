# ===== 只执行一次的命令（其中部分可重置） =====

#拿到坐标笔记
execute if score 5_mansion_book data matches 0 if block -279 -23 11 chest if blocks -279 -23 11 -279 -23 11 -279 -25 11 all run tellraw @a {"rawtext":[{"text":"§e你拿到了坐标笔记，可以查询所有宝箱的位置了！"}]}
execute if score 5_mansion_book data matches 0 if block -279 -23 11 chest if blocks -279 -23 11 -279 -23 11 -279 -25 11 all run music play get_book 1 0 play_once
execute if score 5_mansion_book data matches 0 if block -279 -23 11 chest if blocks -279 -23 11 -279 -23 11 -279 -25 11 all run function music/play
execute if score 5_mansion_book data matches 0 if block -279 -23 11 chest if blocks -279 -23 11 -279 -23 11 -279 -25 11 all run scoreboard players set 5_mansion_book data 1 

#拿到BOSS钥匙
execute if score 5_mansion_key data matches 0 if block -279 -24 -34 chest if blocks -279 -24 -34 -279 -24 -34 -232 -9 179 all run tellraw @a {"rawtext":[{"text":"§e你拿到了BOSS钥匙，准备好最后的战斗吧！"}]}
execute if score 5_mansion_key data matches 0 if block -279 -24 -34 chest if blocks -279 -24 -34 -279 -24 -34 -232 -9 179 all run music play get_item 1 0 play_once
execute if score 5_mansion_key data matches 0 if block -279 -24 -34 chest if blocks -279 -24 -34 -279 -24 -34 -232 -9 179 all run function music/play
execute if score 5_mansion_key data matches 0 if block -279 -24 -34 chest if blocks -279 -24 -34 -279 -24 -34 -232 -9 179 all run scoreboard players set 5_mansion_key data 1 

#出现怪物1
execute if score 5_mansion_enemy1 data matches 0 if entity @a[x=-286,y=-24,z=4,dx=14,dy=7,dz=14] run summon zombie -275 -24 15 0 0 aw:baby
execute if score 5_mansion_enemy1 data matches 0 if entity @a[x=-286,y=-24,z=4,dx=14,dy=7,dz=14] run summon cave_spider -283 -24 15
execute if score 5_mansion_enemy1 data matches 0 if entity @a[x=-286,y=-24,z=4,dx=14,dy=7,dz=14] run summon cave_spider -275 -24 7
execute if score 5_mansion_enemy1 data matches 0 if entity @a[x=-286,y=-24,z=4,dx=14,dy=7,dz=14] run summon zombie -283 -24 7 0 0 aw:equip_baby
execute if score 5_mansion_enemy1 data matches 0 if entity @a[x=-286,y=-24,z=4,dx=14,dy=7,dz=14] run scoreboard players set 5_mansion_enemy1 data 1
execute if entity @e[family=monster,x=-286,y=-24,z=4,dx=14,dy=7,dz=14] if block -279 -22 11 air run setblock -279 -22 11 stone
execute unless entity @e[family=monster,x=-286,y=-24,z=4,dx=14,dy=7,dz=14] if block -279 -22 11 stone run setblock -279 -22 11 air

#出现怪物2
execute if score 5_mansion_enemy2 data matches 0 if entity @a[x=-318,y=-24,z=-12,dx=14,dy=7,dz=14] run summon skeleton -305 -24 -9
execute if score 5_mansion_enemy2 data matches 0 if entity @a[x=-318,y=-24,z=-12,dx=14,dy=7,dz=14] run summon skeleton -313 -24 1
execute if score 5_mansion_enemy2 data matches 0 if entity @a[x=-318,y=-24,z=-12,dx=14,dy=7,dz=14] run summon skeleton -311 -24 -10
execute if score 5_mansion_enemy2 data matches 0 if entity @a[x=-318,y=-24,z=-12,dx=14,dy=7,dz=14] run summon skeleton -316 -24 -10
execute if score 5_mansion_enemy2 data matches 0 if entity @a[x=-318,y=-24,z=-12,dx=14,dy=7,dz=14] run scoreboard players set 5_mansion_enemy2 data 1
execute if entity @e[family=monster,x=-318,y=-24,z=-12,dx=14,dy=7,dz=14] if block -318 -22 -1 air run setblock -318 -22 -1 stone
execute unless entity @e[family=monster,x=-318,y=-24,z=-12,dx=14,dy=7,dz=14] if block -318 -22 -1 stone run setblock -318 -22 -1 air

#出现怪物3
execute if score 5_mansion_enemy3 data matches 0 if entity @a[x=-302,y=-49,z=-12,dx=14,dy=7,dz=14] run summon zombie -294 -49 -3 0 0 aw:baby
execute if score 5_mansion_enemy3 data matches 0 if entity @a[x=-302,y=-49,z=-12,dx=14,dy=7,dz=14] run summon zombie -296 -49 -5 0 0 aw:baby
execute if score 5_mansion_enemy3 data matches 0 if entity @a[x=-302,y=-49,z=-12,dx=14,dy=7,dz=14] run summon cave_spider -290 -49 2 0 0 aw:spider_jockey
execute if score 5_mansion_enemy3 data matches 0 if entity @a[x=-302,y=-49,z=-12,dx=14,dy=7,dz=14] run summon cave_spider -301 -49 -9 0 0 aw:spider_jockey
execute if score 5_mansion_enemy3 data matches 0 if entity @a[x=-302,y=-49,z=-12,dx=14,dy=7,dz=14] run scoreboard players set 5_mansion_enemy3 data 1

#出现怪物4
execute if score 5_mansion_enemy4 data matches 0 if entity @a[x=-286,y=-24,z=-28,dx=14,dy=7,dz=14] run summon chicken -281 -23 -19 0 0 aw:chicken_jockey
execute if score 5_mansion_enemy4 data matches 0 if entity @a[x=-286,y=-24,z=-28,dx=14,dy=7,dz=14] run summon zombie -284 -24 -16 0 0 aw:equip
execute if score 5_mansion_enemy4 data matches 0 if entity @a[x=-286,y=-24,z=-28,dx=14,dy=7,dz=14] run summon zombie -274 -24 -26 0 0 aw:equip
execute if score 5_mansion_enemy4 data matches 0 if entity @a[x=-286,y=-24,z=-28,dx=14,dy=7,dz=14] run summon zombie -284 -24 -26 0 0 aw:equip
execute if score 5_mansion_enemy4 data matches 0 if entity @a[x=-286,y=-24,z=-28,dx=14,dy=7,dz=14] run summon skeleton -279 -18 -14 0 0 aw:equip
execute if score 5_mansion_enemy4 data matches 0 if entity @a[x=-286,y=-24,z=-28,dx=14,dy=7,dz=14] run summon skeleton -279 -18 -28 0 0 aw:equip
execute if score 5_mansion_enemy4 data matches 0 if entity @a[x=-286,y=-24,z=-28,dx=14,dy=7,dz=14] run summon skeleton -272 -18 -21 0 0 aw:equip
execute if score 5_mansion_enemy4 data matches 0 if entity @a[x=-286,y=-24,z=-28,dx=14,dy=7,dz=14] run scoreboard players set 5_mansion_enemy4 data 1
execute if entity @e[family=monster,x=-286,y=-24,z=-28,dx=14,dy=9,dz=14] unless entity @a[x=-286,y=-24,z=-44,dx=14,dy=7,dz=14] if block -279 -24 -29 air run fill -279 -24 -29 -279 -23 -29 stone
execute unless entity @e[family=monster,x=-286,y=-24,z=-28,dx=14,dy=9,dz=14] if block -279 -24 -29 stone run fill -279 -24 -29 -279 -23 -29 air

#进入通关结算场地，视为通关
execute if score 5_mansion_boss data matches 1 if entity @a[x=-308,y=-39,z=-15,dx=6,dy=6,dz=6] run function lib/modify_states/timeline/disable 
execute if score 5_mansion_boss data matches 1 if entity @a[x=-308,y=-39,z=-15,dx=6,dy=6,dz=6] run scoreboard players set repmark data 0
execute if score 5_mansion_boss data matches 1 if entity @a[x=-308,y=-39,z=-15,dx=6,dy=6,dz=6] run scoreboard players set 5_mansion_boss data 2

#从BOSS战离开（第一次离开时）
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run function lib/utils/start_dialogue
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run scoreboard players set timeline active 46
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run spawnpoint @a -299 31 10
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run setworldspawn -299 31 10
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run scoreboard players set position data 7
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run scoreboard players set refreshArea data 0
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run scoreboard players set music data 84
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run function music/replay
execute if score 5_mansion_boss data matches 2 if entity @a[x=-304.5,y=-39,z=-8.5,r=1] run scoreboard players set 5_mansion_boss data 3