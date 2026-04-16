# ===== 获得打火石 =====
# 玩家获得打火石事件

tellraw @a {"rawtext":[{"text":"§e你拿到了打火石，可以点燃营火和蜡烛，还能让下界岩燃烧！"}]}
music play get_tool 1 0 play_once
function lib/utils/music/queue
scoreboard players set flintAndSteel itemState 3
