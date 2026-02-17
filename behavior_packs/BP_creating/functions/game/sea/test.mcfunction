# ===== 所有检测执行的指令 =====

#当玩家在出生点时重置场景
execute if score refresh data matches 0 if entity @a[x=-136.5,y=31,z=166.5,r=1] run function game/sea/refresh
execute if score refresh data matches 0 if entity @a[x=-101.5,y=5,z=188.5,r=1] run function game/sea/refresh

#前往筑梦镇
execute if entity @a[x=-138.5,y=31,z=166.5,r=1] positioned -143 31 166 facing -143 31 167 run function game/village/enter

#进入海底神殿
execute unless score 8_pe_item data matches 2 if score item_breath data matches 1 if entity @a[x=-101.5,y=5,z=190.5,r=1] run title @a title §3海底神殿
execute unless score 8_pe_item data matches 2 if score item_breath data matches 1 if entity @a[x=-101.5,y=5,z=190.5,r=1] run spawnpoint @a -122 -48 142
execute unless score 8_pe_item data matches 2 if score item_breath data matches 1 if entity @a[x=-101.5,y=5,z=190.5,r=1] run setworldspawn -122 -48 142
execute unless score 8_pe_item data matches 2 if score item_breath data matches 1 if entity @a[x=-101.5,y=5,z=190.5,r=1] run scoreboard players set position data 11
execute unless score 8_pe_item data matches 2 if score item_breath data matches 1 if entity @a[x=-101.5,y=5,z=190.5,r=1] run scoreboard players set refresh data 0
execute unless score 8_pe_item data matches 2 if score item_breath data matches 1 if entity @a[x=-101.5,y=5,z=190.5,r=1] run tp @a -122 -48 142 facing -122 -48 143

execute if score 8_pe_item data matches 2 if score item_breath data matches 1 if entity @a[x=-101.5,y=5,z=190.5,r=1] run title @a actionbar §e别忘了田萍说的，神镐不能带进去哦