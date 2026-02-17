#完成海底神殿和邹鹭遥对话-解锁恢复药水

execute if score timeline time matches 20 run scoreboard players set 6_monument_boss data 8
execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]好耶，你通关海底神殿了！"}]}
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]真是太棒了！！！"}]}
execute if score timeline time matches 180 run camera @a set minecraft:free pos 12 61 97 facing 12 61 94
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]自从拿到贝壳之后，酿造水肺的河豚对你来说就没用了。"}]}
execute if score timeline time matches 220 run tp @a 12 60 99
execute if score timeline time matches 260 run clone 12 60 91 12 61 92 12 60 94
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]不过，我研究了新的药水，也可以§d使用河豚§f酿造。"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[邹鹭遥]喝下它，你就可以获得§d超长时间的生命恢复§f了！"}]}

execute if score timeline time matches 400 run tp @a -235 31 140 facing -235 31 136
execute if score timeline time matches 420 run camera @a clear
execute if score timeline time matches 420 run function lib/modify_states/timeline/disable