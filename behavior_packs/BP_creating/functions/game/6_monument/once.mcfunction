# ===== 只执行一次的命令（其中部分可重置） =====

#拿到坐标笔记
execute if score 6_monument_book data matches 0 if block -127 -48 172 chest if blocks -127 -48 172 -127 -48 172 -127 -61 172 all run tellraw @a {"rawtext":[{"text":"§e你拿到了坐标笔记，可以查询所有宝箱的位置了！"}]}
execute if score 6_monument_book data matches 0 if block -127 -48 172 chest if blocks -127 -48 172 -127 -48 172 -127 -61 172 all run music play get_book 1 0 play_once
execute if score 6_monument_book data matches 0 if block -127 -48 172 chest if blocks -127 -48 172 -127 -48 172 -127 -61 172 all run function music/play
execute if score 6_monument_book data matches 0 if block -127 -48 172 chest if blocks -127 -48 172 -127 -48 172 -127 -61 172 all run scoreboard players set 6_monument_book data 1

#拿到BOSS钥匙
execute if score 6_monument_key data matches 0 if block -98 -58 131 chest if blocks -98 -58 131 -98 -58 131 -232 -9 179 all run tellraw @a {"rawtext":[{"text":"§e你拿到了BOSS钥匙，准备好最后的战斗吧！"}]}
execute if score 6_monument_key data matches 0 if block -98 -58 131 chest if blocks -98 -58 131 -98 -58 131 -232 -9 179 all run music play get_item 1 0 play_once
execute if score 6_monument_key data matches 0 if block -98 -58 131 chest if blocks -98 -58 131 -98 -58 131 -232 -9 179 all run function music/play
execute if score 6_monument_key data matches 0 if block -98 -58 131 chest if blocks -98 -58 131 -98 -58 131 -232 -9 179 all run scoreboard players set 6_monument_key data 1 

#出现怪物1
execute if score 6_monument_enemy1 data matches 0 if entity @a[x=-103,y=-59,z=167,dx=10,dy=24,dz=10] run summon drowned -93 -48 177
execute if score 6_monument_enemy1 data matches 0 if entity @a[x=-103,y=-59,z=167,dx=10,dy=24,dz=10] run summon drowned -103 -48 177
execute if score 6_monument_enemy1 data matches 0 if entity @a[x=-103,y=-59,z=167,dx=10,dy=24,dz=10] run summon drowned -103 -48 167
execute if score 6_monument_enemy1 data matches 0 if entity @a[x=-103,y=-59,z=167,dx=10,dy=24,dz=10] run summon drowned -93 -48 167
execute if score 6_monument_enemy1 data matches 0 if entity @a[x=-103,y=-59,z=167,dx=10,dy=24,dz=10] run scoreboard players set 6_monument_enemy1 data 1

#出现怪物2
execute if score 6_monument_enemy2 data matches 0 if entity @a[x=-115,y=-59,z=143,dx=10,dy=24,dz=10] run summon drowned -106 -45 144 0 0 aw:baby
execute if score 6_monument_enemy2 data matches 0 if entity @a[x=-115,y=-59,z=143,dx=10,dy=24,dz=10] run summon drowned -106 -45 152 0 0 aw:baby
execute if score 6_monument_enemy2 data matches 0 if entity @a[x=-115,y=-59,z=143,dx=10,dy=24,dz=10] run scoreboard players set 6_monument_enemy2 data 1

#出现怪物3
execute if score 6_monument_enemy3 data matches 0 if entity @a[x=-151,y=-50,z=155,dx=22,dy=15,dz=10] run summon skeleton -146 -48 164
execute if score 6_monument_enemy3 data matches 0 if entity @a[x=-151,y=-50,z=155,dx=22,dy=15,dz=10] run summon skeleton -146 -48 156
execute if score 6_monument_enemy3 data matches 0 if entity @a[x=-151,y=-50,z=155,dx=22,dy=15,dz=10] run summon skeleton -134 -48 164
execute if score 6_monument_enemy3 data matches 0 if entity @a[x=-151,y=-50,z=155,dx=22,dy=15,dz=10] run summon skeleton -134 -48 156
execute if score 6_monument_enemy3 data matches 0 if entity @a[x=-151,y=-50,z=155,dx=22,dy=15,dz=10] run scoreboard players set 6_monument_enemy3 data 1

#出现怪物4
execute if score 6_monument_enemy4 data matches 0 if entity @a[x=-139,y=-59,z=167,dx=10,dy=10,dz=22] run summon drowned -134 -59 171 0 0 aw:equip
execute if score 6_monument_enemy4 data matches 0 if entity @a[x=-139,y=-59,z=167,dx=10,dy=10,dz=22] run summon drowned -134 -59 178 0 0 aw:equip_baby
execute if score 6_monument_enemy4 data matches 0 if entity @a[x=-139,y=-59,z=167,dx=10,dy=10,dz=22] run summon drowned -134 -59 184 0 0 aw:equip
execute if score 6_monument_enemy4 data matches 0 if entity @a[x=-139,y=-59,z=167,dx=10,dy=10,dz=22] run scoreboard players set 6_monument_enemy4 data 1

#初次进入BOSS战
execute if score 6_monument_boss data matches 0 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run title @a title §l§9大刺鱼
execute if score 6_monument_boss data matches 0 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run scoreboard players set music data 112
execute if score 6_monument_boss data matches 0 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run function music/replay
execute if score 6_monument_boss data matches 0 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon elder_guardian -158 -49 148
execute if score 6_monument_boss data matches 0 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run tp @a -158 -49 143 facing -158 -49 144
execute if score 6_monument_boss data matches 0 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run setblock -122 -47 177 stone_button["button_pressed_bit"=false,"facing_direction"=2]

#打大刺鱼无限回血
execute if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] run effect @a instant_health 1 0 true

#打败大刺鱼
execute if score 6_monument_boss data matches 0 if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] unless entity @e[type=elder_guardian] run scoreboard players set 6_monument_boss data 1
execute if score 6_monument_boss data matches 1 if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] run kill @e[type=elder_guardian]
execute if score 6_monument_boss data matches 1 if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] run effect @a clear
execute if score 6_monument_boss data matches 1 if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] run music play boss_win_start 1 0 play_once
execute if score 6_monument_boss data matches 1 if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] run scoreboard players set music data 113
execute if score 6_monument_boss data matches 1 if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] run function music/play
execute if score 6_monument_boss data matches 1 if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] run fill -159 -48 154 -157 -46 154 air
execute if score 6_monument_boss data matches 1 if entity @a[x=-163,y=-52,z=143,dx=10,dy=10,dz=10] run scoreboard players set 6_monument_boss data 2

#打过大刺鱼后再进入BOSS战
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run title @a title §l§s溺尸之王
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run scoreboard players set music data 112
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run function music/replay
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run summon drowned -161 -47 169 0 0 aw:boss
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run summon drowned -157 -57 165
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run summon drowned -165 -57 165
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run summon drowned -165 -57 173
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run summon drowned -157 -57 173
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] as @a[hasitem={item=shield}] run tag @s add shield
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] as @a[hasitem={item=shield}] run clear @s shield
execute if entity @a[x=-157.5,y=-48,z=157.5,r=1] run tp @a -161 -57 169

#BOSS战失败后再进入
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run title @a title §l§s溺尸之王
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run scoreboard players set music data 112
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run function music/replay
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon drowned -161 -47 169 0 0 aw:boss
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon drowned -157 -57 165
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon drowned -165 -57 165
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon drowned -165 -57 173
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon drowned -157 -57 173
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run fill -169 -57 161 -153 -50 177 air replace gray_glazed_terracotta
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run fill -169 -57 161 -153 -50 177 air replace silver_glazed_terracotta
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run fill -169 -57 161 -153 -50 177 air replace white_glazed_terracotta
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] as @a[hasitem={item=shield}] run tag @s add shield
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] as @a[hasitem={item=shield}] run clear @s shield
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run tp @a -161 -57 169
execute if score 6_monument_boss data matches 2..5 if block -122 -47 177 stone_button["button_pressed_bit"=true,"facing_direction"=2] run setblock -122 -47 177 stone_button["button_pressed_bit"=false,"facing_direction"=2]

#打败BOSS
execute if score 6_monument_boss data matches 5 if entity @a[x=-169,y=-57,z=161,dx=16,dy=12,dz=16] if block -161 -58 169 sea_lantern unless entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=12,dz=16] run fill -162 -57 178 -160 -55 178 air
execute if score 6_monument_boss data matches 5 if entity @a[x=-169,y=-57,z=161,dx=16,dy=12,dz=16] if block -161 -58 169 sea_lantern unless entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=12,dz=16] run music play boss_win_start 1 0 play_once
execute if score 6_monument_boss data matches 5 if entity @a[x=-169,y=-57,z=161,dx=16,dy=12,dz=16] if block -161 -58 169 sea_lantern unless entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=12,dz=16] run scoreboard players set music data 113
execute if score 6_monument_boss data matches 5 if entity @a[x=-169,y=-57,z=161,dx=16,dy=12,dz=16] if block -161 -58 169 sea_lantern unless entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=12,dz=16] run function music/play
execute if score 6_monument_boss data matches 5 if entity @a[x=-169,y=-57,z=161,dx=16,dy=12,dz=16] if block -161 -58 169 sea_lantern unless entity @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=12,dz=16] run scoreboard players set 6_monument_boss data 6

#从BOSS战离开（第一次离开时）
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run function lib/utils/start_dialogue
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run scoreboard players set timeline active 48
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run spawnpoint @a -102 5 188
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run setworldspawn -102 5 188
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run scoreboard players set position data 9
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run scoreboard players set refreshArea data 0
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run scoreboard players set music data 114
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run function music/replay
execute if score 6_monument_boss data matches ..6 if entity @a[x=-160.5,y=-57,z=185.5,r=1] run scoreboard players set 6_monument_boss data 7