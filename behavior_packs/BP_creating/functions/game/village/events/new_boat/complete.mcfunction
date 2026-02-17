# ===== 结束结束动画 =====
# 一直到和船上的华梦言对话完毕，结束动画结束。

# 重整时间线
scoreboard players set timeline active 0
function lib/modify_states/timeline/disable_time_lapse

# 恢复玩家的活动
camera @a clear
function lib/modify_states/timeline/disable_lock_camera
