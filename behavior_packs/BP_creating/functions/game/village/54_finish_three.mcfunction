#完成三个神殿，准备去最后的地方

execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§f[田萍]林地府邸、海底神殿、下界要塞你全部完成了啊……"}]}
execute if score timeline time matches 100 run tellraw @a {"rawtext":[{"text":"§f[田萍]林乐，你得到了什么新的信息吗？"}]}
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"text":"§a[我]我听到了一些……我也不太理解的内容，但没告诉我下一步要去哪。"}]}
execute if score timeline time matches 260 run tellraw @a {"rawtext":[{"text":"§f[田萍]啊……这样的话我也没法给你继续指路了。"}]}
execute if score timeline time matches 340 run tellraw @a {"rawtext":[{"text":"§f[田萍]但整个岛你也探索的差不多了吧？"}]}
execute if score timeline time matches 420 run tellraw @a {"rawtext":[{"text":"§f[田萍]我猜测，最后的地牢就在某个§d你还没去过的地方！"}]}
execute if score timeline time matches 480 run camera @a fade time 0.5 1 0.5 color 0 0 0
execute if score timeline time matches 500 run event entity @e[type=aw:npc,x=-231,y=31,z=136,r=1,name="倪高志"] aw:remove_immediately
execute if score timeline time matches 500 run event entity @e[type=aw:npc,x=-235,y=31,z=136,r=1,name="邹鹭遥"] aw:remove_immediately
execute if score timeline time matches 500 run event entity @e[type=aw:npc,x=-229,y=31,z=142,r=1,name="吕岩"] aw:remove_immediately
execute if score timeline time matches 500 run summon aw:npc -205 33 -36 facing -204 33 -36 skin_4 "倪高志"
execute if score timeline time matches 500 run summon aw:npc -214 31 134 facing -215 31 134 skin_2 "邹鹭遥"
execute if score timeline time matches 500 run summon aw:npc -166 37 119 facing -166 37 118 skin_3 "吕岩"
execute if score timeline time matches 500 run scoreboard players set progress data 6
execute if score timeline time matches 500 run function lib/modify_states/timeline/disable