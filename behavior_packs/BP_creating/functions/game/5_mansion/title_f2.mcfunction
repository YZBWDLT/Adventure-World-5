scoreboard players set 5_mansion_title data 0
scoreboard players operation 5_mansion_title data += 5_mansion_direction data
execute if entity @a[x=-263.5,y=-44,z=-40.5,r=1] run scoreboard players add 5_mansion_title data 0
execute if entity @a[x=-258.5,y=-44,z=9.5,r=1] run scoreboard players add 5_mansion_title data 1
execute if entity @a[x=-308.5,y=-44,z=15.5,r=1] run scoreboard players add 5_mansion_title data 2
execute if entity @a[x=-314.5,y=-44,z=-35.5,r=1] run scoreboard players add 5_mansion_title data 3
execute if score 5_mansion_title data matches 5.. run scoreboard players remove 5_mansion_title data 4
execute if score 5_mansion_title data matches 1..3 run title @a title §l§4林地府邸
execute if score 5_mansion_title data matches 1 run title @a subtitle §4二层——问号标记
execute if score 5_mansion_title data matches 2 run title @a subtitle §4二层——箭头起点
execute if score 5_mansion_title data matches 3 run title @a subtitle §4二层——箭头终点