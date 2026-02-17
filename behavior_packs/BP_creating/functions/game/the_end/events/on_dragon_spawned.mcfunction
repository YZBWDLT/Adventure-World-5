# ===== 末影龙复活后 =====
# 当末影龙复活后，游戏正式开始，此时 BOSS 战进入下一阶段
# （data.9_the_end_boss -> 2）

# 播放音乐
scoreboard players set music data 153
function music/replay

# 改变龙穴附近的方块
fill 3 59 3 -3 63 -3 air replace structure_void
fill 3 59 3 -3 63 -3 air replace barrier
fill 3 59 3 -3 63 -3 air replace fire

# 将末影龙的栖息点置于高处
setblock 0 100 0 end_stone

# 改变黑曜石柱
function game/the_end/events/change_obsidian_pillar

# 跳到下一阶段
scoreboard players set 9_the_end_boss data 2
