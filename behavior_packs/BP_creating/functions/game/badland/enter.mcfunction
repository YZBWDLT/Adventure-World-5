# ===== 进入五色山 =====
# 调用此方法时：需修改执行位置为待传送位置和重生点位置，执行朝向为传送朝向（execute positioned ... facing ... run ...）

title @a title §v五§g色§s山
spawnpoint @a ~~~
setworldspawn ~~~
scoreboard players set position data 14
scoreboard players set refreshArea data 0
tp @a ~~~ facing ^^^1

# 如果是网易版，则直接给出邹鹭遥的馈赠
# 因为网易把 if blocks 搞炸了，把我们设计的谜题都给毁了 QAQ
execute if score client data matches 1 if score bottle4 data matches 0 run function game/badland/events/show_zouluyao_gift
execute if score client data matches 1 run scoreboard players set bottle4 data 1
