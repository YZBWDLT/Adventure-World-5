#完成逍遥矿井，解锁建筑

execute if score timeline time matches 1 run camera @a fade time 1 8 2 color 0 0 0
execute if score timeline time matches 22 run tp @a -164 -58 100
execute if score timeline time matches 25 run event entity @e[type=aw:npc,x=-164,y=-59,z=121,r=1] aw:remove_immediately
execute if score timeline time matches 30 run tp @a -164 22 66 facing -164 22 65
execute if score timeline time matches 35 run summon aw:npc -175 31 61 facing -175 31 62 skin_3 "吕岩"
execute if score timeline time matches 35 run fill -168 24 61 -162 28 61 air replace iron_bars
execute if score timeline time matches 60 run scoreboard players set music data 4
execute if score timeline time matches 60 run function lib/utils/music/replay
execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§a[我]这里已经全部清理完毕了！"}]}
execute if score timeline time matches 120 run tp @a -203 23 138 facing -202 23 138

#此处插入刷新小镇场景
execute if score timeline time matches 120 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="王予凡"] aw:remove_immediately
execute if score timeline time matches 120 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="田萍"] aw:remove_immediately
execute if score timeline time matches 120 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="邹鹭遥"] aw:remove_immediately
execute if score timeline time matches 120 run summon aw:npc -199 31 114 facing -200 31 113 skin_0 "田萍"
execute if score timeline time matches 120 run summon aw:npc -243 31 153 facing -243 31 152 skin_1 "王予凡"
execute if score timeline time matches 120 run summon aw:npc -202 31 186 facing -202 31 185 skin_1 "王予凡"
execute if score timeline time matches 120 run summon aw:npc -227 31 176 facing -228 31 176 skin_1 "王予凡"
execute if score timeline time matches 120 run summon aw:npc -175 31 166 facing -175 31 165 skin_2 "邹鹭遥"
execute if score timeline time matches 120 run function unlock/map
execute if score timeline time matches 120 run function unlock/dock
execute if score timeline time matches 120 run function unlock/house_heart
execute if score timeline time matches 120 run function unlock/house_hint
execute if score timeline time matches 120 run function unlock/house_potion
execute if score timeline time matches 120 run function unlock/color
execute if score timeline time matches 120 run function unlock/billboard

execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§f[吕岩]好，我也该准备出发了。"}]}
execute if score timeline time matches 160 run camera @a set minecraft:free pos -200 45 100 rot 30 0
execute if score timeline time matches 160 run camera @a set minecraft:free ease 12 linear pos -200 45 150 rot 30 0
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§f[吕岩]田萍之前和我说过，小镇房子太少了需要扩建。"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§f[吕岩]现在所有可以搭建的空地都已经规划好了。"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§f[吕岩]不过……我的建筑材料不够用，还需要你帮忙。"}]}
execute if score timeline time matches 400 run camera @a set minecraft:free pos -223 32.5 114 facing -221 31.5 114
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§f[吕岩]如果我有什么能帮得上你的也尽管提。"}]}
execute if score timeline time matches 560 run tp @a -164 22 66 facing -164 22 65
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§a[我]我还想继续探索这个岛，但是我没法过河。"}]}
execute if score timeline time matches 560 run camera @a set minecraft:free pos -212 37 17 facing -200 33 17
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§f[吕岩]放心，§d修桥§f的工作就交给我吧！"}]}
execute if score timeline time matches 640 run function unlock/bridge
execute if score timeline time matches 640 run function unlock/desert_bridge
execute if score timeline time matches 640 run function unlock/pass

execute if score timeline time matches 720 run camera @a clear
execute if score timeline time matches 720 run title @a title §o§a逍遥平原
execute if score timeline time matches 720 run scoreboard players set refreshArea data 0

execute if score timeline time matches 720 run function lib/modify_states/timeline/disable 