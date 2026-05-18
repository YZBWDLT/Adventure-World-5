# ===== 只执行一次的命令（其中部分可重置） =====

#拿到坐标笔记
execute if score 3_shaft_book data matches 0 if block -133 -57 97 chest if blocks -133 -57 97 -133 -57 97 -133 -59 97 all run tellraw @a {"rawtext":[{"text":"§e你拿到了坐标笔记，可以查询所有宝箱的位置了！"}]}
execute if score 3_shaft_book data matches 0 if block -133 -57 97 chest if blocks -133 -57 97 -133 -57 97 -133 -59 97 all run music play get_book 1 0 play_once
execute if score 3_shaft_book data matches 0 if block -133 -57 97 chest if blocks -133 -57 97 -133 -57 97 -133 -59 97 all run function lib/utils/music/queue
execute if score 3_shaft_book data matches 0 if block -133 -57 97 chest if blocks -133 -57 97 -133 -57 97 -133 -59 97 all run scoreboard players set 3_shaft_book data 1 

#拿到BOSS钥匙
execute if score 3_shaft_key data matches 0 if block -184 -41 57 chest if blocks -184 -41 57 -184 -41 57 -232 -9 177 all run tellraw @a {"rawtext":[{"text":"§e你拿到了BOSS钥匙，准备好最后的战斗吧！"}]}
execute if score 3_shaft_key data matches 0 if block -184 -41 57 chest if blocks -184 -41 57 -184 -41 57 -232 -9 177 all run music play get_item 1 0 play_once
execute if score 3_shaft_key data matches 0 if block -184 -41 57 chest if blocks -184 -41 57 -184 -41 57 -232 -9 177 all run function lib/utils/music/queue
execute if score 3_shaft_key data matches 0 if block -184 -41 57 chest if blocks -184 -41 57 -184 -41 57 -232 -9 177 all run scoreboard players set 3_shaft_key data 1 

#和吕岩对话
execute if score progress data matches 2 if score 3_shaft_meetly data matches 0 at @a[x=-164,y=-59,z=107,r=10] run tellraw @a {"rawtext":[{"text":"§f[吕岩]林乐你来了？这是我常来的矿井，但昨天这里的怪物开始激增。"}]}
execute if score progress data matches 2 if score 3_shaft_meetly data matches 0 at @a[x=-164,y=-59,z=107,r=10] run scoreboard players set 3_shaft_meetly data 1

#出现怪物1
execute if score 3_shaft_enemy1 data matches 0 if entity @a[x=-130,y=-59,z=110,dx=12,dy=5,dz=12] run summon zombie -122 -59 114 0 0 aw:equip
execute if score 3_shaft_enemy1 data matches 0 if entity @a[x=-130,y=-59,z=110,dx=12,dy=5,dz=12] run summon zombie -127 -59 117 0 0 aw:equip
execute if score 3_shaft_enemy1 data matches 0 if entity @a[x=-130,y=-59,z=110,dx=12,dy=5,dz=12] run summon zombie -120 -59 119 0 0 aw:equip
execute if score 3_shaft_enemy1 data matches 0 if entity @a[x=-130,y=-59,z=110,dx=12,dy=5,dz=12] run scoreboard players set 3_shaft_enemy1 data 1

#出现怪物2
execute if score 3_shaft_enemy2 data matches 0 if entity @a[x=-193,y=-41,z=95,dx=18,dy=5,dz=6] run summon zombie -184 -41 95 0 0 aw:equip
execute if score 3_shaft_enemy2 data matches 0 if entity @a[x=-193,y=-41,z=95,dx=18,dy=5,dz=6] run summon skeleton -192 -40 86
execute if score 3_shaft_enemy2 data matches 0 if entity @a[x=-193,y=-41,z=95,dx=18,dy=5,dz=6] run summon skeleton -181 -41 81
execute if score 3_shaft_enemy2 data matches 0 if entity @a[x=-193,y=-41,z=95,dx=18,dy=5,dz=6] run summon skeleton -190 -40 80
execute if score 3_shaft_enemy2 data matches 0 if entity @a[x=-193,y=-41,z=95,dx=18,dy=5,dz=6] run scoreboard players set 3_shaft_enemy2 data 1

#出现怪物3
execute if score 3_shaft_enemy3 data matches 0 if entity @a[x=-118,y=-30,z=43,dx=8,dy=2,dz=8] run summon skeleton -114 -30 60
execute if score 3_shaft_enemy3 data matches 0 if entity @a[x=-118,y=-30,z=43,dx=8,dy=2,dz=8] run summon skeleton -101 -30 47
execute if score 3_shaft_enemy3 data matches 0 if entity @a[x=-118,y=-30,z=43,dx=8,dy=2,dz=8] run summon skeleton -114 -30 34
execute if score 3_shaft_enemy3 data matches 0 if entity @a[x=-118,y=-30,z=43,dx=8,dy=2,dz=8] run scoreboard players set 3_shaft_enemy3 data 1

#破解谜题
execute if score 3_shaft_2 data matches 0 if block -95 -34 128 aw:dig1 if blocks -95 -38 128 -95 -34 130 -93 -38 128 all run tellraw @a {"rawtext":[{"text":"§e你天才般地破解了数学难题，箱子上的障碍清除了！"}]}
execute if score 3_shaft_2 data matches 0 if block -95 -34 128 aw:dig1 if blocks -95 -38 128 -95 -34 130 -93 -38 128 all run music play solve_puzzle 1 0 play_once
execute if score 3_shaft_2 data matches 0 if block -95 -34 128 aw:dig1 if blocks -95 -38 128 -95 -34 130 -93 -38 128 all run function lib/utils/music/queue
execute if score 3_shaft_2 data matches 0 if block -95 -34 128 aw:dig1 if blocks -95 -38 128 -95 -34 130 -93 -38 128 all run setblock -95 -40 119 air
execute if score 3_shaft_2 data matches 0 if block -95 -34 128 aw:dig1 if blocks -95 -38 128 -95 -34 130 -93 -38 128 all run scoreboard players set 3_shaft_2 data 1

#从BOSS战离开（第一次离开时）
execute if score 3_shaft_boss data matches 1 if entity @a[x=-84.5,y=-45,z=47.5,r=1] run spawnpoint @a -164 22 66
execute if score 3_shaft_boss data matches 1 if entity @a[x=-84.5,y=-45,z=47.5,r=1] run setworldspawn -164 22 66
execute if score 3_shaft_boss data matches 1 if entity @a[x=-84.5,y=-45,z=47.5,r=1] run scoreboard players set position data 4
execute if score 3_shaft_boss data matches 1 if entity @a[x=-84.5,y=-45,z=47.5,r=1] run scoreboard players set progress data 3
execute if score 3_shaft_boss data matches 1 if entity @a[x=-84.5,y=-45,z=47.5,r=1] run scoreboard players set timeline active 19
execute if score 3_shaft_boss data matches 1 if entity @a[x=-84.5,y=-45,z=47.5,r=1] run function lib/modify_data/states/timeline/enable_time_lapse
execute if score 3_shaft_boss data matches 1 if entity @a[x=-84.5,y=-45,z=47.5,r=1] run function lib/utils/start_dialogue
execute if score 3_shaft_boss data matches 1 if entity @a[x=-84.5,y=-45,z=47.5,r=1] run scoreboard players set 3_shaft_boss data 2