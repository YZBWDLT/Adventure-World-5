# ===== 只执行一次的命令（其中部分可重置） =====

#出现怪物1
execute if score sea_enemy1 data matches 0 if entity @a[x=-135,y=30,z=101,dx=30,dy=5,dz=18] run summon drowned -124 31 112
execute if score sea_enemy1 data matches 0 if entity @a[x=-135,y=30,z=101,dx=30,dy=5,dz=18] run summon drowned -130 31 107
execute if score sea_enemy1 data matches 0 if entity @a[x=-135,y=30,z=101,dx=30,dy=5,dz=18] run summon drowned -117 32 107 0 0 aw:baby
execute if score sea_enemy1 data matches 0 if entity @a[x=-135,y=30,z=101,dx=30,dy=5,dz=18] run summon drowned -119 33 102 0 0 aw:baby
execute if score sea_enemy1 data matches 0 if entity @a[x=-135,y=30,z=101,dx=30,dy=5,dz=18] run scoreboard players set sea_enemy1 data 1

#出现怪物2
execute if score sea_enemy2 data matches 0 if entity @a[x=-130,y=3,z=164,dx=64,dy=17,dz=26] run summon drowned -110 5 176
execute if score sea_enemy2 data matches 0 if entity @a[x=-130,y=3,z=164,dx=64,dy=17,dz=26] run summon drowned -94 5 176
execute if score sea_enemy2 data matches 0 if entity @a[x=-130,y=3,z=164,dx=64,dy=17,dz=26] run scoreboard players set sea_enemy2 data 1

#出现怪物3
execute if score sea_enemy3 data matches 0 if entity @a[x=-100,y=0,z=120,dx=34,dy=20,dz=30] run summon drowned -85 2 137 0 0 aw:baby
execute if score sea_enemy3 data matches 0 if entity @a[x=-100,y=0,z=120,dx=34,dy=20,dz=30] run scoreboard players set sea_enemy3 data 1