# ===== 事件：玩家死亡 =====
# 用于规定玩家死亡时执行的命令。
# 调用此方法时：需修饰执行者为死亡的玩家，执行位置为该玩家的位置（execute as @a[scores={deathState=1}] at @s）。

execute if score timeline active matches 62 run function game/the_end/events/player_die
