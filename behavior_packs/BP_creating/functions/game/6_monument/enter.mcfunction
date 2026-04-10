# ===== 进入海底神殿 =====
# 调用此方法时：需修饰执行位置为重生点和出生点位置，修饰执行朝向为进入时面向的位置（execute positioned <重生点位置> facing <面向位置>）

title @a title §3海底神殿
spawnpoint @a ~~~
setworldspawn ~~~
scoreboard players set position data 11
scoreboard players set refreshArea data 0
tp @a ~~~ facing ^^^1
