# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-262.5,y=34,z=86.5,r=1] run function game/starry/refresh
execute if score refreshArea data matches 0 if entity @a[x=-297.5,y=30.94,z=87.5,r=1] run function game/starry/refresh

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-287.5,y=39.5,z=21.5,r=1.5] run tp @a -288 38 21 facing -287 38 21

#前往逍遥平原
execute if entity @a[x=-260.5,y=35,z=86.5,r=1] positioned -257 35 86 facing -256 35 86 run function game/plain/enter

#农场站进入地铁
execute if block -300 33 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -233 -15 189 facing -233 -15 188 run function game/start/enter
execute if block -300 33 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -300 33 93 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#提交染料
execute if score timeline active matches 0 if block -277 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function game/starry/color
execute if block -277 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -277 32 92 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#左复制到右
execute if block -281 36 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e左边的染料锅已复制到右边！"}]}
execute if block -281 36 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -280 35 96 -277 35 96 -290 35 96
execute if block -281 36 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -281 36 96 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#右复制到左
execute if block -286 36 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e右边的染料锅已复制到左边！"}]}
execute if block -286 36 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -290 35 96 -287 35 96 -280 35 96
execute if block -286 36 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -286 36 96 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#左染料锅刷新
execute if block -281 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e左边的染料锅已刷新！"}]}
execute if block -281 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -280 29 94 -277 29 94 -280 35 96
execute if block -281 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -281 36 93 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#右1染料锅刷新
execute if block -287 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e右边1号染料锅已刷新！"}]}
execute if block -287 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -280 29 94 -280 29 94 -287 35 96
execute if block -287 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -287 36 93 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#右2染料锅刷新
execute if block -288 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e右边2号染料锅已刷新！"}]}
execute if block -288 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -280 29 94 -280 29 94 -288 35 96
execute if block -288 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -288 36 93 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#右3染料锅刷新
execute if block -289 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e右边3号染料锅已刷新！"}]}
execute if block -289 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -280 29 94 -280 29 94 -289 35 96
execute if block -289 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -289 36 93 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#右4染料锅刷新
execute if block -290 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e右边4号染料锅已刷新！"}]}
execute if block -290 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -280 29 94 -280 29 94 -290 35 96
execute if block -290 36 93 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -290 36 93 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#前往雪原
execute if block -313 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a 24 60 98 facing 24 60 99
execute if block -313 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 102
execute if block -313 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/music/replay
execute if block -313 32 92 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -313 32 92 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#返回农场
execute if block 24 61 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -313 31 89 facing -313 31 88
execute if block 24 61 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run effect @a clear water_breathing
execute if block 24 61 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 101
execute if block 24 61 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/music/replay
execute if block 24 61 96 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock 24 61 96 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#在雪原酿造药水 | 在海底神殿结束前，立即获得水肺效果；结束后获得恢复药水
execute positioned 12 61 94 if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p if score 6_monument_boss data matches ..7 run function game/starry/events/get_water_breathing_effect
execute positioned 12 61 94 if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p if score 6_monument_boss data matches 8.. run function game/starry/events/get_regeneration_potion

#在提交蓝冰之前丢了（没人携带）箱子里就会刷新，归还后失效
execute if score blue_ice data matches 1 unless entity @a[hasitem={item=blue_ice}] if block 11 74 123 chest if blocks 11 74 123 11 74 123 11 82 125 all run clone 11 81 125 11 81 125 11 74 123

#灭火游戏规则
execute if block -283 32 70 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b用最快的速度熄灭场地中的所有火吧！注意那些角落的位置。"}]}
execute if block -283 32 70 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches ..1 run tellraw @a {"rawtext":[{"text":"§b奖励：石料×1，"}]}
execute if block -283 32 70 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches 2.. run tellraw @a {"rawtext":[{"text":"§b奖励：石料×1，彩岩×1"}]}
execute if block -283 32 70 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -283 32 70 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#灭火最佳成绩
execute if block -283 32 64 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b灭火英雄-你的最短用时："},{"score":{"name":"firefight","objective":"data"}}]}
execute if block -283 32 64 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -283 32 64 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#开始灭火
execute if score waterGun itemState matches 0 if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b你缺少道具，还不能玩这个小游戏！"}]}
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 51
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b灭火开始！有些无法达到的地方也要注意灭火哦！"}]}
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 103
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/utils/music/replay
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a 36 67 114
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn 36 67 114
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a 36 67 114 facing 37 67 114
execute if score waterGun itemState matches 1.. if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run structure load other:town_fired 33 60 103
execute if block -283 32 67 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -283 32 67 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#染坊音乐
execute if block -280 32 84 stonebrick if score music data matches 101 if entity @a[x=-280,y=31,z=88,dx=3,dy=2,dz=4] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-280,y=31,z=88,dx=3,dy=2,dz=4] run scoreboard players set music data 5
execute if score repmusic data matches 1 if entity @a[x=-280,y=31,z=88,dx=3,dy=2,dz=4] run function lib/utils/music/replay

execute if block -280 32 84 stonebrick if score music data matches 5 if entity @a[x=-280,y=31,z=85,dx=3,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-280,y=31,z=85,dx=3,dy=2,dz=1] run scoreboard players set music data 101
execute if score repmusic data matches 1 if entity @a[x=-280,y=31,z=85,dx=3,dy=2,dz=1] run function lib/utils/music/replay

execute if block -280 32 84 stonebrick if score music data matches 101 if entity @a[x=-285,y=35,z=93,dx=3,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-285,y=35,z=93,dx=3,dy=2,dz=1] run scoreboard players set music data 5
execute if score repmusic data matches 1 if entity @a[x=-285,y=35,z=93,dx=3,dy=2,dz=1] run function lib/utils/music/replay

execute if block -280 32 84 stonebrick if score music data matches 5 if entity @a[x=-285,y=35,z=90,dx=3,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-285,y=35,z=90,dx=3,dy=2,dz=1] run scoreboard players set music data 101
execute if score repmusic data matches 1 if entity @a[x=-285,y=35,z=90,dx=3,dy=2,dz=1] run function lib/utils/music/replay

#水下洞穴音乐
execute if score music data matches 101 if entity @a[x=-293,y=27,z=30,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-293,y=27,z=30,dx=2,dy=2,dz=2] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-293,y=27,z=30,dx=2,dy=2,dz=2] run function lib/utils/music/replay

execute if score music data matches 2 if entity @a[x=-293,y=28,z=25,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-293,y=28,z=25,dx=2,dy=2,dz=2] run scoreboard players set music data 101
execute if score repmusic data matches 1 if entity @a[x=-293,y=28,z=25,dx=2,dy=2,dz=2] run function lib/utils/music/replay