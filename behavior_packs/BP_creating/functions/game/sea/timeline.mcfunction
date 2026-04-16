# ===== 溟海时间线 =====

# --- 怪物检测 ---
execute if score sea_enemy1 data matches 0 if entity @a[x=-135,y=30,z=101,dx=30,dy=5,dz=18] run function game/sea/events/summon_monster_1
execute if score sea_enemy2 data matches 0 if entity @a[x=-130,y=3,z=164,dx=64,dy=17,dz=26] run function game/sea/events/summon_monster_2
execute if score sea_enemy3 data matches 0 if entity @a[x=-100,y=0,z=120,dx=34,dy=20,dz=30] run function game/sea/events/summon_monster_3

# --- 前往其他区域 ---

## 筑梦镇
execute if entity @a[x=-138.5,y=31,z=166.5,r=1] positioned -143 31 166 facing -143 31 167 run function game/village/enter

## 进入海底神殿 | 需检查玩家神镐的获取状态
execute if entity @a[x=-101.5,y=5,z=190.5,r=1] unless score emeraldPickaxe itemState matches 2 positioned -122 -48 142 facing -122 -48 143 run function game/6_monument/enter
execute if entity @a[x=-101.5,y=5,z=190.5,r=1] if score emeraldPickaxe itemState matches 2 run title @a actionbar §e别忘了田萍说的，神镐不能带进去哦

# --- 场景重置 ---
# 当玩家在出生点时重置场景

execute if score refreshArea data matches 0 if entity @a[x=-136.5,y=31,z=166.5,r=1] run function game/sea/refresh
execute if score refreshArea data matches 0 if entity @a[x=-101.5,y=5,z=188.5,r=1] run function game/sea/refresh
