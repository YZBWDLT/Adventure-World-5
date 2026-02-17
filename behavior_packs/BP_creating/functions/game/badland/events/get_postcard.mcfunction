# ===== 获取明信片 =====
# 当玩家按下按钮后给予附近的玩家一张明信片
# 调用此方法时：需指定执行位置为按钮位置，且指定执行者为距离按钮最近的玩家（execute positioned ... if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p run ...）

# 恢复按钮
setblock ~~~ stone_button ["button_pressed_bit"=false,"facing_direction"=1]

# 给予玩家明信片
give @s aw:postcard

# 若玩家正在使用中国版，则进行控诉！！>:(
# 因为网易把 if blocks 搞炸了，把我们设计的谜题都给毁了 QAQ
execute if score client data matches 1 run tellraw @s {"rawtext":[{"text":"§7§o实在抱歉！因为中国版的命令判定箱子存在漏洞，导致我们这里设计的任务无法正常运行。因此，邹鹭遥的馈赠就直接送给你啦！在国际版的本地图中可获得完整体验。你也可以拿4张明信片送给邹鹭遥的朋友们！"}]}
