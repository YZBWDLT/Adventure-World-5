# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refresh data matches 0 if entity @a[x=-232.5,y=-29,z=103.5,r=1] run function game/1_mine/refresh

#前往筑梦镇
execute if score timeline active matches 0 if entity @a[x=-232.5,y=-29,z=101.5,r=1] positioned -233 30 103 facing -233 30 104 run function game/village/enter

#在归还神镐前如果搞丢了（没人携带）箱子里就会刷新，归还后失效
execute if score 8_pe_item data matches 1 unless entity @a[hasitem={item=diamond_pickaxe}] if block -257 -31 106 chest if blocks -257 -29 106 -257 -29 106 -257 -31 106 all run clone -257 -32 106 -257 -32 106 -257 -29 106

#如果直接把神镐扔给田萍他会扔回来
execute if entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] if entity @e[type=item,name="神镐",x=-232,y=-30,z=137,dx=4,dy=1,dz=4] run tellraw @a {"rawtext":[{"text":"§f[田萍]神镐不要直接扔，而是§d点击左键或攻击交给我！"}]}
execute if entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] if entity @e[type=item,name="神镐",x=-232,y=-30,z=137,dx=4,dy=1,dz=4] run tp @e[type=item,name="神镐",x=-232,y=-30,z=137,dx=4,dy=1,dz=4] -230 -28 136

#复原挖掘跑酷的方块（2个）
execute if block -255 -41 159 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -250 -42 162 -244 -31 168 -250 -42 151
execute if block -255 -41 159 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -255 -41 159 stone_button["button_pressed_bit"=false,"facing_direction"=1]
execute if block -240 -41 159 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -238 -42 161 -230 -31 169 -238 -42 150
execute if block -240 -41 159 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -240 -41 159 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#进入BOSS战
execute if score 1_mine_boss data matches 0 if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon zombie -219 -49 104
execute if score 1_mine_boss data matches 0 if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon zombie -247 -49 104
execute if score 1_mine_boss data matches 0 if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon zombie -247 -49 132
execute if score 1_mine_boss data matches 0 if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run summon zombie -233 -49 118
execute if score 1_mine_boss data matches 0 if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run title @a title §l§7无尽僵尸
execute if score 1_mine_boss data matches 0 if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run scoreboard players set music data 22
execute if score 1_mine_boss data matches 0 if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run function music/replay
execute if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run tp @a -233 -49 101 facing -233 -49 102
execute if block -233 -28 159 stone_button["button_pressed_bit"=true,"facing_direction"=2] run setblock -233 -28 159 stone_button["button_pressed_bit"=false,"facing_direction"=2]

#BOSS战僵尸全死了会刷新
execute if score 1_mine_boss data matches 0 unless entity @e[type=zombie,x=-250,y=-49,z=101,dx=34,dy=7,dz=34] run summon zombie -233 -49 118

#从BOSS战离开（第二次进入场地再离开时）
execute if score 1_mine_tphelp data matches 2 if entity @a[x=-232.5,y=-49,z=147.5,r=1] positioned -233 30 103 facing -233 30 104 run function game/village/enter