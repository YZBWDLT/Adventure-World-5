#拿到神镐和田萍对话-归还神镐开路

execute if score timeline time matches 1 run scoreboard players set emeraldPickaxe itemState 0
execute if score timeline time matches 1 run setblock -257 -29 106 air
execute if score timeline time matches 1 run music play solve_puzzle 1 0 play_once
execute if score timeline time matches 1 run function lib/utils/music/queue
execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[田萍]谢谢！我终于可以出去了，你叫什么名字？"}]}
execute if score timeline time matches 20 run event entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] aw:applause
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§a[我]我叫林乐，为了寻找朋友而出海，遭遇风暴来到了岛上。"}]}
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[田萍]这样啊，我先上去了，之后我召集大家一起商量关于你的事吧！"}]}
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[田萍]顺便说一句，我背后这矿洞§d深处§f特别诡异，好像藏了什么东西。"}]}
execute if score timeline time matches 260 run event entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] aw:think
execute if score timeline time matches 340 run fill -233 -29 136 -233 -28 136 air destroy
execute if score timeline time matches 340 run event entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] aw:remove_immediately
execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"§a[我]深处好像还能走？看看那里还有什么。"}]}
execute if score timeline time matches 420 run function lib/utils/stop_dialogue 
execute if score timeline time matches 420 run function lib/modify_data/states/timeline/disable