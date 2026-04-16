# ===== 启用时间线流逝 =====
# 在未启用时间线的情况下启用时间线和时间流逝，并在未声明保留值的情况下将时间值归零。
# 调用此方法时：无需修饰。

execute if score timeline active matches ..0 run scoreboard players set timeline active 1
scoreboard players set timeLapse data 1
execute unless score keepValue data matches 1 run scoreboard players set timeline time 0
