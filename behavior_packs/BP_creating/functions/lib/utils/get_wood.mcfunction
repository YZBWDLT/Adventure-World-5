# ===== 得到木材 =====
# 给予开箱的玩家 5 个木材
# 调用此方法时：需指定执行者开箱的玩家

tellraw @s {"rawtext":[{"text":"§e找到了5个木材，或许有用！"}]}
give @s aw:build1 5

music play get_piece 1 0 play_once
function lib/utils/music/queue
