#最终战前对话4

execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§9[？]勇气贤者————林乐，欢迎你的到来。"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§9[华梦言]我是空间贤者————华梦言，曾经和你一起并肩作战的战友。"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§9[华梦言]还有时间贤者————田英，智慧贤者————米云溪。"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§9[华梦言]我们以前一起封印了恶魔，但作为代价也进入了封印。"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§9[华梦言]恶魔在海中央存储了大量魔力，我最早突破封印来到这里将其破坏。"}]}
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§9[华梦言]如此一来恶魔实力大削，想必你早就将其消灭了。"}]}
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§9[华梦言]作为代价，我也被困在了这里，等着你们来救我。"}]}
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§9[华梦言]这岛是魔力所形成的梦境，曾经是一片荒凉，毫无生机。"}]}
execute if score timeline time matches 720 run tellraw @a {"rawtext":[{"text":"§9[华梦言]但我不会认输的，我的部分意识化作了岛上的居民，指引着你前进。"}]}
execute if score timeline time matches 800 run tellraw @a {"rawtext":[{"text":"§9[华梦言]只剩下最后的梦境镇守怪物了……消灭它，我们就都能从此处解放出去了。"}]}

#此处还要增加前往末地，准备最终BOSS战的内容
execute if score timeline time matches 880 run scoreboard players set 9_the_end_story data 1
execute if score timeline time matches 880 in the_end run function game/the_end/enter
execute if score timeline time matches 880 run function lib/modify_states/timeline/disable