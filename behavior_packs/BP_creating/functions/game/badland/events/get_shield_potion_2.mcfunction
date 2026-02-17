# ===== 通过石料获取护盾药水 =====
# 调用此方法时：需指定执行位置为按钮位置，且指定执行者为距离按钮最近的玩家（execute positioned ... if block ~~~ stone_button ["button_pressed_bit"=true,"facing_direction"=1] as @p run ...）

# 恢复按钮
setblock ~~~ stone_button ["button_pressed_bit"=false,"facing_direction"=1]

# 设定临时变量 data.could_brew_potion，当此值为 1 时允许购买，否则禁止购买
scoreboard players set could_brew_potion data 1

# 如果缺少石料，则提示玩家不能酿造
execute unless entity @s[hasitem={item=aw:build2}] run tellraw @s {"rawtext":[{"text":"§e你缺少石料，不能酿造护盾药水！"}]}
execute unless entity @s[hasitem={item=aw:build2}] run scoreboard players set could_brew_potion data 0

# 如果缺少玻璃瓶，则提示玩家不能酿造
execute unless entity @s[hasitem={item=glass_bottle}] run tellraw @s {"rawtext":[{"text":"§e你缺少玻璃瓶，不能酿造护盾药水！"}]}
execute unless entity @s[hasitem={item=glass_bottle}] run scoreboard players set could_brew_potion data 0

# 如果材料充足，获得药水，清除石料和空瓶子
execute if score could_brew_potion data matches 1 run clear @s aw:build2 0 1
execute if score could_brew_potion data matches 1 run clear @s glass_bottle 0 1
execute if score could_brew_potion data matches 1 run give @s aw:potion_shield

# 移除临时变量
scoreboard players reset could_brew_potion data
