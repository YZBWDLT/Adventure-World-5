# ===== 烈火生存BOSS战 =====
#场地内会不断刷新岩浆怪，此处的岩浆怪经过的地方会留下火焰
#坚持足够的时间获胜

#岩浆怪走过的地方有时留下火焰
execute if score timeline time matches 30..35 at @e[type=magma_cube,x=-265,y=-50,z=66,dx=32,dy=8,dz=32] run setblock ~~~ fire
execute if score timeline time matches 60..65 at @e[type=magma_cube,x=-265,y=-50,z=66,dx=32,dy=8,dz=32] run setblock ~~~ fire
execute if score timeline time matches 90..95 at @e[type=magma_cube,x=-265,y=-50,z=66,dx=32,dy=8,dz=32] run setblock ~~~ fire
execute if score timeline time matches 120..125 at @e[type=magma_cube,x=-265,y=-50,z=66,dx=32,dy=8,dz=32] run setblock ~~~ fire
execute if score timeline time matches 150..155 at @e[type=magma_cube,x=-265,y=-50,z=66,dx=32,dy=8,dz=32] run setblock ~~~ fire
execute if score timeline time matches 180..185 at @e[type=magma_cube,x=-265,y=-50,z=66,dx=32,dy=8,dz=32] run setblock ~~~ fire
execute if score timeline time matches 210..215 at @e[type=magma_cube,x=-265,y=-50,z=66,dx=32,dy=8,dz=32] run setblock ~~~ fire
execute if score timeline time matches 0..5 at @e[type=magma_cube,x=-265,y=-50,z=66,dx=32,dy=8,dz=32] run setblock ~~~ fire

#周期性召唤怪物
execute if score timeline time matches 30 if score 7_fortress_boss_wave data matches 1 run summon magma_cube -236 -49 82 facing -249 -49 82 spawn_small
execute if score timeline time matches 30 if score 7_fortress_boss_wave data matches 2..5 run summon magma_cube -236 -49 82 facing -249 -49 82 spawn_medium
execute if score timeline time matches 30 if score 7_fortress_boss_wave data matches 6 run summon magma_cube -236 -49 82 facing -249 -49 82 spawn_large
execute if score timeline time matches 30 if score 7_fortress_boss_wave data matches 7 run summon magma_cube -236 -49 82 facing -249 -49 82 spawn_small
execute if score timeline time matches 30 if score 7_fortress_boss_wave data matches 8..10 run summon magma_cube -236 -49 82 facing -249 -49 82 spawn_medium
execute if score timeline time matches 30 if score 7_fortress_boss_wave data matches 11..12 run summon magma_cube -236 -49 82 facing -249 -49 82 spawn_large

execute if score timeline time matches 60 if score amount data matches ..19 if score 7_fortress_boss_wave data matches 1..12 run summon magma_cube -240 -49 73 facing -249 -49 82 spawn_small

execute if score timeline time matches 90 if score 7_fortress_boss_wave data matches 1..2 run summon magma_cube -249 -49 69 facing -249 -49 82 spawn_small
execute if score timeline time matches 90 if score 7_fortress_boss_wave data matches 3..5 run summon magma_cube -249 -49 69 facing -249 -49 82 spawn_medium
execute if score timeline time matches 90 if score 7_fortress_boss_wave data matches 6..7 run summon magma_cube -249 -49 69 facing -249 -49 82 spawn_small
execute if score timeline time matches 90 if score 7_fortress_boss_wave data matches 8..12 run summon magma_cube -249 -49 69 facing -249 -49 82 spawn_medium

execute if score timeline time matches 120 if score amount data matches ..19 if score 7_fortress_boss_wave data matches 1..12 run summon magma_cube -258 -49 73 facing -249 -49 82 spawn_small

execute if score timeline time matches 150 if score 7_fortress_boss_wave data matches 1..3 run summon magma_cube -262 -49 82 facing -249 -49 82 spawn_small
execute if score timeline time matches 150 if score 7_fortress_boss_wave data matches 4..5 run summon magma_cube -262 -49 82 facing -249 -49 82 spawn_medium
execute if score timeline time matches 150 if score 7_fortress_boss_wave data matches 6..7 run summon magma_cube -262 -49 82 facing -249 -49 82 spawn_small
execute if score timeline time matches 150 if score 7_fortress_boss_wave data matches 8..11 run summon magma_cube -262 -49 82 facing -249 -49 82 spawn_medium
execute if score timeline time matches 150 if score 7_fortress_boss_wave data matches 12 run summon magma_cube -262 -49 82 facing -249 -49 82 spawn_large

execute if score timeline time matches 180 if score amount data matches ..19 if score 7_fortress_boss_wave data matches 1..12 run summon magma_cube -258 -49 91 facing -249 -49 82 spawn_small

execute if score timeline time matches 210 if score 7_fortress_boss_wave data matches 1..4 run summon magma_cube -249 -49 95 facing -249 -49 82 spawn_small
execute if score timeline time matches 210 if score 7_fortress_boss_wave data matches 5 run summon magma_cube -249 -49 95 facing -249 -49 82 spawn_medium
execute if score timeline time matches 210 if score 7_fortress_boss_wave data matches 6..7 run summon magma_cube -249 -49 95 facing -249 -49 82 spawn_small
execute if score timeline time matches 210 if score 7_fortress_boss_wave data matches 8..12 run summon magma_cube -249 -49 95 facing -249 -49 82 spawn_medium

execute if score timeline time matches 240 if score amount data matches ..19 if score 7_fortress_boss_wave data matches 1..12 run summon magma_cube -240 -49 91 facing -249 -49 82 spawn_small

execute if score timeline time matches 240 run scoreboard players add 7_fortress_boss_wave data 1
execute if score timeline time matches 240.. run scoreboard players set timeline time 0

#触发对话
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 0 run tellraw @a {"rawtext":[{"text":"§f[田萍]林乐，你是不是被困在某个房间里了？"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 1 run tellraw @a {"rawtext":[{"text":"§a[我]是的，不过这里的怪物很好对付。"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 2 run tellraw @a {"rawtext":[{"text":"§f[王予凡]我们也想进去找你，可是……竟然不许！"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 3 run tellraw @a {"rawtext":[{"text":"§a[我]我在这里等一会儿看看情况，放心好了，我水火无敌>:)"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 4 run tellraw @a {"rawtext":[{"text":"§f[田萍]不要掉以轻心啊，骄兵必败。"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 5 run tellraw @a {"rawtext":[{"text":"§a[我]想想回去吃什么吧。"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 6 run tellraw @a {"rawtext":[{"text":"§f[王予凡]是啊吃什么，哈哈哈哈哈。"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 7 run tellraw @a {"rawtext":[{"text":"§a[我]不对不对，这怪物怎么越杀越多还变强了啊。"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 8 run tellraw @a {"rawtext":[{"text":"§f[田萍]难道……这里的怪物是无限的！"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 9 run tellraw @a {"rawtext":[{"text":"§a[我]不可能！绝对不可能！"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 10 run tellraw @a {"rawtext":[{"text":"§a[我]只要一息尚存……我就战无不胜！"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 11 run tellraw @a {"rawtext":[{"text":"§f[王予凡]林乐！林乐！怎么办？"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 12 run tellraw @a {"rawtext":[{"text":"§a[我]……战至最后一刻！……"}]}
execute if score timeline time matches 120 if score 7_fortress_boss_wave data matches 13 run tellraw @a {"rawtext":[{"text":"§9[？]尽我所能，将林乐救出来吧！"}]}

#如果死掉则游戏失败
execute if entity @a[tag=!isAlive] if score tick time matches 0..3 run tellraw @a {"rawtext":[{"text":"§e自！刎！归！天！"}]}
execute if entity @a[tag=!isAlive] if score tick time matches 4..7 run tellraw @a {"rawtext":[{"text":"§e死不可怕，死是凉爽的夏夜，可供人无忧地安眠。"}]}
execute if entity @a[tag=!isAlive] if score tick time matches 8..11 run tellraw @a {"rawtext":[{"text":"§e打输了，已成哀兵，而哀兵必胜！"}]}
execute if entity @a[tag=!isAlive] if score tick time matches 12..15 run tellraw @a {"rawtext":[{"text":"§e在下一者为主公悲伤，二者给主公道喜。"}]}
execute if entity @a[tag=!isAlive] if score tick time matches 16..19 run tellraw @a {"rawtext":[{"text":"§e不是怪物害了你，是这个乱世害了你啊！"}]}
execute if entity @a[tag=!isAlive] run function lib/utils/stop_dialogue 
execute if entity @a[tag=!isAlive] run function lib/modify_data/states/timeline/disable

#到时间后通关
execute if score 7_fortress_boss_wave data matches 15 run tp @e[family=monster] -296 -55 60
execute if score 7_fortress_boss_wave data matches 15 run fill -255 -49 76 -243 -45 88 air
execute if score 7_fortress_boss_wave data matches 15 run fill -265 -50 66 -233 -47 98 air replace fire
execute if score 7_fortress_boss_wave data matches 15 run fill -265 -50 66 -233 -47 98 air replace soul_fire
execute if score 7_fortress_boss_wave data matches 15 run fill -233 -49 82 -233 -48 82 air
execute if score 7_fortress_boss_wave data matches 15 run music play boss_win_start 1 0 play_once
execute if score 7_fortress_boss_wave data matches 15 run scoreboard players set music data 123
execute if score 7_fortress_boss_wave data matches 15 run function lib/utils/music/queue
execute if score 7_fortress_boss_wave data matches 15 run scoreboard players set 7_fortress_boss data 1
execute if score 7_fortress_boss_wave data matches 15 run function lib/utils/stop_dialogue 
execute if score 7_fortress_boss_wave data matches 15 run function lib/modify_data/states/timeline/disable