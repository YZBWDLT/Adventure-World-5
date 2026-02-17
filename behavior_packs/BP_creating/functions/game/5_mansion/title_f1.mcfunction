scoreboard players set 5_mansion_title data 0
scoreboard players operation 5_mansion_title data += 5_mansion_direction data
execute if entity @a[x=-264.5,y=-27,z=-40.5,r=1] run scoreboard players add 5_mansion_title data 2
execute if entity @a[x=-258.5,y=-27,z=9.5,r=1] run scoreboard players add 5_mansion_title data 1
execute if entity @a[x=-308.5,y=-27,z=15.5,r=1] run scoreboard players add 5_mansion_title data 0
execute if score 5_mansion_title data matches 5.. run scoreboard players remove 5_mansion_title data 4
title @a title §l§4林地府邸
execute if score 5_mansion_title data matches 1 run title @a subtitle §4一层——西南楼梯（左上）
execute if score 5_mansion_title data matches 2 run title @a subtitle §4一层——东南楼梯（左下）
execute if score 5_mansion_title data matches 3 run title @a subtitle §4一层——东北楼梯（右下）
execute if score 5_mansion_title data matches 4 run title @a subtitle §4一层——西北楼梯（右上）