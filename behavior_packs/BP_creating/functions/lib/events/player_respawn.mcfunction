# ===== 事件：玩家重生 =====
# 用于规定玩家重生时执行的命令。
# 调用此方法时：需修饰执行者为重生的玩家，执行位置为该玩家的位置（execute as @a[tag=isAlive,scores={deathState=1..2}] run）。

# (要执行的命令，如要指定重生的玩家请设为 @s)
# (例如，scoreboard players add @s respawnCount 1 将为刚重生的玩家添加 1 分)