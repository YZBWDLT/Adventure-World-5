# ===== BOSS 结束时间线 =====
# 在 BOSS 战过程中的 BOSS 结束（战斗结束）的循环命令于此执行

# [180] 黑屏
execute if score timeline time matches 180 run camera @a fade time 1 5 1

# [239] 更改朝向
execute if score timeline time matches 239 run tp @a 0 59 -15 facing 0 59 -30

# [240] 结束动画并回到主世界

## 移除玩家的抗性提升
execute if score timeline time matches 240.. run effect @a clear resistance
## 重新堵死传送门
execute if score timeline time matches 240.. run function game/the_end/events/restrict_end_portal
## 恢复玩家视角
execute if score timeline time matches 240.. run function lib/modify_states/timeline/disable_lock_camera
execute if score timeline time matches 240.. run camera @a clear
## 结束
execute if score timeline time matches 240.. run function game/the_end/events/prepare_to_start_credits
