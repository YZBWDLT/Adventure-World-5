# ===== 得到心之碎片 =====
# 为玩家的心之碎片值 +1，并提示玩家，若攒满 4 个心之碎片则提升心心上限
# 调用此方法时：需指定执行者为被获得的心之碎片，执行位置为该心之碎片的位置（execute as @e[type=aw:heart_piece] at @s if entity @a[r=1]）

# 移除该心之碎片
event entity @s aw:remove_immediately

# 播放心之碎片的音效
music play get_piece 1 0 play_once
function lib/utils/music/queue

# 为所有玩家回血
effect @a instant_health 1 5 true

# 标记心之碎片值，如果满 4 颗则提升生命上限并同步
scoreboard players add heartPiece data 1
execute if score heartPiece data matches 1 run tellraw @a {"rawtext":[{"text":"§c你拿到了心之碎片，收集四个合成心之容器！"}]}
execute if score heartPiece data matches 2 run tellraw @a {"rawtext":[{"text":"§c你拿到了心之碎片，你已经有两个了！"}]}
execute if score heartPiece data matches 3 run tellraw @a {"rawtext":[{"text":"§c你拿到了心之碎片，现在有三个，还差一个！"}]}
execute if score heartPiece data matches 4 run tellraw @a {"rawtext":[{"text":"§l§c你拿到了心之碎片，合成了完整的心之容器，心心上限提升了！"}]}
execute if score heartPiece data matches 4 run scoreboard players add heartLimit data 1
execute if score heartPiece data matches 4 run function lib/utils/change_heart
execute if score heartPiece data matches 4 run scoreboard players set heartPiece data 0

# 重置心之碎片指示器
function lib/utils/set_heart_piece_indicator
