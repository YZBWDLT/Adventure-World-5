# 从任何地方进入终末之地时共用的指令
# 代码作者：量筒
# 因为巴豆没时间了，这里的代码由量筒代写，巴豆微调

title @a title §o§e终末之地
scoreboard players set position data 15
scoreboard players set refreshArea data 0
execute in the_end run tp @a 0 58 -40 facing 0 58 0
execute if score 9_the_end_boss data matches !1..3 run function game/the_end/events/restrict_end_portal
scoreboard players set timeline active 62

# 关闭生物破坏，防止末影龙破坏方块
gamerule mobgriefing false

# 将玩家的重生点设置到地铁中枢，当有玩家死亡后则直接重生在此处
execute in overworld run spawnpoint @a -233 -15 189
execute in overworld run setworldspawn -233 -15 189

# 进行末地场景的初始化 | 最后的 fill 是 10 号柱子的，防止玩家被打下去之后要先挖方块再放方块，太坐牢了
scoreboard players add 9_the_end_init data 0
execute in the_end if score 9_the_end_init data matches 0 run function game/the_end/events/init_the_end
scoreboard players set 9_the_end_init data 1
fill 40 60 0 40 90 0 air

# 重新设置音乐
execute if score 9_the_end_boss data matches 0 run scoreboard players set music data 151
execute if score 9_the_end_boss data matches 1 run scoreboard players set music data 152
execute if score 9_the_end_boss data matches 2 run scoreboard players set music data 153
execute if score 9_the_end_boss data matches 3 run scoreboard players set music data 154
execute if score 9_the_end_boss data matches 4 run scoreboard players set music data 155
function lib/utils/music/replay
