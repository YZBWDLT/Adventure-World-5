# ===== 点火开门 - 1 =====
# 当营火被点燃后，打开菌光体门

music play solve_puzzle 1 0 play_once
function lib/utils/music/queue

fill -304 -40 34 -304 -39 34 air destroy
kill @e[type=item,x=-304,y=-40,z=34,r=2]
