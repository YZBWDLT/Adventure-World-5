#每次从BOSS战出口离开都会播放此动画，只有第一次会刷新场景并增加进度

#信息原文：
#林乐，我很高兴能再次见到你，你一定是来找我的吧？
#我被恶魔的残余能量困在了异空间里，这个岛就是幻化出的梦境。
#这里的居民都是我潜在意识的实体产物，他们可以帮助你破解此梦。
#你要去森林、海洋、下界三个区域分别破解三个神殿。
#再从沙漠进入时间神庙，开启最后的道路，消灭镇守梦境的魔物就可以出去了。

execute if score timeline time matches 1 run camera @a fade time 1 1 0 color 0 0 0
execute if score timeline time matches 1 run scoreboard players set music data 34
execute if score timeline time matches 1 run function lib/utils/music/replay
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§7耳边响起模糊的声音……"}]}
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§9[？]林乐……再次……你……"}]}
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§9[？]……恶魔……空间……幻化……"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§9[？]这里的……帮助你……"}]}
execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"§9[？]你要去§d森林、海洋、下界§9……"}]}
execute if score timeline time matches 500 run tellraw @a {"rawtext":[{"text":"§9[？]再从……获取……出去了。"}]}

#此处插入刷新小镇场景
execute if score timeline time matches 500 if score progress data matches 1 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="王予凡"] aw:remove_immediately
execute if score timeline time matches 500 if score progress data matches 1 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="田萍"] aw:remove_immediately
execute if score timeline time matches 500 if score progress data matches 1 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="邹鹭遥"] aw:remove_immediately
execute if score timeline time matches 500 if score progress data matches 1 run summon aw:npc -204 31 109 facing -204 31 110 skin_0 "田萍"
execute if score timeline time matches 500 if score progress data matches 1 run summon aw:npc -197 31 107 facing -198 31 107 skin_1 "王予凡"
execute if score timeline time matches 500 if score progress data matches 1 run summon aw:npc -202 31 186 facing -202 31 185 skin_1 "王予凡"
execute if score timeline time matches 500 if score progress data matches 1 run summon aw:npc -227 31 176 facing -228 31 176 skin_1 "王予凡"
execute if score timeline time matches 500 if score progress data matches 1 run summon aw:npc -179 31 137 facing -180 31 137 skin_2 "邹鹭遥"
execute if score timeline time matches 500 if score progress data matches 1 run scoreboard players set progress data 2

execute if score timeline time matches 580 run title @a title §o§0浮空山
execute if score timeline time matches 580 run spawnpoint @a -286.50 55.50 135.50
execute if score timeline time matches 580 run setworldspawn -286.50 55.50 135.50
execute if score timeline time matches 580 run scoreboard players set position data 1
execute if score timeline time matches 580 run scoreboard players set refreshArea data 0
execute if score timeline time matches 580 run tp @a -286.50 55.50 135.50 facing -286.50 55.50 136.50
execute if score timeline time matches 580 run function lib/utils/stop_dialogue
execute if score timeline time matches 580 run function lib/modify_data/states/timeline/disable