# ===== 禁用视角锁定 =====
# 用于禁用视角锁定，恢复玩家的移动权。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 禁用视角锁定的设置。
# · 恢复玩家的移动状态，并移除隐身。

# --- 禁用视角锁定 ---
scoreboard players set lockCamera data 0

# --- 恢复玩家的移动 ---
inputpermission set @a camera enabled
inputpermission set @a movement enabled