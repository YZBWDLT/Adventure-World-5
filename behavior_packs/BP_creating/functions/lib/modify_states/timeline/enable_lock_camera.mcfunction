# ===== 启用视角锁定 =====
# 用于启用视角锁定，阻止玩家移动和转变视角。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 启用视角锁定的设置。
# · 阻止玩家的移动状态，如果有多名玩家则添加隐身。

# --- 启用视角锁定 ---
scoreboard players set lockCamera data 1

# --- 恢复玩家的移动 ---
inputpermission set @a camera disabled
inputpermission set @a movement disabled

