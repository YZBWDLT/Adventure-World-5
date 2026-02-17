# ===== 终末之地 BOSS 战 =====
# 代码作者：量筒
# 因为巴豆没时间了，这里的代码由量筒代写，巴豆微调
# 此函数全体在末地环境下执行。

# --- 全局命令 ---
function game/the_end/timelines/general

# --- 开战前：玩家放置末地水晶之前 ---
# （data.9_the_end_boss == 0）
execute if score 9_the_end_boss data matches 0 run function game/the_end/timelines/before_crystal_placed

# --- BOSS 出现 ---
# （data.9_the_end_boss == 1）
execute if score 9_the_end_boss data matches 1 run function game/the_end/timelines/dragon_appear

# --- BOSS 第一阶段 ---
# （data.9_the_end_boss == 2）
execute if score 9_the_end_boss data matches 2 run function game/the_end/timelines/stage_1

# --- BOSS 第二阶段 ---
# （data.9_the_end_boss == 3）
execute if score 9_the_end_boss data matches 3 run function game/the_end/timelines/stage_2

# --- 战斗结束 ---
# （data.9_the_end_boss == 4）
execute if score 9_the_end_boss data matches 4 run function game/the_end/timelines/completed