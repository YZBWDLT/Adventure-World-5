# ===== 准备开始结束动画 =====
# 当玩家从末地离开后，先进入到小黑屋，然后踩到箭头之后再开始动画

## 回到筑梦镇
execute in overworld positioned -231 -8 190 facing -231 -8 187 run function game/village/enter
title @a clear

## 关闭时间线
scoreboard players set timeline active 0
function lib/modify_states/timeline/disable_time_lapse
