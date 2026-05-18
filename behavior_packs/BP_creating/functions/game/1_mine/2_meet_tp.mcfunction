#到达矿洞相应位置-初次见到田萍

execute if score timeline time matches 1 run scoreboard players set emeraldPickaxe itemState 1
execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[田萍]救命啊，有人吗？我被困在这里了。"}]}
execute if score timeline time matches 20 run event entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] aw:wave_hand
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§a[我]啊！这里有人？"}]}
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[田萍]矿洞塌方，我被困了！我的§d神镐§f丢在这附近了，把它找到给我就能挖开这里。"}]}
execute if score timeline time matches 180 run event entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] aw:speak
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[田萍]等等，你是谁？"}]}
execute if score timeline time matches 260 run event entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] aw:confuse
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[田萍]啊，之后再聊这些，先帮我找找我的神镐吧，拿到后点击左键或攻击交给我！"}]}
execute if score timeline time matches 340 run event entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] aw:point
execute if score timeline time matches 340 run function lib/utils/stop_dialogue
execute if score timeline time matches 340 run function lib/modify_data/states/timeline/disable