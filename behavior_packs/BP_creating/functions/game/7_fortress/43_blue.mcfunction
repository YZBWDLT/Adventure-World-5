# ===== 所有灵魂篝火都被熄灭 =====
# 中间的树变蓝色
# 蓝色门封上，红色门打开

execute if score timeline time matches 10 run camera @a set minecraft:free ease 3 in_out_sine pos -281 -46 49 facing -281 -46 50

execute if score timeline time matches 100 run camera @a fade time 1 2 1 color 10 10 60
execute if score timeline time matches 140 run fill -297 -49 37 -295 -47 37 air
execute if score timeline time matches 140 run fill -316 -46 48 -314 -44 48 air
execute if score timeline time matches 140 run fill -290 -46 89 -290 -44 91 air
execute if score timeline time matches 140 run fill -315 -40 80 -313 -38 80 air
execute if score timeline time matches 140 run fill -284 -40 29 -284 -38 31 air
execute if score timeline time matches 140 run fill -276 -41 88 -274 -41 90 air
execute if score timeline time matches 140 run fill -269 -49 59 -269 -47 61 warped_planks
execute if score timeline time matches 140 run fill -276 -41 30 -274 -41 32 warped_planks
execute if score timeline time matches 140 run fill -286 -49 77 -284 -47 77 warped_planks
execute if score timeline time matches 140 run fill -316 -40 34 -314 -38 34 warped_planks
execute if score timeline time matches 140 run fill -295 -32 90 -293 -32 92 warped_planks
execute if score timeline time matches 140 run fill -274 -32 88 -272 -32 90 warped_planks
execute if score timeline time matches 140 run fill -284 -31 29 -284 -29 31 warped_planks
execute if score timeline time matches 140 run structure load other:blue_tree -285 -49 56
execute if score timeline time matches 180 run music play solve_puzzle 1 0 play_once
execute if score timeline time matches 180 run function lib/utils/music/queue

execute if score timeline time matches 220 run camera @a clear
execute if score timeline time matches 220 run function lib/utils/stop_dialogue 
execute if score timeline time matches 220 run function lib/modify_data/states/timeline/disable