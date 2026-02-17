# ===== 禁用时间线 =====
# 用于禁用时间线。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 禁用时间线、同时恢复时间流逝和视角锁定的设置。
# · 恢复玩家的移动状态，并移除隐身。
# · time.timeline归零。

scoreboard players set timeline active 0
function lib/modify_states/timeline/disable_time_lapse
function lib/modify_states/timeline/disable_lock_camera
