#使用雪浪笔,检测到其扔出的雪球之后,根据携带的染料执行效果

#青-周围8格怪物缓慢V-3s
execute at @a[hasitem={item=cyan_dye}] run effect @e[family=monster,r=8] slowness 3 4
clear @a cyan_dye 0 8
#紫-玩家获得抗性提升IV-6s
execute as @a[hasitem={item=purple_dye}] run effect @s resistance 6 3
clear @a purple_dye 0 8
#白色-玩家获得隐身-24s
execute as @a[hasitem={item=white_dye}] run effect @s invisibility 24 0
clear @a white_dye 0 8

#蓝-周围8格怪物缓慢II-60s
execute at @a[hasitem={item=blue_dye}] run effect @e[family=monster,r=8] slowness 60 1
clear @a blue_dye 0 4
#品红-玩家获得抗性提升I-60s
execute as @a[hasitem={item=magenta_dye}] run effect @s resistance 60 0
clear @a magenta_dye 0 4
#灰-周围8格怪物虚弱V-12s
execute at @a[hasitem={item=gray_dye}] run effect @e[family=monster,r=8] weakness 12 4
clear @a gray_dye 0 4
#黄-玩家获得力量II-6s
execute as @a[hasitem={item=yellow_dye}] run effect @s strength 6 1
clear @a yellow_dye 0 4

#黑-周围12格蜘蛛造成20点伤害
execute at @a[hasitem={item=black_dye}] run damage @e[type=cave_spider,r=12] 20
clear @a black_dye 0 2
#浅蓝-周围12格溺尸造成30点伤害
execute at @a[hasitem={item=light_blue_dye}] run damage @e[type=drowned,r=12] 30
clear @a light_blue_dye 0 2
#红-周围12格岩浆怪造成20点伤害
execute at @a[hasitem={item=red_dye}] run damage @e[type=magma_cube,r=12] 20
clear @a red_dye 0 2

#棕-玩家获得4根箭
execute as @a[hasitem={item=brown_dye}] run give @s arrow 4
clear @a brown_dye 0 1
#黄绿-解毒
execute as @a[hasitem={item=lime_dye}] run effect @s clear poison
clear @a lime_dye 0 1
#橙-清除所有箭和三叉戟
execute if entity @a[hasitem={item=orange_dye}] run kill @e[type=arrow]
execute if entity @a[hasitem={item=orange_dye}] run kill @e[type=thrown_trident]
clear @a orange_dye 0 1
#浅灰-吸引所有掉落物
execute at @a[hasitem={item=light_gray_dye}] run tp @e[type=item] ~~~
clear @a light_gray_dye 0 1
#绿-补充没穿的装备
execute as @a[hasitem=[{item=green_dye},{item=leather_helmet,quantity=0}]] run replaceitem entity @s slot.armor.head 0 leather_helmet
execute as @a[hasitem=[{item=green_dye},{item=leather_chestplate,quantity=0}]] run replaceitem entity @s slot.armor.chest 0 leather_chestplate
execute as @a[hasitem=[{item=green_dye},{item=leather_leggings,quantity=0}]] run replaceitem entity @s slot.armor.legs 0 leather_leggings
execute as @a[hasitem=[{item=green_dye},{item=leather_boots,quantity=0}]] run replaceitem entity @s slot.armor.feet 0 leather_boots
clear @a green_dye 0 1
#粉-周围8格npc挥手
execute at @a[hasitem={item=pink_dye}] run event entity @e[type=aw:npc,r=8] aw:wave_hand
clear @a pink_dye 0 1

#最后清除雪球
kill @e[type=snowball]