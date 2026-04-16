# ===== 玩家使用雪浪笔 =====
# 当玩家使用雪浪笔后执行此函数，按照玩家拥有的染料数量执行对应效果

# 青色染料 * 8 -> 周围 8 格怪物缓慢 V 3s
execute if entity @s[hasitem={item=cyan_dye,quantity=8..}] run effect @e[family=monster,r=8] slowness 3 4
clear @s cyan_dye -1 8
# 紫色染料 * 8 -> 玩家获得抗性提升 IV 6s
effect @s[hasitem={item=purple_dye,quantity=8..}] resistance 6 3
clear @s purple_dye -1 8
# 白色染料 * 8 -> 玩家获得隐身 24s
effect @s[hasitem={item=white_dye,quantity=8..}] invisibility 24 0
clear @s white_dye -1 8

# 蓝色染料 * 4 -> 周围 8 格怪物缓慢 II 60s
execute if entity @s[hasitem={item=blue_dye,quantity=4..}] run effect @e[family=monster,r=8] slowness 60 1
clear @s blue_dye -1 4
# 品红色染料 * 4 -> 玩家获得抗性提升 I 60s
effect @s[hasitem={item=magenta_dye,quantity=4..}] resistance 60 0
clear @s magenta_dye -1 4
# 灰色染料 * 4 -> 周围8格怪物虚弱 V 12s
execute if entity @s[hasitem={item=gray_dye,quantity=4..}] run effect @e[family=monster,r=8] weakness 12 4
clear @s gray_dye -1 4
# 黄色染料 * 4 -> 玩家获得力量 II 6s
effect @s[hasitem={item=yellow_dye,quantity=4..}] strength 6 1
clear @s yellow_dye -1 4

# 黑色染料 * 2 -> 对周围 12 格蜘蛛造成 20 点伤害
execute if entity @s[hasitem={item=black_dye,quantity=2..}] run damage @e[type=cave_spider,r=12] 20
clear @s black_dye -1 2
# 浅蓝色染料 * 2 -> 对周围 12 格溺尸造成 30 点伤害
execute if entity @s[hasitem={item=light_blue_dye,quantity=2..}] run damage @e[type=drowned,r=12] 30
clear @s light_blue_dye -1 2
# 红色染料 * 2 -> 对周围 12 格岩浆怪造成 20 点伤害
execute if entity @s[hasitem={item=red_dye,quantity=2..}] run damage @e[type=magma_cube,r=12] 20
clear @s red_dye -1 2

# 棕色染料 * 1 -> 玩家获得 4 根箭
give @s[hasitem={item=brown_dye}] arrow 4
clear @s brown_dye -1 1
# 黄绿色染料 * 1 -> 解毒
effect @s[hasitem={item=lime_dye}] clear poison
clear @s lime_dye -1 1
# 橙色染料 * 1 -> 清除所有箭和三叉戟
execute if entity @s[hasitem={item=orange_dye}] run kill @e[type=arrow]
execute if entity @s[hasitem={item=orange_dye}] run kill @e[type=thrown_trident]
clear @s orange_dye -1 1
# 浅灰色染料 * 1 -> 吸引所有掉落物
execute if entity @s[hasitem={item=light_gray_dye}] run tp @e[type=item] ~~~
clear @s light_gray_dye -1 1
# 绿色染料 * 1 -> 补充没穿的装备
replaceitem entity @s[hasitem=[{item=green_dye},{item=leather_helmet,quantity=0}]] slot.armor.head 0 leather_helmet
replaceitem entity @s[hasitem=[{item=green_dye},{item=leather_chestplate,quantity=0}]] slot.armor.chest 0 leather_chestplate
replaceitem entity @s[hasitem=[{item=green_dye},{item=leather_leggings,quantity=0}]] slot.armor.legs 0 leather_leggings
replaceitem entity @s[hasitem=[{item=green_dye},{item=leather_boots,quantity=0}]] slot.armor.feet 0 leather_boots
clear @s green_dye -1 1
# 粉色染料 * 1 -> 周围 8 格 NPC 挥手
execute if entity @s[hasitem={item=pink_dye}] run event entity @e[type=aw:npc,r=8] aw:wave_hand
clear @s pink_dye -1 1

# 在该玩家周围释放粒子
particle aw:schellon_particle ~~0.1~
