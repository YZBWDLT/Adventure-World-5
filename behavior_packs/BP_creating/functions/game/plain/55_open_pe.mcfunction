#和倪高志对话-准备去林地府邸

execute if score timeline time matches 1 run kill @e[family=monster]
execute if score timeline time matches 1 run camera @a set minecraft:free ease 2 in_out_quad pos -78 32 32 facing -78 32 31
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"§a[我]我最后的目标就是这里吧！"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"§a[我]但是这门被封住了……这是啥材料啊！"}]}
execute if score timeline time matches 200 run camera @a fade time 1 2 1 color 0 0 0
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§a[我]田萍！田萍！"}]}
execute if score timeline time matches 240 run tp @a -79 31 33 facing -79 31 32
execute if score timeline time matches 240 run camera @a set minecraft:free pos -81 36 36 facing -78 32 29
execute if score timeline time matches 240 run tp @e[type=aw:npc,x=-228,y=31,z=139,r=1] -77 31 30 facing -78 31 29
execute if score timeline time matches 240 run event entity @e[type=aw:npc,x=-77,y=31,z=30,r=1] should_not_see_player
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[田萍]这门好奇怪啊，但我相信我的神镐可以一战。"}]}
execute if score timeline time matches 420 if score emeraldPickaxe itemState matches 0 run tellraw @a {"rawtext":[{"text":"§f[田萍]看我的吧！"}]}
execute if score timeline time matches 420 if score emeraldPickaxe itemState matches 2 run tellraw @a {"rawtext":[{"text":"§f[田萍]把神镐给我，让我来试试！"}]}
execute if score timeline time matches 420 if score emeraldPickaxe itemState matches 2 run scoreboard players set emeraldPickaxe itemState 0
execute if score timeline time matches 460 run replaceitem entity @e[type=aw:npc,x=-77,y=31,z=30,r=1] slot.weapon.mainhand 0 diamond_pickaxe
execute if score timeline time matches 460 run music stop
execute if score timeline time matches 460 run camera @a set minecraft:free ease 5 linear pos -79 33 32 facing -78 32 29

execute if score timeline time matches 465 run playsound hit.stone @a -81 36 36
execute if score timeline time matches 465 run event entity @e[type=aw:npc,x=-77,y=31,z=30,r=1] aw:place_block
execute if score timeline time matches 470 run playsound hit.stone @a -81 36 36
execute if score timeline time matches 475 run playsound hit.stone @a -81 36 36
execute if score timeline time matches 480 run playsound hit.stone @a -81 36 36
execute if score timeline time matches 485 run playsound hit.stone @a -81 36 36
execute if score timeline time matches 490 run playsound hit.stone @a -81 36 36
execute if score timeline time matches 495 run playsound hit.stone @a -81 36 36
execute if score timeline time matches 500 run playsound hit.stone @a -81 36 36
execute if score timeline time matches 504 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 508 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 510 run event entity @e[type=aw:npc,x=-77,y=31,z=30,r=1] aw:place_block
execute if score timeline time matches 512 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 516 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 520 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 524 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 528 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 532 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 540 run playsound hit.stone @a -80 34 34
execute if score timeline time matches 543 run playsound hit.stone @a -79 33 32
execute if score timeline time matches 546 run playsound hit.stone @a -79 33 32
execute if score timeline time matches 549 run playsound hit.stone @a -79 33 32
execute if score timeline time matches 552 run playsound hit.stone @a -79 33 32
execute if score timeline time matches 555 run playsound hit.stone @a -79 33 32
execute if score timeline time matches 555 run event entity @e[type=aw:npc,x=-77,y=31,z=30,r=1] aw:place_block
execute if score timeline time matches 558 run playsound hit.stone @a -79 33 32
execute if score timeline time matches 561 run playsound hit.stone @a -79 33 32
execute if score timeline time matches 564 run playsound hit.stone @a -79 33 32
execute if score timeline time matches 567 run playsound hit.stone @a -79 33 32

execute if score timeline time matches 570 run replaceitem entity @e[type=aw:npc,x=-77,y=31,z=30,r=1] slot.weapon.mainhand 0 air
execute if score timeline time matches 570 run playsound random.break @a -79 33 32
execute if score timeline time matches 570 run fill -78 31 28 -78 32 28 air destroy
execute if score timeline time matches 650 run tellraw @a {"rawtext":[{"text":"§f[田萍]哇！"}]}
execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"§f[田萍]哇哇！"}]}
execute if score timeline time matches 730 run tellraw @a {"rawtext":[{"text":"§f[田萍]哇！"}]}
execute if score timeline time matches 750 run tellraw @a {"rawtext":[{"text":"§f[田萍]哎呀我的神镐！"}]}
execute if score timeline time matches 750 run event entity @e[type=aw:npc,x=-77,y=31,z=30,r=1] aw:sit

execute if score timeline time matches 830 run camera @a clear
execute if score timeline time matches 830 run function music/play
execute if score timeline time matches 830 run function lib/modify_states/timeline/disable