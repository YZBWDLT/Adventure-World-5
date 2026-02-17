#完成林地府邸和倪高志对话-解锁南瓜祝福

execute if score timeline time matches 20 run scoreboard players set 5_mansion_boss data 4
execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[倪高志]你完成林地府邸了，非常好。"}]}
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§f[倪高志]离你找到战友的目标又近了一步！"}]}
execute if score timeline time matches 180 run camera @a set minecraft:free pos -190 36 10 facing -194 34 4
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[倪高志]这样的话，我就可以全部开发南瓜的潜能了。"}]}
execute if score timeline time matches 220 run tp @a -192 33 15
execute if score timeline time matches 260 run clone -198 20 -3 -190 27 6 -198 31 -3
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[倪高志]我准备了一个新建筑来激活南瓜祝福。"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[倪高志]只要开启，你就§d永远不会再饥饿了！"}]}

execute if score timeline time matches 400 run tp @a -231 31 140 facing -231 31 136
execute if score timeline time matches 420 run camera @a clear
execute if score timeline time matches 420 run function lib/modify_states/timeline/disable