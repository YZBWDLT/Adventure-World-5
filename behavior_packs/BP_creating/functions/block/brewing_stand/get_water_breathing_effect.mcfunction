# ===== 获取治疗药水 =====

# 如果缺少玻璃瓶，则提示玩家不能酿造
execute unless entity @s[hasitem={item=pufferfish}] run tellraw @s {"rawtext":[{"text":"§a[我]身上好像没有能用的材料……"}]}

# 否则获得药水并清除空瓶子
execute if entity @s[hasitem={item=pufferfish}] run tellraw @s {"rawtext":[{"text":"§e你获得了暂时的水肺，抓紧下水探索吧！"}]}
execute if entity @s[hasitem={item=pufferfish}] run effect @s water_breathing 90 0 false
execute if entity @s[hasitem={item=pufferfish}] run playsound random.potion.brewed @s
execute if entity @s[hasitem={item=pufferfish}] run clear @s pufferfish 0 1
