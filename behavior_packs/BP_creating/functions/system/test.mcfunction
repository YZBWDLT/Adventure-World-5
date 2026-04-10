# ===== 根据玩家目前的进度和位置，选择合适的检测函数执行 =====

execute if score position data matches 0 run function game/start/test
execute if score position data matches 1 run function game/village/test
execute if score position data matches 2 run function game/1_mine/test
execute if score position data matches 3 run function game/2_hill/test
execute if score position data matches 4 run function game/plain/test
execute if score position data matches 5 run function game/3_shaft/test
execute if score position data matches 6 run function game/4_rail/test
execute if score position data matches 7 run function game/forest/test
execute if score position data matches 8 run function game/5_mansion/test
execute if score position data matches 10 run function game/starry/test
execute if score position data matches 11 run function game/6_monument/test
execute if score position data matches 12 run function game/7_fortress/test
execute if score position data matches 13 run function game/8_pe/test
execute if score position data matches 14 run function game/badland/test
execute if score position data matches 15 in the_end run function game/the_end/test