#最终战前对话3

execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§9[？]林乐，我很高兴能再次见到你，你一定是来找我的吧？"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§9[？]我被恶魔的残余能量困在了异空间里，这个岛就是幻化出的梦境。"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§9[？]这里的居民都是我潜在意识的实体产物，他们可以帮助你破解此梦。"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§9[？]你要去森林、海洋、下界三个区域分别破解三个神殿。"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§9[？]再从沙漠进入时间神庙，开启最后的道路，消灭镇守梦境的魔物就可以出去了。"}]}

execute if score timeline time matches 480 run tp @a -202 -60 187 facing -202 -60 186
execute if score timeline time matches 480 run function lib/modify_states/timeline/disable