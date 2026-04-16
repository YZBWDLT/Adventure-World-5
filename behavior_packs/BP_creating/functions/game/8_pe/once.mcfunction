# ===== 只执行一次的命令（其中部分可重置） =====

#拿到坐标笔记
execute if score 8_pe_book data matches 0 if block -238 -55 48 chest if blocks -238 -55 48 -238 -55 48 -232 -9 179 all run tellraw @a {"rawtext":[{"text":"§e你拿到了坐标笔记，可以查询所有宝箱的位置了！"}]}
execute if score 8_pe_book data matches 0 if block -238 -55 48 chest if blocks -238 -55 48 -238 -55 48 -232 -9 179 all run music play get_book 1 0 play_once
execute if score 8_pe_book data matches 0 if block -238 -55 48 chest if blocks -238 -55 48 -238 -55 48 -232 -9 179 all run function lib/utils/music/queue
execute if score 8_pe_book data matches 0 if block -238 -55 48 chest if blocks -238 -55 48 -238 -55 48 -232 -9 179 all run scoreboard players set 8_pe_book data 1 

#出现怪物1
execute if score 8_pe_enemy1 data matches 0 if entity @a[x=-217,y=-55,z=13,dx=14,dy=5,dz=22] run summon zombie -212 -54 29 0 0 aw:baby
execute if score 8_pe_enemy1 data matches 0 if entity @a[x=-217,y=-55,z=13,dx=14,dy=5,dz=22] run summon zombie -215 -55 24 0 0 aw:equip_baby
execute if score 8_pe_enemy1 data matches 0 if entity @a[x=-217,y=-55,z=13,dx=14,dy=5,dz=22] run summon zombie -208 -54 25 0 0 aw:baby
execute if score 8_pe_enemy1 data matches 0 if entity @a[x=-217,y=-55,z=13,dx=14,dy=5,dz=22] run summon zombie -203 -55 25 0 0 aw:equip_baby
execute if score 8_pe_enemy1 data matches 0 if entity @a[x=-217,y=-55,z=13,dx=14,dy=5,dz=22] run summon zombie -206 -55 20 0 0 aw:baby
execute if score 8_pe_enemy1 data matches 0 if entity @a[x=-217,y=-55,z=13,dx=14,dy=5,dz=22] run scoreboard players set 8_pe_enemy1 data 1

#出现怪物2
execute if score 8_pe_enemy2 data matches 0 if entity @a[x=-233,y=-55,z=14,dx=14,dy=5,dz=13] run summon skeleton -230 -55 24 0 0 aw:equip
execute if score 8_pe_enemy2 data matches 0 if entity @a[x=-233,y=-55,z=14,dx=14,dy=5,dz=13] run summon skeleton -226 -55 20 0 0 aw:equip
execute if score 8_pe_enemy2 data matches 0 if entity @a[x=-233,y=-55,z=14,dx=14,dy=5,dz=13] run summon skeleton -222 -55 20 0 0 aw:equip
execute if score 8_pe_enemy2 data matches 0 if entity @a[x=-233,y=-55,z=14,dx=14,dy=5,dz=13] run summon skeleton -230 -55 16 0 0 aw:equip
execute if score 8_pe_enemy2 data matches 0 if entity @a[x=-233,y=-55,z=14,dx=14,dy=5,dz=13] run summon skeleton -226 -55 16 0 0 aw:equip
execute if score 8_pe_enemy2 data matches 0 if entity @a[x=-233,y=-55,z=14,dx=14,dy=5,dz=13] run scoreboard players set 8_pe_enemy2 data 1

#出现怪物3
execute if score 8_pe_enemy3 data matches 0 if entity @a[x=-225,y=-55,z=37,dx=22,dy=5,dz=6] run summon chicken -212 -55 44 0 0 aw:chicken_jockey
execute if score 8_pe_enemy3 data matches 0 if entity @a[x=-225,y=-55,z=37,dx=22,dy=5,dz=6] run summon chicken -213 -55 38 0 0 aw:chicken_jockey
execute if score 8_pe_enemy3 data matches 0 if entity @a[x=-225,y=-55,z=37,dx=22,dy=5,dz=6] run summon skeleton -215 -55 43 0 0 aw:equip
execute if score 8_pe_enemy3 data matches 0 if entity @a[x=-225,y=-55,z=37,dx=22,dy=5,dz=6] run summon skeleton -215 -55 39 0 0 aw:equip
execute if score 8_pe_enemy3 data matches 0 if entity @a[x=-225,y=-55,z=37,dx=22,dy=5,dz=6] run summon skeleton -222 -55 40 0 0 aw:equip
execute if score 8_pe_enemy3 data matches 0 if entity @a[x=-225,y=-55,z=37,dx=22,dy=5,dz=6] run scoreboard players set 8_pe_enemy3 data 1

#放置方块
execute if block -246 -24 35 aw:old_diamond_block unless block -246 -24 36 air run setblock -246 -24 35 aw:old_obsidian
execute if block -230 -24 35 aw:old_emerald_block unless block -230 -24 36 air run setblock -230 -24 35 aw:old_obsidian
execute if block -241 -24 26 aw:old_diamond_block unless block -242 -24 26 air run setblock -241 -24 26 aw:old_obsidian
execute if block -219 -24 30 aw:old_emerald_block unless block -218 -24 30 air run setblock -219 -24 30 aw:old_obsidian
execute if block -212 -17 7 aw:old_diamond_block unless block -213 -17 7 air run setblock -212 -17 7 aw:old_obsidian
execute if block -207 -25 -8 aw:old_emerald_block unless block -206 -25 -8 air run setblock -207 -25 -8 aw:old_obsidian
execute if block -217 -24 59 aw:old_diamond_block unless block -218 -24 59 air run setblock -217 -24 59 aw:old_obsidian
execute if block -243 -24 -5 aw:old_emerald_block unless block -243 -24 -4 air run setblock -243 -24 -5 aw:old_obsidian

#完成反应堆搭建
execute if score 8_pe_boss data matches 1 if block -226 -54 -24 aw:nether_reactor_core if blocks -227 -59 -25 -225 -57 -23 -227 -55 -25 all run function lib/modify_states/timeline/enable_time_lapse
execute if score 8_pe_boss data matches 1 if block -226 -54 -24 aw:nether_reactor_core if blocks -227 -59 -25 -225 -57 -23 -227 -55 -25 all run scoreboard players set timeline active 53
execute if score 8_pe_boss data matches 1 if block -226 -54 -24 aw:nether_reactor_core if blocks -227 -59 -25 -225 -57 -23 -227 -55 -25 all run scoreboard players set 8_pe_boss data 2

#从BOSS战离开（第一次离开时）
execute if score 8_pe_boss data matches 2 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run spawnpoint @a -78 31 23
execute if score 8_pe_boss data matches 2 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run setworldspawn -78 31 23
execute if score 8_pe_boss data matches 2 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run scoreboard players set position data 10
execute if score 8_pe_boss data matches 2 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run scoreboard players set refreshArea data 0
execute if score 8_pe_boss data matches 2 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run scoreboard players set timeline active 57
execute if score 8_pe_boss data matches 2 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score 8_pe_boss data matches 2 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run function lib/utils/start_dialogue
execute if score 8_pe_boss data matches 2 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run scoreboard players set 8_pe_boss data 3