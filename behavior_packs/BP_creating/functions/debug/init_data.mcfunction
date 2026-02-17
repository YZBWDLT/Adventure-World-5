# ===== 数据重置 =====
# 用于重置游戏数据

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 重置记分板、变量和标记实体到默认值下

# --- 常加载区域重置 ---
say 常加载区域已经重置！
tickingarea add -320 0 32 -161 0 191 "岛西南160*160"
tickingarea add -160 0 80 63 0 191 "东侧小游戏区"
tickingarea add -320 0 -64 -65 0 31 "岛北部256*96"
execute in the_end run tickingarea add -64 0 -64 63 0 63 "末地" true

# --- 记分板重置 ---
scoreboard objectives add active dummy "激活状态"
scoreboard objectives add data dummy "数据"
scoreboard objectives add time dummy "时间"
scoreboard objectives add deathState dummy "玩家死亡状态"
scoreboard objectives add isOnline dummy "玩家在线"

# --- 数据变量重置 ---

## 基础时间数据
say 计分板初始数值已设定！
scoreboard players set tick time 0

## 时间线与音效播放器
scoreboard players set timeline active 0
scoreboard players set timeline time 0
scoreboard players set sound active 0
scoreboard players set sound time 0
scoreboard players set timeLapse data 0
scoreboard players set lockCamera data 0

#玩家所在区域
scoreboard players set position data 0
#玩家游戏进程
scoreboard players set progress data 0
#防止反复触发标记
scoreboard players set repmark data 0
scoreboard players set repmusic data 0

#其余游戏数据
scoreboard players set refresh data 0
scoreboard players set gamemode data 0
scoreboard players set parkour data 99999
scoreboard players set dig data 99999
scoreboard players set boat data 99999
scoreboard players set shoot data 99999
scoreboard players set firefight data 99999
scoreboard players set boat_progress data 0
scoreboard players set chicken data 0
scoreboard players set chicken_all data 0
scoreboard players set amount data 0
scoreboard players set camera data 0
scoreboard players set plain_maze_old data 0
scoreboard players set plain_maze_new data 0
scoreboard players set lost_forest data 1
scoreboard players set 5_mansion_direction data 1
scoreboard players set 5_mansion_title data 0
scoreboard players set brush_time time 0
scoreboard players set music data 0
scoreboard players set 6_monument_water data 0
scoreboard players set 7_fortress_boss_wave data 0
scoreboard players set saturation data 0

## 杂项数据
scoreboard players set client data 0

## 玩家数据
scoreboard players set @a isOnline 1