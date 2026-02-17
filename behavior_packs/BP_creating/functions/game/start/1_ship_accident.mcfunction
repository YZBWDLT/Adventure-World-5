#出门-出事故沉船
execute if score timeline time matches 20 run effect @a instant_health 1 4
execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§a[我]我的感觉越来越强烈了，莫非就在前方？"}]}
execute if score timeline time matches 100 run summon lightning_bolt -205 30 400
execute if score timeline time matches 160 run summon lightning_bolt -220 30 420
execute if score timeline time matches 220 run summon lightning_bolt -220 30 440
execute if score timeline time matches 310 run effect @a fire_resistance 5 0 true
execute if score timeline time matches 320 at @a run summon lightning_bolt ~~~
execute if score timeline time matches 320 run camera @a fade time 2 1 0 color 0 0 0
execute if score timeline time matches 360 run fill -211 30 449 -200 44 463 air
execute if score timeline time matches 360 run tp @a -238.5 -9 177.5
execute if score timeline time matches 360 run fog @a remove start
execute if score timeline time matches 440 run tellraw @a {"rawtext":[{"text":"§e[？]林乐，你真的要自己一个人出海吗？"}]}
execute if score timeline time matches 520 run tellraw @a {"rawtext":[{"text":"§a[我]魔王刚被消灭不久，这里还需要你们处理剩下的怪物，重建家园。"}]}
execute if score timeline time matches 600 run tellraw @a {"rawtext":[{"text":"§e[？]我们四人，只剩她还在远方被残余魔能所困，不知下落……"}]}
execute if score timeline time matches 680 run tellraw @a {"rawtext":[{"text":"§a[我]没有她破坏魔能，我们也不可能成功，她却自己落于险境。"}]}
execute if score timeline time matches 760 run tellraw @a {"rawtext":[{"text":"§c[？]你一定要平安归来啊，我们等着你！"}]}
execute if score timeline time matches 840 run tellraw @a {"rawtext":[{"text":"§a[我]好，我出发了，一定带她回来……"}]}
execute if score timeline time matches 960 run time set noon
execute if score timeline time matches 960 run weather clear
execute if score timeline time matches 960 run function game/village/refresh
execute if score timeline time matches 1060 run title @a title §e冒险世界
execute if score timeline time matches 1060 run title @a subtitle §l§d筑 梦
execute if score timeline time matches 1160 run title @a title §l§a狂野巴豆
execute if score timeline time matches 1160 run title @a subtitle §c作者
execute if score timeline time matches 1260 run title @a title §l§b一只卑微的量筒
execute if score timeline time matches 1260 run title @a subtitle §6联合作者
execute if score timeline time matches 1360 run tellraw @a {"rawtext":[{"text":"§7请使用1.21.90或更高版本的玩家，将设置的「可访问性-文本背景透明度」调整为0%，「音频-音乐」调整为100，以获得最佳游戏体验"}]}

execute if score timeline time matches 1460 run tellraw @a {"rawtext":[{"text":"§f[？]快醒醒！"}]}
execute if score timeline time matches 1490 run camera @a fade time 0 1 5 color 0 0 0
execute if score timeline time matches 1500 run function lib/modify_states/timeline/enable_lock_camera
execute if score timeline time matches 1500 run tp @a -186 36 130 facing -187 36 130
execute if score timeline time matches 1500 run spawnpoint @a -186 36 130
execute if score timeline time matches 1500 run setworldspawn -186 36 130

#此处插入刷新小镇场景
execute if score timeline time matches 1500 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="王予凡"] aw:remove_immediately
execute if score timeline time matches 1500 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="田萍"] aw:remove_immediately
execute if score timeline time matches 1500 run event entity @e[type=aw:npc,x=-259,y=30,z=101,dx=118,dy=19,dz=90,name="邹鹭遥"] aw:remove_immediately
execute if score timeline time matches 1500 run summon aw:npc -188 36 130 facing -187 36 130 skin_1 "王予凡"
execute if score timeline time matches 1500 run summon aw:npc -202 31 132 facing -201 31 132 skin_2 "邹鹭遥"
execute if score timeline time matches 1500 run clone -259 5 136 -245 21 149 -259 31 121
execute if score timeline time matches 1500 run scoreboard players set music data 11
execute if score timeline time matches 1500 run function music/replay

execute if score timeline time matches 1580 run tellraw @a {"rawtext":[{"text":"§f[王予凡]终于醒了，你已经昏迷一天了。"}]}
execute if score timeline time matches 1660 run tellraw @a {"rawtext":[{"text":"§a[我]能和我解释一下，发生了什么事情吗？"}]}
execute if score timeline time matches 1740 run tellraw @a {"rawtext":[{"text":"§f[王予凡]欢迎来到§d汇灵岛§f，这里是§d筑梦镇§f，我们就住这儿。昨天早上去沙滩的时候我发现你昏迷在那儿，就把你带回来了。"}]}
execute if score timeline time matches 1820 run tellraw @a {"rawtext":[{"text":"§a[我]谢谢你救了我。"}]}
execute if score timeline time matches 1900 run tellraw @a {"rawtext":[{"text":"§f[王予凡]你先好好休息一下，等恢复之后再慢慢问你的具体情况。"}]}
execute if score timeline time matches 1980 run tellraw @a {"rawtext":[{"text":"§f[王予凡]如果你之后想跟别人说话，§d攻击一下§f就可以，别担心不会受伤的。"}]}
execute if score timeline time matches 1980 run event entity @e[type=aw:npc,x=-188,y=36,z=130,r=1] aw:speak
execute if score timeline time matches 2060 run tellraw @a {"rawtext":[{"text":"§f[王予凡]想和我闲聊的话，电脑§d点击右键§f，手机§d长按或者点“闲聊”按钮§f。"}]}
execute if score timeline time matches 2060 run event entity @e[type=aw:npc,x=-188,y=36,z=130,r=1] aw:speak
execute if score timeline time matches 2140 run tellraw @a {"rawtext":[{"text":"§f[王予凡]对话有两种不同方式，千万别忘了啊！"}]}
execute if score timeline time matches 2140 run event entity @e[type=aw:npc,x=-188,y=36,z=130,r=1] aw:point

execute if score timeline time matches 2140 run function lib/modify_states/timeline/disable