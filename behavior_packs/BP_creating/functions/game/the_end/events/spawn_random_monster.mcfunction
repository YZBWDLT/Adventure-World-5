# ===== 生成随机怪物 =====
# 在给定位置生成随机怪物。
# 调用此方法时：需指定执行位置为待生成怪物的位置（execute positioned (怪物位置) ...）。

scoreboard players random monster_type data 1 16

execute if score monster_type data matches 1 run summon zombie ~~~ 0 0
execute if score monster_type data matches 2 run summon zombie ~~~ 0 0 aw:baby
execute if score monster_type data matches 3 run summon zombie ~~~ 0 0 aw:equip
execute if score monster_type data matches 4 run summon zombie ~~~ 0 0 aw:equip_baby
execute if score monster_type data matches 5 run summon skeleton ~~~ 0 0
execute if score monster_type data matches 6 run summon skeleton ~~~ 0 0 aw:equip
execute if score monster_type data matches 7 run summon drowned ~~~ 0 0
execute if score monster_type data matches 8 run summon drowned ~~~ 0 0 aw:baby
execute if score monster_type data matches 9 run summon drowned ~~~ 0 0 aw:equip
execute if score monster_type data matches 10 run summon drowned ~~~ 0 0 aw:equip_baby
execute if score monster_type data matches 11 run summon chicken ~~~ 0 0 aw:chicken_jockey
execute if score monster_type data matches 12 run summon chicken ~~~ 0 0 aw:chicken_equip_jockey
execute if score monster_type data matches 13 run summon cave_spider ~~~ 0 0
execute if score monster_type data matches 14 run summon magma_cube ~~~ 0 0 aw:spawn_small
execute if score monster_type data matches 15 run summon magma_cube ~~~ 0 0 aw:spawn_medium
execute if score monster_type data matches 16 run summon magma_cube ~~~ 0 0 aw:spawn_large

scoreboard players reset monster_type data
scoreboard players add monster_amount data 1
