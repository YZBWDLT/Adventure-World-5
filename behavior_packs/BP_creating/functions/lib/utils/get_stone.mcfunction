# ===== 得到石料 =====
# 给予开箱的玩家 5 个石料
# 调用此方法时：需指定执行者开箱的玩家

tellraw @s {"rawtext":[{"text":"§e找到了5个石料，真是不错的建材！"}]}
give @s aw:build2 5

music play get_piece 1 0 play_once
function lib/utils/music/queue
