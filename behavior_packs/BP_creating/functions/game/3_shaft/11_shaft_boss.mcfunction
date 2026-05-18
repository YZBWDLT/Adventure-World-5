#逍遥矿井BOSS为四个小白，都杀死过关
#45s为一周期，每过30s后有15s可以用雪球靠近小白击杀
#当有小白被击杀后，场中会刷僵尸

#周期性循环
execute if score timeline time matches 300 unless entity @e[type=skeleton,x=-114,y=-54,z=30,r=5] run summon zombie -114 -54 39
execute if score timeline time matches 300 unless entity @e[type=skeleton,x=-131,y=-54,z=47,r=5] run summon zombie -122 -54 47
execute if score timeline time matches 300 unless entity @e[type=skeleton,x=-114,y=-54,z=64,r=5] run summon zombie -114 -54 55
execute if score timeline time matches 300 unless entity @e[type=skeleton,x=-97,y=-54,z=47,r=5] run summon zombie -106 -54 47
execute if score timeline time matches 600 unless entity @e[type=skeleton,x=-114,y=-54,z=30,r=5] run summon zombie -114 -54 39
execute if score timeline time matches 600 unless entity @e[type=skeleton,x=-131,y=-54,z=47,r=5] run summon zombie -122 -54 47
execute if score timeline time matches 600 unless entity @e[type=skeleton,x=-114,y=-54,z=64,r=5] run summon zombie -114 -54 55
execute if score timeline time matches 600 unless entity @e[type=skeleton,x=-97,y=-54,z=47,r=5] run summon zombie -106 -54 47
execute if score timeline time matches 600 run setblock -131 -52 47 light_blue_glazed_terracotta
execute if score timeline time matches 600 run setblock -114 -52 64 light_blue_glazed_terracotta
execute if score timeline time matches 600 run setblock -97 -52 47 light_blue_glazed_terracotta
execute if score timeline time matches 600 run setblock -114 -52 30 light_blue_glazed_terracotta

#传送到小白面前时不让其射箭
execute if score timeline time matches 600..900 unless entity @a[x=-124,y=-55,z=37,dx=20,dy=3,dz=20] run kill @e[type=arrow]

#御风珠传送
execute if score timeline time matches 600..900 if entity @e[type=aw:wind_pearl,x=-113.5,y=-52.5,z=31.5,r=1.5] run tp @a -114 -54 32 facing -114 -54 31
execute if score timeline time matches 600..900 if entity @e[type=aw:wind_pearl,x=-129.5,y=-52.5,z=47.5,r=1.5] run tp @a -129 -54 47 facing -130 -54 47
execute if score timeline time matches 600..900 if entity @e[type=aw:wind_pearl,x=-113.5,y=-52.5,z=63.5,r=1.5] run tp @a -114 -54 62 facing -114 -54 63
execute if score timeline time matches 600..900 if entity @e[type=aw:wind_pearl,x=-97.5,y=-52.5,z=47.5,r=1.5] run tp @a -99 -54 47 facing -98 -54 47

execute if score timeline time matches 900 run kill @e[type=zombie]
execute if score timeline time matches 900 run setblock -131 -52 47 deepslate
execute if score timeline time matches 900 run setblock -114 -52 64 deepslate
execute if score timeline time matches 900 run setblock -97 -52 47 deepslate
execute if score timeline time matches 900 run setblock -114 -52 30 deepslate
execute if score timeline time matches 900 run tp @a -114 -54 47

#通关
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run kill @e[type=zombie]
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run scoreboard players set 3_shaft_boss data 1
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run fill -94 -45 46 -94 -43 48 air
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run tellraw @a {"rawtext":[{"text":"§e所有怪物都已消灭！"}]}
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run music play boss_win_start 1 0 play_once
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run scoreboard players set music data 53
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run function lib/utils/music/queue
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run function lib/utils/stop_dialogue 
execute if score timeline time matches 900 unless entity @e[type=skeleton,x=-133,y=-56,z=28,dx=38,dy=7,dz=38] run function lib/modify_data/states/timeline/disable
execute if score timeline time matches 900 run scoreboard players set timeline time 0