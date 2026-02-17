#林地府邸BOSS为骷髅之王
#每20秒切换一次射击模式

#南瓜显示-陶罐补给
execute if score repmark data matches 0 if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] run setblock -318 -39 -24 aw:decorated_pot_type1
execute if score repmark data matches 0 if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] run setblock -292 -39 -24 aw:decorated_pot_type1
execute if score repmark data matches 0 if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] run scoreboard players set repmark data 1
execute if score repmark data matches 1 unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] run setblock -318 -39 -24 air
execute if score repmark data matches 1 unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] run setblock -292 -39 -24 air
execute if score repmark data matches 1 unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] run scoreboard players set repmark data 0

#周期循环
execute if score timeline time matches 400 run event entity @e[type=aw:skeleton_king] aw:arrow_l
execute if score timeline time matches 400 run tag @e[type=aw:skeleton_king] add arrow_l
execute if score timeline time matches 400 run tag @e[type=aw:skeleton_king] remove arrow_m
execute if score timeline time matches 400 run kill @e[type=arrow]
execute if score timeline time matches 800 run tp @e[type=aw:skeleton_king] -305 -32 -42 0 0
execute if score timeline time matches 800 run event entity @e[type=aw:skeleton_king] aw:arrow_s
execute if score timeline time matches 800 run tag @e[type=aw:skeleton_king] add arrow_s
execute if score timeline time matches 800 run tag @e[type=aw:skeleton_king] remove arrow_l
execute if score timeline time matches 800 run kill @e[type=arrow]
execute if score timeline time matches 1200 run tp @e[type=aw:skeleton_king] -305 -39 -47 0 0
execute if score timeline time matches 1200 run event entity @e[type=aw:skeleton_king] aw:arrow_m
execute if score timeline time matches 1200 run tag @e[type=aw:skeleton_king] add arrow_m
execute if score timeline time matches 1200 run tag @e[type=aw:skeleton_king] remove arrow_s
execute if score timeline time matches 1200 run kill @e[type=arrow]
execute if score timeline time matches 1200 run fill -318 -39 -34 -292 -35 -28 air
execute if score timeline time matches 1200.. run scoreboard players set timeline time 0