# ===== 限制末地传送门 =====
# 用于防止玩家进入末地的末地传送门，并限制玩家放置末地水晶的区域。
# 调用此方法时：需修饰条件为最终之战未战斗时（execute if score 9_the_end_boss matches !1..3 ...）。

# 封死末地传送门
execute in the_end run fill 1 60 -2 -1 60 2 barrier keep
execute in the_end run fill -2 60 -1 2 60 1 barrier keep

# 封死其他可放置末地水晶的位置
execute in the_end run setblock -3 60 -1 structure_void
execute in the_end run setblock -3 60 1 structure_void
execute in the_end run setblock -2 60 2 structure_void
execute in the_end run setblock -1 60 3 structure_void
execute in the_end run setblock 1 60 3 structure_void
execute in the_end run setblock 2 60 2 structure_void
execute in the_end run setblock 3 60 1 structure_void
execute in the_end run setblock 3 60 -1 structure_void
execute in the_end run setblock 2 60 -2 structure_void
execute in the_end run setblock 1 60 -3 structure_void
execute in the_end run setblock -1 60 -3 structure_void
execute in the_end run setblock -2 60 -2 structure_void
execute in the_end run setblock 0 63 0 structure_void

# 将可放置末影水晶的位置清空
execute in the_end run setblock 0 60 3 air
execute in the_end run setblock 0 60 -3 air
execute in the_end run setblock 3 60 0 air
execute in the_end run setblock -3 60 0 air
