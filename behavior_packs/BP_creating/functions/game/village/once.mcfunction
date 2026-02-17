# ===== 只执行一次的命令（其中部分可重置） =====

#开局出门修改BGM
execute if score village_start_music data matches 0 if entity @a[x=-197,y=30,z=128,dx=3,dy=3,dz=4] run scoreboard players set music data 12
execute if score village_start_music data matches 0 if entity @a[x=-197,y=30,z=128,dx=3,dy=3,dz=4] run function music/replay
execute if score village_start_music data matches 0 if entity @a[x=-197,y=30,z=128,dx=3,dy=3,dz=4] run scoreboard players set village_start_music data 1

#王予凡的馈赠玻璃瓶
execute if score bottle1 data matches 0 if block -222 36 130 chest if blocks -222 36 130 -222 36 130 -232 -9 177 all run tellraw @a {"rawtext":[{"text":"§e你拿到了玻璃瓶，这是喝药的唯一容器，一定要好好保存！"}]}
execute if score bottle1 data matches 0 if block -222 36 130 chest if blocks -222 36 130 -222 36 130 -232 -9 177 all run music play get_item 1 0 play_once
execute if score bottle1 data matches 0 if block -222 36 130 chest if blocks -222 36 130 -222 36 130 -232 -9 177 all run function music/play
execute if score bottle1 data matches 0 if block -222 36 130 chest if blocks -222 36 130 -222 36 130 -232 -9 177 all run scoreboard players set bottle1 data 1

#出现怪物1
execute if score village_enemy1 data matches 0 if entity @a[x=-319,y=56,z=116,dx=15,dy=1,dz=23] run summon zombie -308 56 122
execute if score village_enemy1 data matches 0 if entity @a[x=-319,y=56,z=116,dx=15,dy=1,dz=23] run summon zombie -318 56 122
execute if score village_enemy1 data matches 0 if entity @a[x=-319,y=56,z=116,dx=15,dy=1,dz=23] run summon zombie -318 56 132
execute if score village_enemy1 data matches 0 if entity @a[x=-319,y=56,z=116,dx=15,dy=1,dz=23] run summon zombie -308 56 132
execute if score village_enemy1 data matches 0 if entity @a[x=-319,y=56,z=116,dx=15,dy=1,dz=23] run scoreboard players set village_enemy1 data 1

#拿到打火石 | 这里网易版无法正常执行 if blocks，所以采用和国际版不同的代码检查
execute if score item_fire data matches 2 if score client data matches 0 if block -190 29 130 chest if blocks -190 29 130 -190 29 130 -192 29 130 all run function game/village/events/get_flint_and_steel
execute if score item_fire data matches 2 if score client data matches 1 if entity @a[hasitem={item=flint_and_steel}] run function game/village/events/get_flint_and_steel

#某彩蛋
execute unless score timeline active matches 1..6 unless score timeline active matches 8.. if score kita data matches 0 if block -225 31 160 dead_fire_coral run scoreboard players set timeline active 7
execute unless score timeline active matches 1..6 unless score timeline active matches 8.. if score kita data matches 0 if block -225 31 160 dead_fire_coral run function lib/modify_states/timeline/enable_time_lapse
execute if score kita data matches 0 if block -225 31 160 dead_fire_coral run scoreboard players set kita data 1

#前往平原前临走聊天
execute if score progress data matches 2 if score village_goto_plain data matches 0 if entity @a[x=-200,y=31,z=108,r=10] run scoreboard players set timeline active 9
execute if score progress data matches 2 if score village_goto_plain data matches 0 if entity @a[x=-200,y=31,z=108,r=10] run function lib/modify_states/timeline/enable_time_lapse
execute if score progress data matches 2 if score village_goto_plain data matches 0 if entity @a[x=-200,y=31,z=108,r=10] run function lib/modify_states/timeline/enable_lock_camera
execute if score progress data matches 2 if score village_goto_plain data matches 0 if entity @a[x=-200,y=31,z=108,r=10] run scoreboard players set village_goto_plain data 1

#浮空山地洞开门
execute if block -282 15 127 chiseled_stone_bricks if blocks -295 15 123 -286 16 132 -295 10 123 all run music play solve_puzzle 1 0 play_once
execute if block -282 15 127 chiseled_stone_bricks if blocks -295 15 123 -286 16 132 -295 10 123 all run function music/play
execute if block -282 15 127 chiseled_stone_bricks if blocks -295 15 123 -286 16 132 -295 10 123 all run fill -282 15 127 -282 17 128 air

#搭建码头
execute if block -220 32 178 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -220 32 178 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=15..}]] run scoreboard players set timeline active 13
execute if block -220 32 178 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -220 32 178 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=15..}]] run function lib/modify_states/timeline/enable_time_lapse
execute if block -220 32 178 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -220 32 178 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=15..}]] run function lib/modify_states/timeline/enable_lock_camera
execute if block -220 32 178 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -220 32 178 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=15..}]] run setblock -220 32 178 air
execute if block -220 32 178 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -220 32 178 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -220 32 178 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建陆千里＆孙嘉睿家
execute if block -192 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -192 32 154 as @p if entity @s[hasitem={item=aw:build1,quantity=25..}] run scoreboard players set timeline active 14
execute if block -192 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -192 32 154 as @p if entity @s[hasitem={item=aw:build1,quantity=25..}] run function lib/modify_states/timeline/enable_time_lapse
execute if block -192 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -192 32 154 as @p if entity @s[hasitem={item=aw:build1,quantity=25..}] run function lib/modify_states/timeline/enable_lock_camera
execute if block -192 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -192 32 154 as @p if entity @s[hasitem={item=aw:build1,quantity=25..}] run setblock -192 32 154 air
execute if block -192 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -192 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -192 32 154 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建胡雨＆伊云家
execute if block -155 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -155 32 154 as @p if entity @s[hasitem=[{item=aw:build1,quantity=15..},{item=aw:build3,quantity=10..}]] run scoreboard players set timeline active 15
execute if block -155 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -155 32 154 as @p if entity @s[hasitem=[{item=aw:build1,quantity=15..},{item=aw:build3,quantity=10..}]] run function lib/modify_states/timeline/enable_time_lapse
execute if block -155 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -155 32 154 as @p if entity @s[hasitem=[{item=aw:build1,quantity=15..},{item=aw:build3,quantity=10..}]] run function lib/modify_states/timeline/enable_lock_camera
execute if block -155 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -155 32 154 as @p if entity @s[hasitem=[{item=aw:build1,quantity=15..},{item=aw:build3,quantity=10..}]] run setblock -155 32 154 air
execute if block -155 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -155 32 154 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -155 32 154 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建邹鹭遥家
execute if block -175 32 152 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -175 32 152 as @p if entity @s[hasitem={item=aw:build3,quantity=25..}] run scoreboard players set timeline active 16
execute if block -175 32 152 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -175 32 152 as @p if entity @s[hasitem={item=aw:build3,quantity=25..}] run function lib/modify_states/timeline/enable_time_lapse
execute if block -175 32 152 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -175 32 152 as @p if entity @s[hasitem={item=aw:build3,quantity=25..}] run function lib/modify_states/timeline/enable_lock_camera
execute if block -175 32 152 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -175 32 152 as @p if entity @s[hasitem={item=aw:build3,quantity=25..}] run setblock -175 32 152 air
execute if block -175 32 152 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -175 32 152 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -175 32 152 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建制图室
execute if block -220 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -220 32 114 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=5..}]] run scoreboard players set timeline active 17
execute if block -220 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -220 32 114 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=5..}]] run function lib/modify_states/timeline/enable_time_lapse
execute if block -220 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -220 32 114 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=5..}]] run function lib/modify_states/timeline/enable_lock_camera
execute if block -220 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -220 32 114 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=5..}]] run setblock -220 32 114 air
execute if block -220 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -220 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -220 32 114 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建广告牌
execute if block -204 32 121 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 40
execute if block -204 32 121 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if block -204 32 121 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_lock_camera
execute if block -204 32 121 stone_button["button_pressed_bit"=true,"facing_direction"=1] run fill -204 31 121 -203 32 121 air

#搭建筑梦站
execute if block -243 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -243 32 114 as @p if entity @s[hasitem={item=aw:build2,quantity=25..}] run scoreboard players set timeline active 20
execute if block -243 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -243 32 114 as @p if entity @s[hasitem={item=aw:build2,quantity=25..}] run function lib/modify_states/timeline/enable_time_lapse
execute if block -243 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -243 32 114 as @p if entity @s[hasitem={item=aw:build2,quantity=25..}] run function lib/modify_states/timeline/enable_lock_camera
execute if block -243 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -243 32 114 as @p if entity @s[hasitem={item=aw:build2,quantity=25..}] run setblock -243 32 114 air
execute if block -243 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -243 32 114 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -243 32 114 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建筑梦南站
execute if block -168 32 176 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -168 32 176 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=10..},{item=aw:build3,quantity=10..}]] run scoreboard players set timeline active 21
execute if block -168 32 176 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -168 32 176 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=10..},{item=aw:build3,quantity=10..}]] run function lib/modify_states/timeline/enable_time_lapse
execute if block -168 32 176 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -168 32 176 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=10..},{item=aw:build3,quantity=10..}]] run function lib/modify_states/timeline/enable_lock_camera
execute if block -168 32 176 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -168 32 176 as @p if entity @s[hasitem=[{item=aw:build1,quantity=10..},{item=aw:build2,quantity=10..},{item=aw:build3,quantity=10..}]] run setblock -168 32 176 air
execute if block -168 32 176 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -168 32 176 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -168 32 176 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建屠龙纪念塔
execute if block -172 32 130 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -172 32 130 as @p if entity @s[hasitem=[{item=aw:build1,quantity=15..},{item=aw:build2,quantity=15..}]] run scoreboard players set timeline active 22
execute if block -172 32 130 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -172 32 130 as @p if entity @s[hasitem=[{item=aw:build1,quantity=15..},{item=aw:build2,quantity=15..}]] run function lib/modify_states/timeline/enable_time_lapse
execute if block -172 32 130 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -172 32 130 as @p if entity @s[hasitem=[{item=aw:build1,quantity=15..},{item=aw:build2,quantity=15..}]] run function lib/modify_states/timeline/enable_lock_camera
execute if block -172 32 130 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -172 32 130 as @p if entity @s[hasitem=[{item=aw:build1,quantity=15..},{item=aw:build2,quantity=15..}]] run setblock -172 32 130 air
execute if block -172 32 130 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -172 32 130 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -172 32 130 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#餐厅地下点蜡烛
execute unless block -193 16 185 air if block -194 13 185 red_candle["candles"=3,"lit"=true] run music play solve_puzzle 1 0 play_once
execute unless block -193 16 185 air if block -194 13 185 red_candle["candles"=3,"lit"=true] run function music/play
execute unless block -193 16 185 air if block -194 13 185 red_candle["candles"=3,"lit"=true] run setblock -193 16 185 air

#对话-提交蓝冰
execute if block -234 -25 182 quartz_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if entity @a[hasitem={item=blue_ice}] run scoreboard players set timeline active 32
execute if block -234 -25 182 quartz_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if entity @a[hasitem={item=blue_ice}] run function lib/modify_states/timeline/enable_time_lapse
execute if block -234 -25 182 quartz_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if entity @a[hasitem={item=blue_ice}] run function lib/modify_states/timeline/enable_lock_camera
execute if block -234 -25 182 quartz_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if entity @a[hasitem={item=blue_ice}] run setblock -234 -23 182 air
execute if block -234 -25 182 quartz_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]嗯？看上去你没什么东西要给我啊。"}]}
execute if block -234 -25 182 quartz_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -234 -23 182 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#搭建下界传送门
execute if block -243 32 139 stone_button["button_pressed_bit"=true,"facing_direction"=1] if entity @p[hasitem={item=obsidian,quantity=16..}] run scoreboard players set timeline active 33
execute if block -243 32 139 stone_button["button_pressed_bit"=true,"facing_direction"=1] if entity @p[hasitem={item=obsidian,quantity=16..}] run function lib/modify_states/timeline/enable_time_lapse
execute if block -243 32 139 stone_button["button_pressed_bit"=true,"facing_direction"=1] if entity @p[hasitem={item=obsidian,quantity=16..}] run function lib/modify_states/timeline/enable_lock_camera
execute if block -243 32 139 stone_button["button_pressed_bit"=true,"facing_direction"=1] if entity @p[hasitem={item=obsidian,quantity=16..}] run setblock -243 32 139 air
execute if block -243 32 139 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§e材料不足！"}]}
execute if block -243 32 139 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -243 32 139 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#和王予凡在沙滩聊天
execute if score item_fire data matches 1 if entity @a[x=-282,y=31,z=178,dx=20,dy=2,dz=13] run scoreboard players set timeline active 34
execute if score item_fire data matches 1 if entity @a[x=-282,y=31,z=178,dx=20,dy=2,dz=13] run function lib/modify_states/timeline/enable_time_lapse
execute if score item_fire data matches 1 if entity @a[x=-282,y=31,z=178,dx=20,dy=2,dz=13] run function lib/modify_states/timeline/enable_lock_camera
execute if score item_fire data matches 1 if entity @a[x=-282,y=31,z=178,dx=20,dy=2,dz=13] run scoreboard players set item_fire data 2

#当集齐的时候更新进度
execute if score progress data matches 4 if score 5_mansion_boss data matches 4.. if score 6_monument_boss data matches 8.. if score 7_fortress_boss data matches 2.. run scoreboard players set progress data 5

#当玩家按下船上的回忆按钮时回到岛上
execute if block 23 83 -11 minecraft:stone_button ["button_pressed_bit"=true,"facing_direction"=1] run function game/village/events/new_boat/back_to_island
