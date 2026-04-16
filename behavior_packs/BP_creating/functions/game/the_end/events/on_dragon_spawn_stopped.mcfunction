# ===== 复活时末地水晶被破坏后 =====
# 当复活时末地水晶被破坏后，游戏暂停，此时 BOSS 战回退到上一阶段
# （data.9_the_end_boss -> 0）

# 重新限制末地门
function game/the_end/events/restrict_end_portal

# 播放音乐
scoreboard players set music data 151
function music/replay

# 解除锁定视角
function lib/utils/stop_dialogue
camera @a clear

# 重新给予玩家末地水晶并清除现有的末地水晶
give @a[c=1] end_crystal 4
tellraw @a[c=1] {"rawtext":[{"text":"§e最终魔物的召唤仪式被终止了！重新放下水晶，战斗即打响！"}]}
kill @e[type=ender_crystal]

### 熄灭末地水晶的火焰
setblock 0 60 3 air
setblock 0 60 -3 air
setblock 3 60 0 air
setblock -3 60 0 air

# 倒退回上一阶段
scoreboard players set 9_the_end_boss data 0
