# ===== 获得染料后的一系列处理 =====

tellraw @a {"rawtext":[{"text":"§e已解锁的染料都已补满！"}]}
execute if block -277 31 96 barrel run clone -277 29 96 -277 29 96 -277 31 96
execute if block -278 31 96 barrel run clone -278 29 96 -278 29 96 -278 31 96
execute if block -279 31 96 barrel run clone -279 29 96 -279 29 96 -279 31 96
execute if block -280 31 96 barrel run clone -280 29 96 -280 29 96 -280 31 96
execute if block -282 31 96 barrel run clone -282 29 96 -282 29 96 -282 31 96
execute if block -283 31 96 barrel run clone -283 29 96 -283 29 96 -283 31 96
execute if block -284 31 96 barrel run clone -284 29 96 -284 29 96 -284 31 96
execute if block -285 31 96 barrel run clone -285 29 96 -285 29 96 -285 31 96
execute if block -287 31 96 barrel run clone -287 29 96 -287 29 96 -287 31 96
execute if block -288 31 96 barrel run clone -288 29 96 -288 29 96 -288 31 96
execute if block -289 31 96 barrel run clone -289 29 96 -289 29 96 -289 31 96
execute if block -290 31 96 barrel run clone -290 29 96 -290 29 96 -290 31 96
execute if block -287 31 93 barrel run clone -287 29 93 -287 29 93 -287 31 93
execute if block -288 31 93 barrel run clone -288 29 93 -288 29 93 -288 31 93
execute if block -289 31 93 barrel run clone -289 29 93 -289 29 93 -289 31 93
execute if block -290 31 93 barrel run clone -290 29 93 -290 29 93 -290 31 93

execute if block -277 31 96 air if entity @a[hasitem={item=brown_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁棕色！"}]}
execute if block -278 31 96 air if entity @a[hasitem={item=red_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁红色！"}]}
execute if block -279 31 96 air if entity @a[hasitem={item=orange_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁橙色！"}]}
execute if block -280 31 96 air if entity @a[hasitem={item=yellow_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁黄色！"}]}
execute if block -282 31 96 air if entity @a[hasitem={item=lime_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁浅绿色！"}]}
execute if block -283 31 96 air if entity @a[hasitem={item=green_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁绿色！"}]}
execute if block -284 31 96 air if entity @a[hasitem={item=cyan_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁青色！"}]}
execute if block -285 31 96 air if entity @a[hasitem={item=light_blue_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁浅蓝色！"}]}
execute if block -287 31 96 air if entity @a[hasitem={item=blue_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁蓝色！"}]}
execute if block -288 31 96 air if entity @a[hasitem={item=purple_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁紫色！"}]}
execute if block -289 31 96 air if entity @a[hasitem={item=magenta_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁品红色！"}]}
execute if block -290 31 96 air if entity @a[hasitem={item=pink_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁粉色！"}]}
execute if block -287 31 93 air if entity @a[hasitem={item=black_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁黑色！"}]}
execute if block -288 31 93 air if entity @a[hasitem={item=gray_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁灰色！"}]}
execute if block -289 31 93 air if entity @a[hasitem={item=light_gray_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁浅灰色！"}]}
execute if block -290 31 93 air if entity @a[hasitem={item=white_dye}] run tellraw @a {"rawtext":[{"text":"§e解锁白色！"}]}

execute if block -277 31 96 air if entity @a[hasitem={item=brown_dye}] run clone -277 29 96 -277 29 96 -277 31 96
execute if block -278 31 96 air if entity @a[hasitem={item=red_dye}] run clone -278 29 96 -278 29 96 -278 31 96
execute if block -279 31 96 air if entity @a[hasitem={item=orange_dye}] run clone -279 29 96 -279 29 96 -279 31 96
execute if block -280 31 96 air if entity @a[hasitem={item=yellow_dye}] run clone -280 29 96 -280 29 96 -280 31 96
execute if block -282 31 96 air if entity @a[hasitem={item=lime_dye}] run clone -282 29 96 -282 29 96 -282 31 96
execute if block -283 31 96 air if entity @a[hasitem={item=green_dye}] run clone -283 29 96 -283 29 96 -283 31 96
execute if block -284 31 96 air if entity @a[hasitem={item=cyan_dye}] run clone -284 29 96 -284 29 96 -284 31 96
execute if block -285 31 96 air if entity @a[hasitem={item=light_blue_dye}] run clone -285 29 96 -285 29 96 -285 31 96
execute if block -287 31 96 air if entity @a[hasitem={item=blue_dye}] run clone -287 29 96 -287 29 96 -287 31 96
execute if block -288 31 96 air if entity @a[hasitem={item=purple_dye}] run clone -288 29 96 -288 29 96 -288 31 96
execute if block -289 31 96 air if entity @a[hasitem={item=magenta_dye}] run clone -289 29 96 -289 29 96 -289 31 96
execute if block -290 31 96 air if entity @a[hasitem={item=pink_dye}] run clone -290 29 96 -290 29 96 -290 31 96
execute if block -287 31 93 air if entity @a[hasitem={item=black_dye}] run clone -287 29 93 -287 29 93 -287 31 93
execute if block -288 31 93 air if entity @a[hasitem={item=gray_dye}] run clone -288 29 93 -288 29 93 -288 31 93
execute if block -289 31 93 air if entity @a[hasitem={item=light_gray_dye}] run clone -289 29 93 -289 29 93 -289 31 93
execute if block -290 31 93 air if entity @a[hasitem={item=white_dye}] run clone -290 29 93 -290 29 93 -290 31 93