# ===== 得到心之容器 =====
# 为玩家的心心上限值 +1，并提示玩家
# 调用此方法时：需指定执行者为被获得的心之容器，执行位置为该心之容器的位置（execute as @e[type=aw:heart_piece] at @s if entity @a[r=1]）

# 移除该心之容器
event entity @s aw:remove_immediately

# 播放心之容器的音效
music play get_heart 1 0 play_once
function music/play

# 为所有玩家回血
effect @a instant_health 1 5 true

# 提示玩家
tellraw @a {"rawtext":[{"text":"§l§c你拿到了心之容器，心心上限提升了！"}]}

# 标记心心上限值
scoreboard players add heartLimit data 1
function lib/utils/change_heart
