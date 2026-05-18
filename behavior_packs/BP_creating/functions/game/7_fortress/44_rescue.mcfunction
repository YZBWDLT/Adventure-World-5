# ===== 把田萍和王予凡救出来 =====

execute if score timeline time matches 1 run tp @e[family=monster] -296 -55 60
execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[王予凡]林乐！你终于来救我们了！"}]}
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§a[我]何方妖孽！这岛上的怪物怎么都学会变身了！"}]}
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[王予凡]不是怪物！真的是我！"}]}
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§a[我]你去帮我把这里的建筑材料都找到我就相信你。"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[王予凡]不！我拒绝啊（；´д｀）ゞ"}]}
execute if score timeline time matches 340 run event entity @e[type=aw:npc,x=-263,y=-49,z=59,r=1] aw:shake_head
execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"§a[我]真的是你们啊，这是怎么回事？"}]}
execute if score timeline time matches 500 run tellraw @a {"rawtext":[{"text":"§f[田萍]传送门位置很方便，你激活后我们也想进来看看。"}]}
execute if score timeline time matches 580 run tellraw @a {"rawtext":[{"text":"§f[田萍]这里有把§d水枪§f，可以很方便地§d灭火和灭岩浆§f。"}]}
execute if score timeline time matches 660 run tellraw @a {"rawtext":[{"text":"§f[田萍]要塞的§d三层各有一个灵魂篝火§f，我们到这里时火§d全熄灭§f了。"}]}
execute if score timeline time matches 740 run tellraw @a {"rawtext":[{"text":"§f[田萍]然后整个要塞就§d红蓝切换§f了，只能等有人把篝火再§d全点燃§f。"}]}
execute if score timeline time matches 820 run tellraw @a {"rawtext":[{"text":"§f[田萍]要塞还有很多机关等待破解，你有打火石，水枪也交给你吧。"}]}
execute if score timeline time matches 820 run event entity @e[type=aw:npc,x=-265,y=-49,z=61,r=1] aw:point
execute if score timeline time matches 860 run camera @a fade time 0.5 1 0.5 color 0 0 0
execute if score timeline time matches 880 run tp @e[type=aw:npc,x=-265,y=-49,z=61,r=1] -270 -49 54 facing -271 -49 54
execute if score timeline time matches 880 run tp @e[type=aw:npc,x=-263,y=-49,z=59,r=1] -270 -49 52 facing -271 -49 52
execute if score timeline time matches 880 run clone -266 -49 52 -265 -48 54 -274 -49 52
execute if score timeline time matches 900 run function lib/utils/stop_dialogue 
execute if score timeline time matches 900 run function lib/modify_data/states/timeline/disable