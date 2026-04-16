# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refreshArea data matches 0 if entity @a[x=-185.5,y=36,z=130.5,r=1] run function area/village/refresh
execute if score refreshArea data matches 0 if entity @a[x=-232.5,y=30,z=103.5,r=1] run function area/village/refresh
execute if score refreshArea data matches 0 if entity @a[x=-286.5,y=55.5,z=135.5,r=1] run function area/village/refresh
execute if score refreshArea data matches 0 if entity @a[x=-198.5,y=33,z=103.5,r=1] run function area/village/refresh
execute if score refreshArea data matches 0 if entity @a[x=-243.5,y=31,z=115.5,r=1] run function area/village/refresh
execute if score refreshArea data matches 0 if entity @a[x=-166.5,y=31,z=180.5,r=1] run function area/village/refresh
execute if score refreshArea data matches 0 if entity @a[x=-142.5,y=31,z=166.5,r=1] run function area/village/refresh
execute if score refreshArea data matches 0 if entity @a[x=-239.5,y=31,z=139.5,r=1] run function area/village/refresh

#御风珠传送
execute if entity @e[type=aw:wind_pearl,x=-280.5,y=59.5,z=129.5,r=1.5] run tp @a -281 58 129 facing -282 58 129
execute if entity @e[type=aw:wind_pearl,x=-142.5,y=38.5,z=165.5,r=2] run tp @a -144 37 165 facing -143 37 165

#补充药水（治疗药水）
execute if block -219 32 132 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -219 32 132 as @p run give @s[hasitem={item=glass_bottle}] aw:potion_heal
execute if block -219 32 132 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -219 32 132 as @p run clear @s glass_bottle 0 1
execute if block -219 32 132 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -219 32 132 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#补充药水（满血药水）
execute if block -176 36 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -176 36 147 as @p run give @s[hasitem={item=glass_bottle}] aw:potion_full
execute if block -176 36 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -176 36 147 as @p run clear @s glass_bottle 0 1
execute if block -176 36 147 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -176 36 147 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#前往一号大矿洞
execute if entity @a[x=-232.5,y=29,z=101.5,r=1] run title @a title §l§7一号大矿洞
execute if entity @a[x=-232.5,y=29,z=101.5,r=1] run spawnpoint @a -233 -29 103
execute if entity @a[x=-232.5,y=29,z=101.5,r=1] run setworldspawn -233 -29 103
execute if entity @a[x=-232.5,y=29,z=101.5,r=1] run scoreboard players set position data 2
execute if entity @a[x=-232.5,y=29,z=101.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-232.5,y=29,z=101.5,r=1] run tp @a -233 -29 103 facing -233 -29 104

#跑酷游戏规则
execute if block -270 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b在尽可能短的时间内完成跑酷吧，只要完成跑酷就有奖励哦！用时除以20就是秒数。"}]}
execute if block -270 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches ..1 run tellraw @a {"rawtext":[{"text":"§b奖励：木材×1"}]}
execute if block -270 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches 2.. run tellraw @a {"rawtext":[{"text":"§b奖励：木材×2"}]}
execute if block -270 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -270 69 158 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#跑酷最佳成绩
execute if block -276 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b跑酷天堂-你的最短用时："},{"score":{"name":"parkour","objective":"data"}}]}
execute if block -276 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -276 69 158 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#开始跑酷
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 6
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -61 67 183
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -61 67 183
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b跑酷开始！想退出可以回到起点按按钮！"}]}
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 15
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function music/replay
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -61 67 183 facing -60 67 183
execute if block -273 69 158 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -273 69 158 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#前往浮空峰遗迹
execute if entity @a[x=-286.5,y=56,z=133.5,r=1] run title @a title §0浮空峰遗迹
execute if entity @a[x=-286.5,y=56,z=133.5,r=1] run spawnpoint @a -287 -13 149
execute if entity @a[x=-286.5,y=56,z=133.5,r=1] run setworldspawn -287 -13 149
execute if entity @a[x=-286.5,y=56,z=133.5,r=1] run scoreboard players set position data 3
execute if entity @a[x=-286.5,y=56,z=133.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-286.5,y=56,z=133.5,r=1] run tp @a -287 -13 149 facing -287 -13 146

#前往逍遥平原
execute if entity @a[x=-199.5,y=33,z=101.5,r=1] positioned -198.5 33 97.5 facing -198.5 33 96.5 run function game/plain/enter

#前往冰上划船
execute if block -211 32 188 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 16
execute if block -211 32 188 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function music/replay
execute if block -211 32 188 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -35 64 83 facing -35 64 84
execute if block -211 32 188 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -211 32 188 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#从冰上划船回去
execute if block -33 65 83 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 14
execute if block -33 65 83 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function music/replay
execute if block -33 65 83 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -213 31 188 facing -213 31 187
execute if block -33 65 83 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -33 65 83 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#看到超级小的树
execute if block -39 65 81 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§a[我]哈哈哈哈哈哈怎么会有这么小的树啊哈哈哈哈哈哈笑死我了"}]}
execute if block -39 65 81 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -39 65 81 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#划船游戏规则
execute if block -33 65 94 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b划船绕赛道§d三圈§b完成竞赛！注意方向别跑反了，如果要中途退出就把船打掉。"}]}
execute if block -33 65 94 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches ..1 run tellraw @a {"rawtext":[{"text":"§b奖励：彩岩×1"}]}
execute if block -33 65 94 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score 7_fortress_boss data matches 2.. run tellraw @a {"rawtext":[{"text":"§b奖励：彩岩×2"}]}
execute if block -33 65 94 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -33 65 94 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#划船最佳成绩
execute if block -33 65 100 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b冰上划船-你的最短用时："},{"score":{"name":"boat","objective":"data"}}]}
execute if block -33 65 100 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -33 65 100 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#开始划船
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set boat_progress data 0
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set timeline active 18
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function lib/modify_states/timeline/enable_time_lapse
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run spawnpoint @a -52 60 118
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setworldspawn -52 60 118
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§b冰上划船开始！绕赛道§d三圈§b完成比赛！打掉船可以退出！"}]}
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run scoreboard players set music data 17
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run function music/replay
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -52 60 118 facing -51 60 118
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run summon boat -50 60 118
execute if block -33 65 97 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -33 65 97 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#建筑修复
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[吕岩]都修好了，小心那些容易坏掉的装饰，尤其是花盆和画。"}]}
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] if block -224 31 114 stonebrick run event entity @e[type=aw:npc,x=-215,y=32,z=112,r=1] aw:remove_immediately
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] if block -224 31 114 stonebrick run structure load build:map -230 31 103
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] if block -176 31 153 stonebrick run structure load build:house_potion -178 29 145
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] if block -172 31 171 stonebrick run structure load build:station_south -191 30 168
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] if block -153 32 159 stonebrick run clone -226 -9 181 -226 -9 181 -153 33 155
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] if block -194 32 158 stonebrick run clone -226 -9 182 -226 -8 182 -193 31 150
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -226 -9 179 -226 -9 179 -188 32 133
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run clone -226 -9 180 -226 -9 180 -222 32 132
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run kill @e[type=item]
execute if block -228 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -228 32 180 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#筑梦站进入地铁
execute if block -244 32 119 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -233 -15 189 facing -233 -15 188 run function game/start/enter
execute if block -244 32 119 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -244 32 119 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#筑梦南站进入地铁
execute if block -162 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] positioned -233 -15 189 facing -233 -15 188 run function game/start/enter
execute if block -162 32 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -162 32 180 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#南瓜显示-码头心之碎片
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -219 32 175 stonebrick if block -214 33 183 air run tp @e[type=aw:heart_piece,x=-231,y=28,z=160,r=1] -214 34 183
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -219 32 175 stonebrick if block -214 33 183 air run setblock -214 33 183 gold_block
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -219 32 175 stonebrick if block -214 33 183 gold_block run tp @e[type=aw:heart_piece,x=-214,y=34,z=183,r=1] -231 28 160
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -219 32 175 stonebrick if block -214 33 183 gold_block run setblock -214 33 183 air

#南瓜显示-浮空山地洞
execute if entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -298 34 135 grass run setblock -298 34 135 air
execute unless entity @a[hasitem={item=carved_pumpkin,location=slot.armor.head}] if block -298 34 135 air run setblock -298 34 135 grass

#附魔耐久
execute if block -170 52 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run enchant @a unbreaking 3
execute if block -170 52 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -170 52 180 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#附魔经验修补
execute if block -165 52 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run enchant @a mending 1
execute if block -165 52 180 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -165 52 180 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#生成经验瓶
execute if score tick time matches 0..2 if entity @a[x=-168,y=51,z=183,dx=3,dy=1,dz=3] run summon xp_bottle -167.0 51.0 185.0

#前往溟海
execute if entity @a[x=-140.5,y=31,z=166.5,r=1] run title @a title §l§9溟海
execute if entity @a[x=-140.5,y=31,z=166.5,r=1] run spawnpoint @a -137 31 166
execute if entity @a[x=-140.5,y=31,z=166.5,r=1] run setworldspawn -137 31 166
execute if entity @a[x=-140.5,y=31,z=166.5,r=1] run scoreboard players set position data 9
execute if entity @a[x=-140.5,y=31,z=166.5,r=1] run scoreboard players set refreshArea data 0
execute if entity @a[x=-140.5,y=31,z=166.5,r=1] run tp @a -137 31 166 facing -136 31 166

#对话-返回
execute if block -228 -23 185 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tp @a -232 31 139 facing -231 31 139
execute if block -228 -23 185 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -228 -23 185 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#对话-林地府邸
execute if block -234 -23 188 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]林地府邸在汇灵岛西北角的§d明月森林§f中，贸然进入很容易迷路，而且听说里面找不到任何刌民……"}]}
execute if block -234 -23 188 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -234 -23 188 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#对话-海底神殿
execute if block -234 -23 186 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]海底神殿在汇灵岛东南角的§d溟海§f里，里面没有可怕的激光刺鱼，但溺尸更可怕。"}]}
execute if block -234 -23 186 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -234 -23 186 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#对话-下界要塞
execute if block -234 -23 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]想去下界要塞需要§d传送门§f，你要问问吕岩怎么做才行。"}]}
execute if block -234 -23 184 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -234 -23 184 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#对话-倪高志
execute if block -227 -23 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]我一直以为倪高志只是爱种南瓜，但听他说这是进入森林的办法，我推荐你去§d买卖村§f的南瓜田看看。"}]}
execute if block -227 -23 181 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -227 -23 181 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#对话-邹鹭遥
execute if block -227 -23 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]邹鹭遥说需要河豚，你想要的话去问问王予凡？他的§d冒险中心§f里有各种各样的东西。"}]}
execute if block -227 -23 183 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -227 -23 183 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#对话-吕岩
execute if block -227 -23 187 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]吕岩很厉害，他能搭各种建筑。说起来，我在§d溟海§f好像看到过一个类似传送门的东西啊。"}]}
execute if block -227 -23 187 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -227 -23 187 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#对话-王予凡
execute if block -227 -23 189 stone_button["button_pressed_bit"=true,"facing_direction"=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]我和王予凡家地板下面藏了一些好东西，你可能需要，去找他聊聊天吧！"}]}
execute if block -227 -23 189 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -227 -23 189 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#对话-借还神镐
execute if block -234 -25 182 lapis_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score emeraldPickaxe itemState matches 0 run tellraw @a {"rawtext":[{"text":"§f[田萍]神镐可以§d破坏黑曜石且能水下挖掘§f，不要把它带进那些神殿哦。"}]}
execute if block -234 -25 182 lapis_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score emeraldPickaxe itemState matches 0 run scoreboard players set emeraldPickaxe itemState 1
execute if block -234 -25 182 lapis_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score emeraldPickaxe itemState matches 2 run tellraw @a {"rawtext":[{"text":"§f[田萍]需要的时候再来找我借吧。"}]}
execute if block -234 -25 182 lapis_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score emeraldPickaxe itemState matches 2 run scoreboard players set emeraldPickaxe itemState 0
execute if block -234 -25 182 lapis_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] if score emeraldPickaxe itemState matches 1 run scoreboard players set emeraldPickaxe itemState 2
execute if block -234 -25 182 lapis_block if block -234 -23 182 stone_button["button_pressed_bit"=true,"facing_direction"=1] run setblock -234 -23 182 stone_button["button_pressed_bit"=false,"facing_direction"=1]

#进入下界要塞
execute unless score emeraldPickaxe itemState matches 2 if block -243 35 139 obsidian if entity @a[x=-242.5,y=32,z=139.5,r=1] run title @a title §l§c下界要塞
execute unless score emeraldPickaxe itemState matches 2 if block -243 35 139 obsidian if entity @a[x=-242.5,y=32,z=139.5,r=1] run spawnpoint @a -316 -49 60
execute unless score emeraldPickaxe itemState matches 2 if block -243 35 139 obsidian if entity @a[x=-242.5,y=32,z=139.5,r=1] run setworldspawn -316 -49 60
execute unless score emeraldPickaxe itemState matches 2 if block -243 35 139 obsidian if entity @a[x=-242.5,y=32,z=139.5,r=1] run scoreboard players set position data 12
execute unless score emeraldPickaxe itemState matches 2 if block -243 35 139 obsidian if entity @a[x=-242.5,y=32,z=139.5,r=1] run scoreboard players set refreshArea data 0
execute unless score emeraldPickaxe itemState matches 2 if block -243 35 139 obsidian if entity @a[x=-242.5,y=32,z=139.5,r=1] run tp @a -316 -49 60 facing -315 -49 60

execute if score emeraldPickaxe itemState matches 2 if block -243 35 139 obsidian if entity @a[x=-242.5,y=32,z=139.5,r=1] run title @a actionbar §e别忘了田萍说的，神镐不能带进去哦

#旅馆音乐
execute if score music data matches 14 if entity @a[x=-224,y=31,z=129,dx=1,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-224,y=31,z=129,dx=1,dy=2,dz=2] run scoreboard players set music data 4
execute if score repmusic data matches 1 if entity @a[x=-224,y=31,z=129,dx=1,dy=2,dz=2] run function music/replay

execute if score music data matches 4 if entity @a[x=-227,y=31,z=129,dx=1,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-227,y=31,z=129,dx=1,dy=2,dz=2] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-227,y=31,z=129,dx=1,dy=2,dz=2] run function music/replay

execute if score music data matches 14 if entity @a[x=-218,y=36,z=127,dx=1,dy=3,dz=6] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-218,y=36,z=127,dx=1,dy=3,dz=6] run scoreboard players set music data 4
execute if score repmusic data matches 1 if entity @a[x=-218,y=36,z=127,dx=1,dy=3,dz=6] run function music/replay

execute if score music data matches 4 if entity @a[x=-221,y=36,z=127,dx=1,dy=3,dz=6] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-221,y=36,z=127,dx=1,dy=3,dz=6] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-221,y=36,z=127,dx=1,dy=3,dz=6] run function music/replay

#冒险中心音乐
execute if score music data matches 14 if entity @a[x=-235,y=30,z=175,dx=4,dy=7,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-235,y=30,z=175,dx=4,dy=7,dz=2] run scoreboard players set music data 5
execute if score repmusic data matches 1 if entity @a[x=-235,y=30,z=175,dx=4,dy=7,dz=2] run function music/replay

execute if score music data matches 5 if entity @a[x=-235,y=30,z=171,dx=4,dy=7,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-235,y=30,z=171,dx=4,dy=7,dz=2] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-235,y=30,z=171,dx=4,dy=7,dz=2] run function music/replay

#餐厅音乐
execute if score music data matches 14 if entity @a[x=-201,y=31,z=179,dx=3,dy=3,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-201,y=31,z=179,dx=3,dy=3,dz=2] run scoreboard players set music data 5
execute if score repmusic data matches 1 if entity @a[x=-201,y=31,z=179,dx=3,dy=3,dz=2] run function music/replay

execute if score music data matches 5 if entity @a[x=-201,y=31,z=175,dx=3,dy=3,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-201,y=31,z=175,dx=3,dy=3,dz=2] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-201,y=31,z=175,dx=3,dy=3,dz=2] run function music/replay

execute if score music data matches 14 if entity @a[x=-197,y=31,z=187,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-197,y=31,z=187,dx=2,dy=2,dz=1] run scoreboard players set music data 5
execute if score repmusic data matches 1 if entity @a[x=-197,y=31,z=187,dx=2,dy=2,dz=1] run function music/replay

execute if score music data matches 5 if entity @a[x=-197,y=31,z=190,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-197,y=31,z=190,dx=2,dy=2,dz=1] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-197,y=31,z=190,dx=2,dy=2,dz=1] run function music/replay

#制图室音乐
execute if block -229 32 117 stonebrick if score music data matches 14 if entity @a[x=-224,y=32,z=113,dx=1,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-224,y=32,z=113,dx=1,dy=2,dz=2] run scoreboard players set music data 5
execute if score repmusic data matches 1 if entity @a[x=-224,y=32,z=113,dx=1,dy=2,dz=2] run function music/replay

execute if block -229 32 117 stonebrick if score music data matches 5 if entity @a[x=-227,y=32,z=113,dx=1,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-227,y=32,z=113,dx=1,dy=2,dz=2] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-227,y=32,z=113,dx=1,dy=2,dz=2] run function music/replay

#烟囱内音乐
execute if score music data matches 14 if entity @a[x=-187,y=27,z=134,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-187,y=27,z=134,dx=2,dy=2,dz=2] run scoreboard players set music data 3
execute if score repmusic data matches 1 if entity @a[x=-187,y=27,z=134,dx=2,dy=2,dz=2] run function music/replay

execute if score music data matches 3 if entity @a[x=-206,y=30,z=137,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-206,y=30,z=137,dx=2,dy=2,dz=2] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-206,y=30,z=137,dx=2,dy=2,dz=2] run function music/replay

#餐厅地道音乐
execute if score music data matches 5 if entity @a[x=-205,y=12,z=184,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-205,y=12,z=184,dx=2,dy=2,dz=2] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-205,y=12,z=184,dx=2,dy=2,dz=2] run function music/replay

execute if score music data matches 2 if entity @a[x=-205,y=30,z=184,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-205,y=30,z=184,dx=2,dy=2,dz=2] run scoreboard players set music data 5
execute if score repmusic data matches 1 if entity @a[x=-205,y=30,z=184,dx=2,dy=2,dz=2] run function music/replay

#墙内谜题音乐
execute if score music data matches 14 if entity @a[x=-152,y=31,z=118,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-152,y=31,z=118,dx=2,dy=2,dz=1] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-152,y=31,z=118,dx=2,dy=2,dz=1] run function music/replay

execute if score music data matches 2 if entity @a[x=-152,y=31,z=121,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-152,y=31,z=121,dx=2,dy=2,dz=1] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-152,y=31,z=121,dx=2,dy=2,dz=1] run function music/replay

#浮空山洞穴音乐
execute if score music data matches 14 if entity @a[x=-316,y=46,z=153,dx=2,dy=4,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-316,y=46,z=153,dx=2,dy=4,dz=2] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-316,y=46,z=153,dx=2,dy=4,dz=2] run function music/replay

execute if score music data matches 2 if entity @a[x=-316,y=55,z=154,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-316,y=55,z=154,dx=2,dy=2,dz=2] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-316,y=55,z=154,dx=2,dy=2,dz=2] run function music/replay

#浮空山岩浆洞穴音乐
execute if score music data matches 14 if entity @a[x=-314,y=40,z=117,dx=2,dy=2,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-314,y=40,z=117,dx=2,dy=2,dz=1] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-314,y=40,z=117,dx=2,dy=2,dz=1] run function music/replay

execute if score music data matches 2 if entity @a[x=-314,y=56,z=117,dx=2,dy=1,dz=1] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-314,y=56,z=117,dx=2,dy=1,dz=1] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-314,y=56,z=117,dx=2,dy=1,dz=1] run function music/replay

#浮空山南瓜洞穴音乐
execute if score music data matches 14 if entity @a[x=-299,y=15,z=134,dx=2,dy=4,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-299,y=15,z=134,dx=2,dy=4,dz=2] run scoreboard players set music data 2
execute if score repmusic data matches 1 if entity @a[x=-299,y=15,z=134,dx=2,dy=4,dz=2] run function music/replay

execute if score music data matches 2 if entity @a[x=-299,y=34,z=134,dx=2,dy=2,dz=2] run scoreboard players set repmusic data 1
execute if score repmusic data matches 1 if entity @a[x=-299,y=34,z=134,dx=2,dy=2,dz=2] run scoreboard players set music data 14
execute if score repmusic data matches 1 if entity @a[x=-299,y=34,z=134,dx=2,dy=2,dz=2] run function music/replay

#当玩家踩到结束动画的箭头时，开始播放动画
execute if entity @a[x=-231,y=-8,z=187,r=1] run function game/village/events/island_disappear/start

#当data.music==114514的时候，音乐被臭炸了不能播放 >:)
#啊，其实是因为这段是船上的结束剧情，不播放音乐。
execute if score music data matches 114514 if score tick time matches 1 run music stop
