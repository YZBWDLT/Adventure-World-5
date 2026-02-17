#某彩蛋动画
execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§a[我]哦不……"}]}
execute if score timeline time matches 60 run clone -225 25 162 -225 25 162 -225 31 160
execute if score timeline time matches 60 run function lib/modify_states/timeline/disable 