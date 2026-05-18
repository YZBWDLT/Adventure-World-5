# ===== 获取满血药水 =====

# 如果缺少玻璃瓶，则提示玩家不能酿造
execute unless entity @s[hasitem={item=glass_bottle}] run tellraw @s {"rawtext":[{"text":"§e没有玻璃瓶能装下这些药水了……"}]}

# 否则获得药水并清除空瓶子
execute if entity @s[hasitem={item=glass_bottle}] run give @s aw:potion_full
execute if entity @s[hasitem={item=glass_bottle}] run playsound random.potion.brewed @s
execute if entity @s[hasitem={item=glass_bottle}] run clear @s glass_bottle 0 1
