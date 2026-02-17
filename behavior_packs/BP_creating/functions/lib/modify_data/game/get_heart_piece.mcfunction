# ===== 拿到了心之碎片 =====

kill @s
music play get_piece 1 0 play_once
function music/play
execute if score "§c心之碎片" health matches 0 run tellraw @a {"rawtext":[{"text":"§c你拿到了心之碎片，收集四个合成心之容器！"}]}
execute if score "§c心之碎片" health matches 1 run tellraw @a {"rawtext":[{"text":"§c你拿到了心之碎片，你已经有两个了！"}]}
execute if score "§c心之碎片" health matches 2 run tellraw @a {"rawtext":[{"text":"§c你拿到了心之碎片，现在有三个，还差一个！"}]}
execute if score "§c心之碎片" health matches 3 run tellraw @a {"rawtext":[{"text":"§l§c你拿到了心之碎片，合成了完整的心之容器，心心上限提升了！"}]}
scoreboard players add "§c心之碎片" health 1
execute if score "§c心之碎片" health matches 4 run scoreboard players add "§c心心上限" health 1
execute if score "§c心之碎片" health matches 4 run scoreboard players set "§c心之碎片" health 0
function lib/modify_data/game/change_heart
effect @a instant_health 1 5 true