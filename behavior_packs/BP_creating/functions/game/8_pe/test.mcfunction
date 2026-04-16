# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-245.5,y=-55,z=57.5,r=1] run function game/8_pe/refresh

#前往旭日沙漠
execute if entity @a[x=-245.5,y=-55,z=59.5,r=1] run title @a title §l§o§6旭日沙漠
execute if entity @a[x=-245.5,y=-55,z=59.5,r=1] run spawnpoint @a -78 31 23
execute if entity @a[x=-245.5,y=-55,z=59.5,r=1] run setworldspawn -78 31 23
execute if entity @a[x=-245.5,y=-55,z=59.5,r=1] run scoreboard players set position data 4
execute if entity @a[x=-245.5,y=-55,z=59.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-245.5,y=-55,z=59.5,r=1] run tp @a -78 31 23 facing -78 31 24

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-237.5,y=-52.5,z=24.5,r=2] run tp @a -238 -54 25 facing -238 -54 24
execute if entity @e[type=aw:wind_pearl,x=-247.5,y=-53.5,z=25.5,r=1.5] run tp @a -248 -55 25 facing -249 -55 25
execute if entity @e[type=aw:wind_pearl,x=-238.5,y=-53.5,z=0.5,r=1.5] run tp @a -239 -55 0 facing -238 -55 0

#清除掉出场地的玩家
kill @a[x=-220,y=-28,z=-11,dx=8,dy=1,dz=6]
kill @a[x=-248,y=-28,z=-6,dx=6,dy=1,dz=4]
kill @a[x=-220,y=-28,z=29,dx=4,dy=1,dz=4]
kill @a[x=-244,y=-28,z=23,dx=4,dy=1,dz=4]
kill @a[x=-247,y=-28,z=34,dx=19,dy=1,dz=3]
kill @a[x=-220,y=-28,z=54,dx=4,dy=1,dz=6]

#前往上层
execute if entity @a[x=-237.5,y=-55,z=58.5,r=1] at @a positioned -237.5 -25 58.5 facing ^^^1 run function game/8_pe/up
execute if entity @a[x=-237.5,y=-55,z=16.5,r=1] at @a positioned -237.5 -25 16.5 facing ^^^1 run function game/8_pe/up
execute if entity @a[x=-205.5,y=-55,z=32.5,r=1] at @a positioned -205.5 -25 32.5 facing ^^^1 run function game/8_pe/up
execute if entity @a[x=-213.5,y=-55,z=16.5,r=1] at @a positioned -213.5 -25 16.5 facing ^^^1 run function game/8_pe/up
execute if entity @a[x=-213.5,y=-55,z=0.5,r=1] at @a positioned -213.5 -25 0.5 facing ^^^1 run function game/8_pe/up
execute if entity @a[x=-205.5,y=-55,z=0.5,r=1] at @a positioned -205.5 -25 0.5 facing ^^^1 run function game/8_pe/up
execute if entity @a[x=-229.5,y=-55,z=56.5,r=1] at @a positioned -229.5 -25 56.5 facing ^^^1 run function game/8_pe/up
execute if entity @a[x=-245.5,y=-55,z=8.5,r=1] at @a positioned -245.5 -25 8.5 facing ^^^1 run function game/8_pe/up

#前往下层
execute if entity @a[x=-245.5,y=-27.5,z=32.5,r=1] at @a positioned -245.5 -29.5 32.5 facing ^^^1 run function game/8_pe/down
execute if entity @a[x=-229.5,y=-27.5,z=32.5,r=1] at @a positioned -229.5 -29.5 32.5 facing ^^^1 run function game/8_pe/down
execute if entity @a[x=-221.5,y=-27.5,z=24.5,r=1] at @a positioned -221.5 -29.5 24.5 facing ^^^1 run function game/8_pe/down
execute if entity @a[x=-205.5,y=-27.5,z=40.5,r=1] at @a positioned -205.5 -29.5 40.5 facing ^^^1 run function game/8_pe/down
execute if entity @a[x=-237.5,y=-27.5,z=-7.5,r=1] at @a positioned -237.5 -29.5 -7.5 facing ^^^1 run function game/8_pe/down
execute if entity @a[x=-221.5,y=-27.5,z=-7.5,r=1] at @a positioned -221.5 -29.5 -7.5 facing ^^^1 run function game/8_pe/down
execute if entity @a[x=-205.5,y=-27.5,z=56.5,r=1] at @a positioned -205.5 -29.5 56.5 facing ^^^1 run function game/8_pe/down
execute if entity @a[x=-245.5,y=-27.5,z=-7.5,r=1] at @a positioned -245.5 -29.5 -7.5 facing ^^^1 run function game/8_pe/down

#不要让搭建出界
fill -229 -55 -27 -223 -49 -27 air
fill -229 -55 -27 -229 -49 -21 air
fill -223 -55 -27 -223 -49 -21 air
fill -229 -55 -21 -223 -49 -21 air
fill -229 -49 -27 -223 -49 -21 air

#开始搭建反应堆
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 0 if entity @a[hasitem={item=aw:old_gold_block,quantity=4}] if entity @a[hasitem={item=aw:nether_reactor_core}] run scoreboard players set 8_pe_boss data 1
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 0 run tellraw @a {"rawtext":[{"text":"§e材料不足！需要□×4和☯×1！"}]}
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 run clear @a aw:old_gold_block
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 run clear @a aw:nether_reactor_core
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 run clear @a aw:old_cobblestone
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 positioned -226 -54 -35 run give @p aw:old_gold_block 4 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["bedrock","aw:old_gold_block","aw:nether_reactor_core","aw:old_cobblestone"]}}
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 positioned -226 -54 -35 run give @p aw:nether_reactor_core 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["bedrock","aw:old_gold_block","aw:nether_reactor_core","aw:old_cobblestone"]}}
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 positioned -226 -54 -35 run give @p aw:old_cobblestone 14 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["bedrock","aw:old_gold_block","aw:nether_reactor_core","aw:old_cobblestone"]}}
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 run function lib/modify_states/timeline/enable_time_lapse
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 run function lib/utils/start_dialogue
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 run scoreboard players set timeline active 52
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 run camera @a fade time 0.5 1 0.5 color 0 0 0
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 0 run setblock -226 -54 -35 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -226 -54 -35 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 8_pe_boss data matches 1 run setblock -226 -54 -35 air

#从BOSS战离开（第二次进入场地再离开时）
execute if score 8_pe_boss data matches 3 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run title @a title §l§o§6旭日沙漠
execute if score 8_pe_boss data matches 3 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run spawnpoint @a -78 31 23
execute if score 8_pe_boss data matches 3 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run setworldspawn -78 31 23
execute if score 8_pe_boss data matches 3 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run scoreboard players set position data 4
execute if score 8_pe_boss data matches 3 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run scoreboard players set refreshArea data 0
execute if score 8_pe_boss data matches 3 if entity @a[x=-223.5,y=-22,z=-12.5,r=1] run tp @a -78 31 23 facing -78 31 24

#南瓜显示-牌子1
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -246 -25 0 air run clone -246 -27 0 -246 -27 0 -246 -25 0
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -246 -25 0 air run setblock -246 -25 0 air

#南瓜显示-牌子2
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -206 -25 8 air run clone -206 -27 8 -206 -27 8 -206 -25 8
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -206 -25 8 air run setblock -206 -25 8 air

#南瓜显示-牌子3
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -212 -25 24 air run clone -212 -27 24 -212 -27 24 -212 -25 24
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] unless block -212 -25 24 air run setblock -212 -25 24 air