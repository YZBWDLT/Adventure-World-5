# ===== 拿到了心之容器 =====

kill @s
music play get_heart 1 0 play_once
function music/play
tellraw @a {"rawtext":[{"text":"§l§c你拿到了心之容器，心心上限提升了！"}]}
scoreboard players add "§c心心上限" health 1
function lib/modify_data/game/change_heart
effect @a instant_health 1 5 true