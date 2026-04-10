# ===== 事件：玩家死亡 =====
# 用于规定玩家死亡时执行的命令。
# 调用此方法时：需修饰执行者为死亡的玩家，执行位置为该玩家的位置（execute as @a[scores={deathState=1}] at @s）。

# 重置场景
scoreboard players set refreshArea data 0

# 当玩家打下界要塞 BOSS 时死亡，执行对应代码
execute if score timeline active matches 45 run function game/7_fortress/events/player_die_in_boss

# 当玩家打末影龙时死亡，执行对应代码
execute if score timeline active matches 62 run function game/the_end/events/player_die
