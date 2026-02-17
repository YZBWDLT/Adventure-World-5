# ===== 通过河豚获取水肺药效 =====
# 调用此方法时：需指定执行位置为按钮位置，且指定执行者为距离按钮最近的玩家（execute positioned ... if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p run ...）

# 恢复按钮
setblock ~~~ stone_button ["button_pressed_bit"=false,"facing_direction"=1]

# 如果缺少河豚，则提示玩家不能酿造
execute unless entity @s[hasitem={item=pufferfish}] run tellraw @s {"rawtext":[{"text":"§a[我]身上好像没有能用的材料……"}]}

# 如果材料充足，获得药效，清除河豚
execute if entity @s[hasitem={item=pufferfish}] run tellraw @a {"rawtext":[{"text":"§e你获得了暂时的水肺，抓紧下水探索吧！"}]}
execute if entity @s[hasitem={item=pufferfish}] run effect @a water_breathing 90 0 false
execute if entity @s[hasitem={item=pufferfish}] run clear @s pufferfish 0 1
