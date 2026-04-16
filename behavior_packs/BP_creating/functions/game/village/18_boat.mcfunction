#数据显示
execute if score boat_progress data matches 0..2 run titleraw @a actionbar {"rawtext":[{"text":"§l§e第1/3圈  §l§b用时：§r"},{"score":{"name":"timeline","objective":"time"}}]}
execute if score boat_progress data matches 3..5 run titleraw @a actionbar {"rawtext":[{"text":"§l§e第2/3圈  §l§b用时：§r"},{"score":{"name":"timeline","objective":"time"}}]}
execute if score boat_progress data matches 6..8 run titleraw @a actionbar {"rawtext":[{"text":"§l§e第3/3圈  §l§b用时：§r"},{"score":{"name":"timeline","objective":"time"}}]}
execute if score boat_progress data matches 9 run titleraw @a actionbar {"rawtext":[{"text":"§l§b比赛完成！"}]}

#第一圈
execute if entity @a[x=-52,y=60,z=82,dx=9,dy=3,dz=18] if entity @e[type=boat,x=-52,y=60,z=82,dx=9,dy=3,dz=18] if score boat_progress data matches 0 run scoreboard players set boat_progress data 1
execute if entity @a[x=-4,y=60,z=76,dx=9,dy=3,dz=8] if entity @e[type=boat,x=-4,y=60,z=76,dx=9,dy=3,dz=8] if score boat_progress data matches 1 run scoreboard players set boat_progress data 2
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 2 run tellraw @a {"rawtext":[{"text":"§b第1圈完成！"}]}
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 2 run playsound random.levelup @a
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 2 run scoreboard players set boat_progress data 3

#第二圈
execute if entity @a[x=-52,y=60,z=82,dx=9,dy=3,dz=18] if entity @e[type=boat,x=-52,y=60,z=82,dx=9,dy=3,dz=18] if score boat_progress data matches 3 run scoreboard players set boat_progress data 4
execute if entity @a[x=-4,y=60,z=76,dx=9,dy=3,dz=8] if entity @e[type=boat,x=-4,y=60,z=76,dx=9,dy=3,dz=8] if score boat_progress data matches 4 run scoreboard players set boat_progress data 5
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 5 run tellraw @a {"rawtext":[{"text":"§b第2圈完成！"}]}
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 5 run playsound random.levelup @a
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 5 run scoreboard players set boat_progress data 6

#第三圈
execute if entity @a[x=-52,y=60,z=82,dx=9,dy=3,dz=18] if entity @e[type=boat,x=-52,y=60,z=82,dx=9,dy=3,dz=18] if score boat_progress data matches 6 run scoreboard players set boat_progress data 7
execute if entity @a[x=-4,y=60,z=76,dx=9,dy=3,dz=8] if entity @e[type=boat,x=-4,y=60,z=76,dx=9,dy=3,dz=8] if score boat_progress data matches 7 run scoreboard players set boat_progress data 8
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 run tellraw @a {"rawtext":[{"text":"§b第3圈完成！你获得了一块彩岩！本次成绩为："},{"score":{"name":"timeline","objective":"time"}}]}
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 positioned -58 60 118 run give @p aw:build3 1
execute if score 7_fortress_boss data matches 2.. if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 run tellraw @a {"rawtext":[{"text":"§b额外奖励！你获得了一块彩岩！"}]}
execute if score 7_fortress_boss data matches 2.. if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 positioned -58 60 118 run give @p aw:build3 1
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 if score timeline time <= boat data run tellraw @a {"rawtext":[{"text":"§b恭喜！你刷新了纪录！"}]}
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 if score timeline time <= boat data run scoreboard players operation boat data = timeline time
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 run playsound random.levelup @a
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 run summon fireworks_rocket -54 60 113
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 run summon fireworks_rocket -63 60 113
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 run scoreboard players set timeline time 0
execute if entity @a[x=-63,y=60,z=106,dx=10,dy=3,dz=7] if entity @e[type=boat,x=-63,y=60,z=106,dx=10,dy=3,dz=7] if score boat_progress data matches 8 run scoreboard players set boat_progress data 9
execute if score timeline time matches 80 if score boat_progress data matches 9 run spawnpoint @a -37 64 97
execute if score timeline time matches 80 if score boat_progress data matches 9 run setworldspawn -37 64 97
execute if score timeline time matches 80 if score boat_progress data matches 9 run tp @a -37 64 97 facing -36 64 97
execute if score timeline time matches 80 if score boat_progress data matches 9 run kill @e[type=boat]
execute if score timeline time matches 80 if score boat_progress data matches 9 run music play finish_game 1 0 play_once
execute if score timeline time matches 80 if score boat_progress data matches 9 run scoreboard players set music data 16
execute if score timeline time matches 80 if score boat_progress data matches 9 run function lib/utils/music/queue
execute if score timeline time matches 80 if score boat_progress data matches 9 run function lib/modify_states/timeline/disable

#退出划船
execute if block -41 67 101 ice if score boat_progress data matches 0..8 unless entity @e[type=boat] run kill @e[type=boat]
execute if block -41 67 101 ice if score boat_progress data matches 0..8 unless entity @e[type=boat] run function lib/modify_states/timeline/disable
execute if block -41 67 101 ice if score boat_progress data matches 0..8 unless entity @e[type=boat] run spawnpoint @a -37 64 97
execute if block -41 67 101 ice if score boat_progress data matches 0..8 unless entity @e[type=boat] run setworldspawn -37 64 97
execute if block -41 67 101 ice if score boat_progress data matches 0..8 unless entity @e[type=boat] run scoreboard players set music data 16
execute if block -41 67 101 ice if score boat_progress data matches 0..8 unless entity @e[type=boat] run function lib/utils/music/replay
execute if block -41 67 101 ice if score boat_progress data matches 0..8 unless entity @e[type=boat] run tp @a -37 64 97 facing -36 64 97