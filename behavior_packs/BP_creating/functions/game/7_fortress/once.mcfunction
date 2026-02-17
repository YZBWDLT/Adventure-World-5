# ===== 只执行一次的命令（其中部分可重置） =====

#拿到坐标笔记
execute if score 7_fortress_book data matches 0 if block -286 -49 60 chest if blocks -286 -49 60 -286 -49 60 -286 -51 60 all run tellraw @a {"rawtext":[{"text":"§e你拿到了坐标笔记，可以查询所有宝箱的位置了！"}]}
execute if score 7_fortress_book data matches 0 if block -286 -49 60 chest if blocks -286 -49 60 -286 -49 60 -286 -51 60 all run music play get_book 1 0 play_once
execute if score 7_fortress_book data matches 0 if block -286 -49 60 chest if blocks -286 -49 60 -286 -49 60 -286 -51 60 all run function music/play
execute if score 7_fortress_book data matches 0 if block -286 -49 60 chest if blocks -286 -49 60 -286 -49 60 -286 -51 60 all run scoreboard players set 7_fortress_book data 1 

#拿到BOSS钥匙
execute if score 7_fortress_key data matches 0 if block -270 -49 74 chest if blocks -270 -49 74 -270 -49 74 -234 -9 179 all run tellraw @a {"rawtext":[{"text":"§e你拿到了BOSS钥匙，准备好最后的战斗吧！"}]}
execute if score 7_fortress_key data matches 0 if block -270 -49 74 chest if blocks -270 -49 74 -270 -49 74 -234 -9 179 all run music play get_item 1 0 play_once
execute if score 7_fortress_key data matches 0 if block -270 -49 74 chest if blocks -270 -49 74 -270 -49 74 -234 -9 179 all run function music/play
execute if score 7_fortress_key data matches 0 if block -270 -49 74 chest if blocks -270 -49 74 -270 -49 74 -234 -9 179 all run scoreboard players set 7_fortress_key data 1 

#出现怪物1
execute if score 7_fortress_enemy1 data matches 0 if entity @a[x=-306,y=-49,z=49,dx=15,dy=3,dz=23] run summon magma_cube -299 -49 56 0 0 spawn_small
execute if score 7_fortress_enemy1 data matches 0 if entity @a[x=-306,y=-49,z=49,dx=15,dy=3,dz=23] run summon magma_cube -299 -49 64 0 0 spawn_small
execute if score 7_fortress_enemy1 data matches 0 if entity @a[x=-306,y=-49,z=49,dx=15,dy=3,dz=23] run summon magma_cube -293 -49 56 0 0 spawn_small
execute if score 7_fortress_enemy1 data matches 0 if entity @a[x=-306,y=-49,z=49,dx=15,dy=3,dz=23] run summon magma_cube -293 -49 64 0 0 spawn_small
execute if score 7_fortress_enemy1 data matches 0 if entity @a[x=-306,y=-49,z=49,dx=15,dy=3,dz=23] run scoreboard players set 7_fortress_enemy1 data 1

#出现怪物2
execute if score 7_fortress_enemy2 data matches 0 if entity @a[x=-314,y=-49,z=75,dx=14,dy=2,dz=27] run summon magma_cube -311 -49 84 0 0 spawn_medium
execute if score 7_fortress_enemy2 data matches 0 if entity @a[x=-314,y=-49,z=75,dx=14,dy=2,dz=27] run summon magma_cube -303 -49 84 0 0 spawn_medium
execute if score 7_fortress_enemy2 data matches 0 if entity @a[x=-314,y=-49,z=75,dx=14,dy=2,dz=27] run scoreboard players set 7_fortress_enemy2 data 1

#出现怪物3
execute if score 7_fortress_enemy3 data matches 0 if entity @a[x=-311,y=-40,z=55,dx=21,dy=3,dz=10] run summon magma_cube -301 -39 60 0 0 spawn_large
execute if score 7_fortress_enemy3 data matches 0 if entity @a[x=-311,y=-40,z=55,dx=21,dy=3,dz=10] run scoreboard players set 7_fortress_enemy3 data 1

#出现怪物4
execute if score 7_fortress_enemy4 data matches 0 if entity @a[x=-318,y=-31,z=26,dx=27,dy=4,dz=29] run summon magma_cube -295 -30 38 0 0 spawn_small
execute if score 7_fortress_enemy4 data matches 0 if entity @a[x=-318,y=-31,z=26,dx=27,dy=4,dz=29] run summon magma_cube -304 -30 43 0 0 spawn_large
execute if score 7_fortress_enemy4 data matches 0 if entity @a[x=-318,y=-31,z=26,dx=27,dy=4,dz=29] run summon magma_cube -314 -30 50 0 0 spawn_medium
execute if score 7_fortress_enemy4 data matches 0 if entity @a[x=-318,y=-31,z=26,dx=27,dy=4,dz=29] run summon magma_cube -310 -30 30 0 0 spawn_small
execute if score 7_fortress_enemy4 data matches 0 if entity @a[x=-318,y=-31,z=26,dx=27,dy=4,dz=29] run scoreboard players set 7_fortress_enemy4 data 1

#点火开门
execute if block -304 -40 34 shroomlight if blocks -308 -40 27 -308 -39 27 -308 -22 27 all run function game/7_fortress/events/campfire_fired_1
execute if block -297 -40 31 shroomlight if blocks -302 -40 37 -291 -39 48 -302 -22 37 all run function game/7_fortress/events/campfire_fired_2

#把田萍和王予凡救出来
execute if score 7_fortress_help data matches 0 if entity @a[x=-268,y=-49,z=59,dx=2,dy=3,dz=2] run function lib/modify_states/timeline/enable_time_lapse
execute if score 7_fortress_help data matches 0 if entity @a[x=-268,y=-49,z=59,dx=2,dy=3,dz=2] run function lib/modify_states/timeline/enable_lock_camera
execute if score 7_fortress_help data matches 0 if entity @a[x=-268,y=-49,z=59,dx=2,dy=3,dz=2] run scoreboard players set timeline active 44
execute if score 7_fortress_help data matches 0 if entity @a[x=-268,y=-49,z=59,dx=2,dy=3,dz=2] run scoreboard players set 7_fortress_help data 1

#从BOSS战离开（第一次离开时）
execute if score 7_fortress_boss data matches 1 if entity @a[x=-225.5,y=-49,z=82.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score 7_fortress_boss data matches 1 if entity @a[x=-225.5,y=-49,z=82.5,r=1] run function lib/modify_states/timeline/enable_lock_camera
execute if score 7_fortress_boss data matches 1 if entity @a[x=-225.5,y=-49,z=82.5,r=1] run scoreboard players set timeline active 50
execute if score 7_fortress_boss data matches 1 if entity @a[x=-225.5,y=-49,z=82.5,r=1] run spawnpoint @a -240 31 139
execute if score 7_fortress_boss data matches 1 if entity @a[x=-225.5,y=-49,z=82.5,r=1] run setworldspawn -240 31 139
execute if score 7_fortress_boss data matches 1 if entity @a[x=-225.5,y=-49,z=82.5,r=1] run scoreboard players set position data 1
execute if score 7_fortress_boss data matches 1 if entity @a[x=-225.5,y=-49,z=82.5,r=1] run scoreboard players set refresh data 0
execute if score 7_fortress_boss data matches 1 if entity @a[x=-225.5,y=-49,z=82.5,r=1] run scoreboard players set 7_fortress_boss data 2