#改变海底神殿水位

execute if score timeline time matches 70..80 if score 6_monument_water data matches 0 run fill -151 -59 143 -93 -49 189 air replace water

execute if score timeline time matches 20 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -45 189 water replace air
execute if score timeline time matches 25 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -44 189 water replace air
execute if score timeline time matches 30 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -43 189 water replace air
execute if score timeline time matches 35 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -42 189 water replace air
execute if score timeline time matches 40 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -41 189 water replace air
execute if score timeline time matches 45 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -40 189 water replace air
execute if score timeline time matches 50 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -39 189 water replace air
execute if score timeline time matches 55 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -38 189 water replace air
execute if score timeline time matches 60 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -37 189 water replace air
execute if score timeline time matches 65 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -36 189 water replace air
execute if score timeline time matches 70 if score 6_monument_water data matches 0 run fill -151 -45 143 -93 -35 189 water replace air

execute if score timeline time matches 70..80 if score 6_monument_water data matches 1 run fill -151 -45 143 -93 -35 189 air replace water

execute if score timeline time matches 20 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -59 189 water replace air
execute if score timeline time matches 25 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -58 189 water replace air
execute if score timeline time matches 30 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -57 189 water replace air
execute if score timeline time matches 35 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -56 189 water replace air
execute if score timeline time matches 40 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -55 189 water replace air
execute if score timeline time matches 45 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -54 189 water replace air
execute if score timeline time matches 50 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -53 189 water replace air
execute if score timeline time matches 55 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -52 189 water replace air
execute if score timeline time matches 60 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -51 189 water replace air
execute if score timeline time matches 65 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -50 189 water replace air
execute if score timeline time matches 70 if score 6_monument_water data matches 1 run fill -151 -59 143 -93 -49 189 water replace air

execute if score timeline time matches 70 run music play solve_puzzle 1 0 play_once
execute if score timeline time matches 70 run function music/play
execute if score timeline time matches 80 run scoreboard players add 6_monument_water data 1
execute if score timeline time matches 80 if score 6_monument_water data matches 2 run scoreboard players set 6_monument_water data 0

execute if score timeline time matches 100 run setblock -122 -47 172 stone_button ["button_pressed_bit"=false,"facing_direction"=1]
execute if score timeline time matches 100 run camera @a clear
execute if score timeline time matches 100 run function lib/modify_states/timeline/disable 