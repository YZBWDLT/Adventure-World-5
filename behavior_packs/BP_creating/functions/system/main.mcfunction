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

## 钻石镐
## 视

# --- 各区域循环执行的代码 ---

execute if score position data matches 9 run function game/sea/timeline

#游戏内一直开的功能
function system/game
function system/test
function system/once
#中国版的蜂箱可能会在射鸡游戏处出现神奇蜜蜂，大约1000+只，大幅降低游戏性能，所以杀杀杀
execute if score client data matches 1 if entity @e[type=bee] run kill @e[type=bee]
#function system/developer_gamemode
