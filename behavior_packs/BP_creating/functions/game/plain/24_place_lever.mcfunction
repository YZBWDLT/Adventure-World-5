#拉杆放歪了
execute if score timeline time matches 40 run tellraw @a {"rawtext":[{"text":"§a[我]哎呀，放歪了……"}]}
execute if score timeline time matches 79 if entity @a[x=-238,y=20,z=-15,dx=0,dy=9.5,dz=0] run scoreboard players set timeline time 81
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§a[我]不行，我不能接受，重新放！"}]}
execute if score timeline time matches 80 run setblock -237 31 -15 air
execute if score timeline time matches 80 positioned -237 30 -15 run give @p lever 1 0 {"minecraft:can_place_on": { "blocks": ["aw:key2"] }}
execute if score timeline time matches 80 run scoreboard players set repmark data 0
execute if score timeline time matches 80 run function lib/utils/stop_dialogue 
execute if score timeline time matches 80 run function lib/modify_data/states/timeline/disable
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§a[我]不过我好像成功进来了？"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§a[我]不行，不摆正拉杆我不舒服。"}]}
execute if score timeline time matches 160 run tp @a -239 31 -15 facing -237 30 -15
execute if score timeline time matches 160 run setblock -237 31 -15 lever["lever_direction"="up_north_south"]
execute if score timeline time matches 160 run scoreboard players set repmark data 0
execute if score timeline time matches 160 run function lib/utils/stop_dialogue 
execute if score timeline time matches 160 run function lib/modify_data/states/timeline/disable
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§a[我]水下也能放钥匙啊？"}]}
execute if score timeline time matches 280 run tellraw @a {"rawtext":[{"text":"§a[我]怎么有种不祥的预感……？"}]}
execute if score timeline time matches 360 run effect @a resistance 5 4 true
execute if score timeline time matches 360 run effect @a fire_resistance 5 0 true
execute if score timeline time matches 360 at @a run summon lightning_bolt ~~~
execute if score timeline time matches 360 run tellraw @a {"rawtext":[{"text":"§a[我]哎呀呀呀呀呀漏电了漏电了！"}]}
execute if score timeline time matches 380 at @a run summon lightning_bolt ~~~
execute if score timeline time matches 400 at @a run summon lightning_bolt ~~~
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§a[我]快拆下来拆下来！"}]}
execute if score timeline time matches 420 at @a run summon lightning_bolt ~~~
execute if score timeline time matches 440 run setblock -236 30 -15 water
execute if score timeline time matches 440 positioned -237 30 -15 run give @p lever 1 0 {"minecraft:can_place_on": { "blocks": ["aw:key2"] }}
execute if score timeline time matches 440 run scoreboard players set repmark data 0
execute if score timeline time matches 440 run function lib/utils/stop_dialogue 
execute if score timeline time matches 440 run function lib/modify_data/states/timeline/disable