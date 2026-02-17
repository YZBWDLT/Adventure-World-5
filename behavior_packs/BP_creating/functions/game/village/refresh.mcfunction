# ===== 更新小镇npc和其它东西 =====

#当每次进入小镇时执行此命令
#会根据玩家当前进度改变小镇内npc的位置
#位置保持不变的npc生成指令在debug文件夹中
#有一些不依靠游戏进度生成的npc（比如随着玩家搭好的房子生成的）不会在此处被清理和生成
#除了npc之外还有一些东西要生成
#玩家的位置信息也会更新

#记录已刷新避免重复
scoreboard players set refresh data 1

#复原陶罐等可破坏场景
setblock -263 32 165 web
fill -263 32 165 -262 33 166 aw:decorated_pot_type1 replace air
fill -234 31 105 -232 31 105 aw:decorated_pot_type1
setblock -241 31 154 aw:decorated_pot_type1
setblock -241 31 151 aw:decorated_pot_type1
setblock -245 31 154 aw:decorated_pot_type1
setblock -245 31 151 aw:decorated_pot_type1
fill -192 31 131 -192 31 132 aw:decorated_pot_type1
setblock -218 31 133 aw:decorated_pot_type1
setblock -218 31 134 aw:decorated_pot_type2
setblock -218 31 135 aw:decorated_pot_type1
setblock -240 31 175 aw:decorated_pot_type3
fill -239 31 175 -238 31 175 aw:decorated_pot_type1
setblock -237 31 175 aw:decorated_pot_type2
fill -220 31 136 -220 31 139 aw:decorated_pot_type1
fill -270 57 153 -269 57 153 aw:decorated_pot_type1

#彩蛋
setblock -225 31 161 spruce_trapdoor["direction"=2,"open_bit"=true]
setblock -225 31 160 fire_coral
scoreboard players set kita data 0

#各箱子补货
clone -201 29 179 -201 29 179 -201 31 179
execute if block -217 31 110 stonebrick run clone -218 29 109 -218 29 110 -218 32 109
execute if score progress data matches 0 run fill -239 31 177 -238 32 180 air
execute if score progress data matches 1.. run clone -240 -9 180 -239 -8 183 -239 31 177
execute if score progress data matches 0..1 run fill -239 31 184 -238 32 187 air
execute if score progress data matches 2.. run clone -240 -9 187 -239 -8 190 -239 31 184
execute if score progress data matches 0..2 run fill -229 31 180 -228 32 180 air
execute if score progress data matches 3.. run clone -227 -9 177 -226 -8 177 -229 31 180
execute if score progress data matches 0..3 run fill -228 31 184 -227 32 187 air
execute if score progress data matches 4.. run clone -227 -9 187 -225 -8 190 -229 31 184

#刷新怪物
kill @e[family=monster]
scoreboard players set village_enemy1 data 0

#播放音乐
execute if score sword data matches 1 run scoreboard players set music data 14
function music/replay

#根据游戏进度解锁攻略

#主线-无条件
clone -235 21 187 -235 22 187 -235 34 187
#地牢-获得对应的坐标笔记
execute if score 1_mine_book data matches 1 run clone -235 21 182 -235 22 182 -235 34 182
execute if score 2_hill_book data matches 1 run clone -231 21 182 -231 22 182 -231 34 182
execute if score 3_shaft_book data matches 1 run clone -235 21 180 -235 22 180 -235 34 180
execute if score 4_rail_book data matches 1 run clone -231 21 180 -231 22 180 -231 34 180
execute if score 5_mansion_book data matches 1 run clone -235 21 178 -235 22 178 -235 34 178
execute if score 6_monument_book data matches 1 run clone -231 21 178 -231 22 178 -231 34 178
execute if score 7_fortress_book data matches 1 run clone -235 21 176 -235 22 176 -235 34 176
execute if score 8_pe_book data matches 1 run clone -231 21 176 -231 22 176 -231 34 176
#全收集-需要已经通关
execute if score 9_the_end_boss_finished data matches 1 run clone -231 21 187 -231 22 187 -231 34 187
execute if score 9_the_end_boss_finished data matches 1 run clone -235 21 185 -235 22 185 -235 34 185
execute if score 9_the_end_boss_finished data matches 1 run clone -231 21 185 -231 22 185 -231 34 185