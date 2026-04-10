# ===== 玩家存活检测 =====
# 用于检测玩家是否处于存活状态。存活玩家将获得isAlive标签。
# 调用此方法时：无需修饰。

tag @a remove isAlive
tag @e[type=player] add isAlive
