# ===== 得到彩岩 =====
# 给予开箱的玩家 5 个彩岩
# 调用此方法时：需指定执行者开箱的玩家

tellraw @s {"rawtext":[{"text":"§e找到了5个彩岩，好开心！"}]}
give @s aw:build3 5

music play get_piece 1 0 play_once
function lib/utils/music/queue
