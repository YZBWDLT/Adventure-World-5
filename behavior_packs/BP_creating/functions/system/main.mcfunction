# ===== 主函数 =====

# --- 时间控制器 ---
function system/timer

# --- 时间线、剧情线与音效控制器 ---
# 仅当启用后执行

# 当剧情没有执行时timeline active=0，timeline不动并开启检测功能；当有剧情时>0，开启timeline并关闭检测避免重复执行
execute if score timeline active matches 1.. run function system/controller/timeline
execute if score sound active matches 1.. run function system/controller/sound

# --- 反退出重进 ---
## 获取退出重进的玩家
scoreboard players add @a isOnline 0
## 令退出重进玩家执行的命令
execute as @a[scores={isOnline=0}] at @s run function lib/events/player_join
## 将所有玩家设置为在线模式
scoreboard objectives remove isOnline
scoreboard objectives add isOnline dummy "玩家在线"
scoreboard players set @a isOnline 1

# --- 玩家死亡检测 ---
## 玩家死亡检测
scoreboard players set @a[scores={deathState=!2}] deathState 1
scoreboard players set @e[type=player] deathState 0
execute as @a[scores={deathState=1}] at @s run function lib/events/player_die
scoreboard players set @a[scores={deathState=1}] deathState 2

#游戏内一直开的功能
function system/game
function system/test
function system/once
#中国版的蜂箱可能会在射鸡游戏处出现神奇蜜蜂，大约1000+只，大幅降低游戏性能，所以杀杀杀
execute if score client data matches 1 if entity @e[type=bee] run kill @e[type=bee]
#function system/developer_gamemode
