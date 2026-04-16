# ===== 点火开门 - 2 =====
# 当营火被点燃后，打开菌光体门

music play solve_puzzle 1 0 play_once
function lib/utils/music/queue

fill -297 -40 31 -297 -39 31 air destroy
kill @e[type=item,x=-297,y=-40,z=31,r=2]
