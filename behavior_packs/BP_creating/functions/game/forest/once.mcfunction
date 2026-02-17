# ===== 只执行一次的命令（其中部分可重置） =====

#出现怪物1
execute if score forest_enemy1 data matches 0 if entity @a[x=-306,y=31,z=-53,dx=17,dy=2,dz=17] run summon cave_spider -295 31 -48
execute if score forest_enemy1 data matches 0 if entity @a[x=-306,y=31,z=-53,dx=17,dy=2,dz=17] run summon zombie -292 31 -40
execute if score forest_enemy1 data matches 0 if entity @a[x=-306,y=31,z=-53,dx=17,dy=2,dz=17] run summon skeleton -300 31 -40
execute if score forest_enemy1 data matches 0 if entity @a[x=-306,y=31,z=-53,dx=17,dy=2,dz=17] run scoreboard players set forest_enemy1 data 1

#出现怪物2
execute if score forest_enemy2 data matches 0 if entity @a[x=-319,y=28,z=-9,dx=19,dy=5,dz=8] run summon cave_spider -313 32 -3
execute if score forest_enemy2 data matches 0 if entity @a[x=-319,y=28,z=-9,dx=19,dy=5,dz=8] run summon cave_spider -307 32 -3
execute if score forest_enemy2 data matches 0 if entity @a[x=-319,y=28,z=-9,dx=19,dy=5,dz=8] run scoreboard players set forest_enemy2 data 1

#出现怪物3
execute if score forest_enemy3 data matches 0 if entity @a[x=-264,y=21,z=-12,dx=3,dy=2,dz=8] run summon zombie -261 21 -10 90 0 aw:baby
execute if score forest_enemy3 data matches 0 if entity @a[x=-264,y=21,z=-12,dx=3,dy=2,dz=8] run summon zombie -261 21 -6 90 0 aw:baby
execute if score forest_enemy3 data matches 0 if entity @a[x=-264,y=21,z=-12,dx=3,dy=2,dz=8] run scoreboard players set forest_enemy3 data 1