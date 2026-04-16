# ===== 主函数 =====

# --- 计时器 ---

## time.tick
scoreboard players add tick time 1
execute unless score tick time matches 0..19 run scoreboard players set tick time 0
## time.timeline
execute if score timeline active matches 1.. if score timeLapse data matches 1.. run scoreboard players add timeline time 1
execute if score timeLapse data matches 1.. run scoreboard players add timeline time 1

# --- 时间线 ---

# 当剧情没有执行时timeline active=0，timeline不动并开启检测功能；当有剧情时>0，开启timeline并关闭检测避免重复执行
execute if score timeline active matches 1.. run function system/controller/timeline

# --- 反退出重进 ---

## 获取退出重进的玩家
scoreboard players add @a isOnline 0
## 令退出重进玩家执行命令
execute as @a[scores={isOnline=0}] at @s run function lib/events/player_join
## 将所有玩家设置为在线模式
scoreboard objectives remove isOnline
scoreboard objectives add isOnline dummy "玩家在线"
scoreboard players set @a isOnline 1

# --- 玩家死亡检测 ---

## 玩家复活检测
function lib/get_data/player_is_alive
execute as @a[tag=isAlive,scores={deathState=2}] run function lib/events/player_respawn
## 玩家死亡检测
scoreboard players set @a[scores={deathState=!2}] deathState 1
scoreboard players set @e[type=player] deathState 0
execute as @a[scores={deathState=1}] at @s run function lib/events/player_die
scoreboard players set @a[scores={deathState=1}] deathState 2

# --- 物品道具 ---

## 神镐
### 视itemState.emeraldPickaxe的值而决定功能 | 0：禁止神镐；1：允许神镐，但此时神镐无作用；2：允许神镐，但此时不能进府邸神殿要塞；3：允许神镐
execute if score emeraldPickaxe itemState matches 0 run clear @a diamond_pickaxe
execute if score emeraldPickaxe itemState matches 2..3 as @a[hasitem={item=diamond_pickaxe,quantity=0}] run give @s diamond_pickaxe 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3","aw:dig1","aw:dig2","aw:dig3","aw:dig4","aw:dig5","aw:dig6","aw:dig7","aw:dig8","aw:dig8drop","aw:dig9","gray_glazed_terracotta","silver_glazed_terracotta","white_glazed_terracotta","aw:old_cobblestone","aw:old_gold_block","aw:nether_reactor_core"]}}
### 如果玩家在未持有神镐时在水里，则禁止玩家破坏方块
execute as @a at @s if block ~~~ water run effect @s[hasitem={item=diamond_pickaxe,quantity=0}] mining_fatigue 1 4 true
execute as @a at @s if block ~~1~ water run effect @s[hasitem={item=diamond_pickaxe,quantity=0}] mining_fatigue 1 4 true

## 获得恢复之心时
execute as @a[hasitem={item=aw:heart}] run effect @s instant_health 1 0 true
execute as @a[hasitem={item=aw:heart}] run clear @s aw:heart 0 1

## 获得心之碎片 & 心之容器时
execute as @e[type=aw:heart_piece] at @s if entity @a[r=1] run function lib/utils/get_heart_piece
execute as @e[type=aw:heart_container] at @s if entity @a[r=1] run function lib/utils/get_heart_container

# --- 杂项功能 ---

# 饱和效果
execute if score tick time matches 0 if score saturation data matches 1 run effect @a saturation 5 0 true

# 阻止特殊的掉落物 | 除溟海外，其余区域还要清除黑曜石
scriptevent aw:removeItemEntity minecraft:gray_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:light_gray_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:white_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:string
scriptevent aw:removeItemEntity minecraft:cactus
scriptevent aw:removeItemEntity minecraft:oak_sign
execute unless score position data matches 9 run scriptevent aw:removeItemEntity minecraft:obsidian

# --- 各区域循环执行的代码 ---

execute if score position data matches 9 run function game/sea/timeline

#游戏内一直开的功能
function system/game
function system/test
function system/once
#中国版的蜂箱可能会在射鸡游戏处出现神奇蜜蜂，大约1000+只，大幅降低游戏性能，所以杀杀杀
execute if score client data matches 1 if entity @e[type=bee] run kill @e[type=bee]
#function system/developer_gamemode
