# ===== 游戏内常开的功能 =====

#水下有挖掘疲劳，用钻镐没事
#0:拿到钻镐就清除，1:无作用，2：有钻镐，但不能进府邸神殿要塞，3：有钻镐
execute if score 8_pe_item data matches 0 run clear @a diamond_pickaxe
execute if score 8_pe_item data matches 2..3 as @a[hasitem={item=diamond_pickaxe,quantity=0}] run give @s diamond_pickaxe 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3","aw:dig1","aw:dig2","aw:dig3","aw:dig4","aw:dig5","aw:dig6","aw:dig7","aw:dig8","aw:dig8drop","aw:dig9","gray_glazed_terracotta","silver_glazed_terracotta","white_glazed_terracotta","aw:old_cobblestone","aw:old_gold_block","aw:nether_reactor_core"]}}
execute as @a at @s if block ~~~ water run effect @s[hasitem={item=diamond_pickaxe,quantity=0}] mining_fatigue 1 4 true
execute as @a at @s if block ~~1~ water run effect @s[hasitem={item=diamond_pickaxe,quantity=0}] mining_fatigue 1 4 true

#一颗恢复之心立刻恢复2颗心
execute as @a[hasitem={item=aw:heart}] run effect @s instant_health 1 0 true
execute as @a[hasitem={item=aw:heart}] run clear @s aw:heart 0 1

#拿到心之碎片，心之容器后
execute as @e[type=aw:heart_piece] at @s if entity @a[r=1] run function lib/modify_data/game/get_heart_piece
execute as @e[type=aw:heart_container] at @s if entity @a[r=1] run function lib/modify_data/game/get_heart_container

#饱和效果
execute if score tick time matches 0 if score saturation data matches 1 run effect @a saturation 5 0 true

#能挖掉的方块不要有掉落物
scriptevent aw:removeItemEntity minecraft:gray_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:light_gray_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:white_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:string
scriptevent aw:removeItemEntity minecraft:cactus
scriptevent aw:removeItemEntity minecraft:oak_sign
execute unless score position data matches 9 run scriptevent aw:removeItemEntity minecraft:obsidian

#当武器工具坏掉后给予，剑还要附魔
execute if score sword data matches 1 as @a[hasitem={item=diamond_sword,quantity=0}] run give @s diamond_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["web","aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}
execute if score sword data matches 1 as @a[hasitem={item=diamond_sword,location=slot.weapon.mainhand}] run enchant @s sharpness 3
execute if score sword data matches 1 as @a[hasitem={item=diamond_sword,location=slot.weapon.mainhand}] run enchant @s knockback 1
execute as @a[hasitem={item=fishing_rod,location=slot.weapon.mainhand}] run enchant @s lure 3
execute if score 5_mansion_item data matches 1 as @a[hasitem={item=bow,location=slot.weapon.mainhand}] run enchant @s power 1
execute if score 1_mine_item data matches 1.. as @a[hasitem={item=iron_pickaxe,quantity=0}] run give @s iron_pickaxe 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3","aw:dig1","aw:dig2","aw:dig3","aw:dig4","aw:dig5","aw:dig6","aw:dig7","aw:dig9","gray_glazed_terracotta","silver_glazed_terracotta","white_glazed_terracotta"]}}

#获得方块前不能携带（仅灰），获得后自动补充
execute if score 2_hill_item data matches 0 as @a[hasitem={item=gray_glazed_terracotta}] run clear @s gray_glazed_terracotta
execute if score 2_hill_item data matches 1 as @a[hasitem={item=gray_glazed_terracotta,quantity=..1}] run give @s gray_glazed_terracotta 63 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["black_glazed_terracotta"]},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}
execute if score 4_rail_item data matches 1 as @a[hasitem={item=silver_glazed_terracotta,quantity=..1}] run give @s silver_glazed_terracotta 63 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["gray_glazed_terracotta"]},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}
execute if score 6_monument_item data matches 1 as @a[hasitem={item=white_glazed_terracotta,quantity=..1}] run give @s white_glazed_terracotta 63 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["silver_glazed_terracotta"]},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

#获得御风珠之后自动补充
execute if score 3_shaft_item data matches 2 run clear @a aw:wind_pearl
execute if score 3_shaft_item data matches 1 as @a[hasitem={item=aw:wind_pearl,quantity=..1}] run give @s aw:wind_pearl 15 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

#获得水枪之后自动补充
execute if score 7_fortress_item data matches 1 as @a[hasitem={item=aw:water_gun,quantity=..1}] run give @s aw:water_gun 15 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

#获得南瓜之后自动补充
execute if score item_pumpkin data matches 1 as @a[hasitem={item=carved_pumpkin,quantity=0}] run give @s carved_pumpkin 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

#弓和箭袋影响箭携带上限
execute if score 5_mansion_item data matches 1 as @a[hasitem={item=bow,quantity=0}] run give @s bow 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}
execute if score 5_mansion_item data matches 0 run scriptevent aw:removeItemEntity minecraft:arrow
execute if score 5_mansion_item data matches 0 run clear @a arrow
execute if score quiver data matches 1 as @a[hasitem={item=aw:quiver,quantity=0}] run give @s aw:quiver 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

execute if score quiver data matches 0 as @a[hasitem={item=arrow,quantity=33..}] run tag @s add much_arrow
execute if score quiver data matches 1 as @a[hasitem={item=arrow,quantity=65..}] run tag @s add much_arrow
execute as @a[tag=much_arrow] run clear @s arrow
execute if score quiver data matches 0 as @a[tag=much_arrow] run give @s arrow 32
execute if score quiver data matches 1 as @a[tag=much_arrow] run give @s arrow 64
tag @a remove much_arrow

#获得贝壳
execute if score item_breath data matches 1 as @a[hasitem={item=nautilus_shell,quantity=0}] run give @s nautilus_shell 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

#限制钓竿
execute as @e[type=fishing_hook] at @s if entity @e[family=no_hook,r=4] run kill @s

#补充打火石
execute if score item_fire data matches 3 as @a[hasitem={item=flint_and_steel,quantity=0}] run give @s flint_and_steel 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]},"minecraft:can_place_on":{"blocks":["netherrack","soul_soil"]}}

#补充雪浪笔
execute if score brush data matches 1 as @a[hasitem={item=aw:schellon_brush,quantity=..1}] run give @s aw:schellon_brush 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

#雪浪笔使用后的效果
execute if entity @e[type=snowball] run function lib/modify_data/game/brush_effect

#替换深板岩
execute at @a run fill ~-5~-5~-5 ~5~5~5 deepslate replace deepslate

#清空经验
xp -1L @a

#切换游戏模式提示
execute if entity @a[m=creative] if score gamemode data matches 0 run tellraw @a {"rawtext":[{"text":"§e跑酷和战斗遇到困难了就开创造吧！如果解谜遇到困难可以去§db站搜“狂野巴豆”§e看攻略视频！"}]}
execute if entity @a[m=creative] if score gamemode data matches 0 run tellraw @a {"rawtext":[{"text":"§b在各场景之间切换时一定要走§d箭头方块入口§b，不要直接飞过去，以免出现问题！"}]}
execute if entity @a[m=creative] if score gamemode data matches 0 run scoreboard players set gamemode data 1
execute unless entity @a[m=creative] if score gamemode data matches 1 run scoreboard players set gamemode data 0