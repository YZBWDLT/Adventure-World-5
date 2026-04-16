# ===== 禁用时间线流逝 =====
# 禁用时间线的时间流逝，并在未声明保留值的情况下将时间值归零。
# 调用此方法时：无需修饰。

scoreboard players set timeLapse data 0
execute unless score keepValue data matches 1 run scoreboard players set timeline time 0
