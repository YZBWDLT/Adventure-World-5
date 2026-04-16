# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-121.5,y=-48,z=142.5,r=1] run function game/6_monument/refresh

#前往溟海
execute if entity @a[x=-121.5,y=-48,z=140.5,r=1] run title @a title §l§9溟海
execute if entity @a[x=-121.5,y=-48,z=140.5,r=1] run spawnpoint @a -102 5 188
execute if entity @a[x=-121.5,y=-48,z=140.5,r=1] run setworldspawn -102 5 188
execute if entity @a[x=-121.5,y=-48,z=140.5,r=1] run scoreboard players set position data 9
execute if entity @a[x=-121.5,y=-48,z=140.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-121.5,y=-48,z=140.5,r=1] run tp @a -102 5 188 facing -102 5 187

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-113.5,y=-39.5,z=160.5,r=1.5] run tp @a -114 -41 160 facing -115 -41 160
execute if entity @e[type=aw:wind_pearl,x=-93.5,y=-39.5,z=160.5,r=1.5] run tp @a -94 -41 160 facing -93 -41 160
execute if entity @e[type=aw:wind_pearl,x=-109.5,y=-39.5,z=188.5,r=1.5] run tp @a -110 -41 188 facing -110 -41 189
execute if entity @e[type=aw:wind_pearl,x=-133.5,y=-35.5,z=144.5,r=1.5] run tp @a -134 -37 144 facing -134 -37 143

#墙壁变化
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 0 run fill -139 -45 172 -129 -35 172 prismarine["prismarine_block_type"="default"] replace water
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 10 run fill -139 -45 172 -129 -35 172 water replace prismarine["prismarine_block_type"="default"]

execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 0 run fill -139 -45 178 -129 -35 178 prismarine["prismarine_block_type"="default"] replace water
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 0 run fill -139 -45 178 -129 -35 178 water replace prismarine["prismarine_block_type"="dark"]
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 10 run fill -139 -45 178 -129 -35 178 prismarine["prismarine_block_type"="dark"] replace water
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 10 run fill -139 -45 178 -129 -35 178 water replace prismarine["prismarine_block_type"="default"]

execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 0 run fill -137 -43 184 -136 -42 184 prismarine["prismarine_block_type"="bricks"]
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 10 run fill -137 -43 184 -136 -42 184 water
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 5 run fill -137 -38 184 -136 -37 184 prismarine["prismarine_block_type"="bricks"]
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 15 run fill -137 -38 184 -136 -37 184 water
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 10 run fill -132 -38 184 -131 -37 184 prismarine["prismarine_block_type"="bricks"]
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 0 run fill -132 -38 184 -131 -37 184 water
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 15 run fill -132 -43 184 -131 -42 184 prismarine["prismarine_block_type"="bricks"]
execute if entity @a[x=-139,y=-45,z=167,dx=10,dy=10,dz=22] if score tick time matches 5 run fill -132 -43 184 -131 -42 184 water

#改变水位
execute if block -122 -47 172 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if block -122 -47 172 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/start_dialogue
execute if block -122 -47 172 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 38
execute if block -122 -47 172 stone_button["button_pressed_bit"=true,"facing_direction"=1] run camera @a set minecraft:free pos -127 -47 167 facing -126 -47 168
execute if block -122 -47 172 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -122 -47 172 air

#BOSS战下层僵尸影响方块
execute if entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=5,dz=16] if block -168 -57 169 prismarine run setblock -168 -57 169 air
execute if entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=5,dz=16] if block -154 -57 169 prismarine run setblock -154 -57 169 air
execute unless entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=5,dz=16] if block -168 -57 169 air run setblock -168 -57 169 prismarine["prismarine_block_type"="dark"]
execute unless entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=5,dz=16] if block -154 -57 169 air run setblock -154 -57 169 prismarine["prismarine_block_type"="dark"]

#BOSS战水里不扔三叉戟
execute if entity @a[x=-169,y=-49,z=161,dx=16,dy=6,dz=16] run kill @e[type=thrown_trident]

#BOSS战如果BOSS要掉下来会给传送回去
tp @e[type=drowned,x=-170,y=-52,z=160,dx=18,dy=3,dz=18] -161 -47 169

#BOSS战成功后再进入场地
execute if score 6_monument_boss data matches 6.. if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run tp @a -161 -57 169
execute if score 6_monument_boss data matches 6.. if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run setblock -122 -47 177 stone_button["button_pressed_bit"=false,"facing_direction"=2]

#从BOSS战离开（第二次进入场地再离开时）
execute if score 6_monument_boss data matches 7.. if entity @a[x=-160.5,y=-57,z=185.5,r=1] run title @a title §l§9溟海
execute if score 6_monument_boss data matches 7.. if entity @a[x=-160.5,y=-57,z=185.5,r=1] run spawnpoint @a -102 5 188
execute if score 6_monument_boss data matches 7.. if entity @a[x=-160.5,y=-57,z=185.5,r=1] run setworldspawn -102 5 188
execute if score 6_monument_boss data matches 7.. if entity @a[x=-160.5,y=-57,z=185.5,r=1] run scoreboard players set position data 9
execute if score 6_monument_boss data matches 7.. if entity @a[x=-160.5,y=-57,z=185.5,r=1] run scoreboard players set refreshArea data 0
execute if score 6_monument_boss data matches 7.. if entity @a[x=-160.5,y=-57,z=185.5,r=1] run tp @a -102 5 188 facing -102 5 187