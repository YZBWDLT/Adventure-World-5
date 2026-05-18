# ===== 获取恢复药水 =====

# 定义临时变量：是否可以酿造药水
scoreboard players set canBrewPotion data 1

# 如果缺少玻璃瓶，则提示玩家不能酿造
execute unless entity @s[hasitem={item=glass_bottle}] run tellraw @s {"rawtext":[{"text":"§e没有玻璃瓶能装下这些药水了……"}]}
execute unless entity @s[hasitem={item=glass_bottle}] run scoreboard players set canBrewPotion data 0

# 如果缺少河豚，则提示玩家不能酿造
execute unless entity @s[hasitem={item=pufferfish}] run tellraw @s {"rawtext":[{"text":"§e你缺少河豚，不能酿造恢复药水！"}]}
execute unless entity @s[hasitem={item=pufferfish}] run scoreboard players set canBrewPotion data 0

# 否则获得药水并清除空瓶子
execute if score canBrewPotion data matches 1 run clear @s glass_bottle 0 1
execute if score canBrewPotion data matches 1 run clear @s pufferfish 0 1
execute if score canBrewPotion data matches 1 run give @s aw:potion_regeneration
execute if score canBrewPotion data matches 1 run playsound random.potion.brewed @s

# 移除临时变量
scoreboard players reset canBrewPotion data
