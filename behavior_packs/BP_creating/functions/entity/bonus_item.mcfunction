# ===== 奖励物品执行的命令 =====
# 可用的has_property：
# (aw:bonus_item_type):
# "sword", "iron_pickaxe", "gray_glazed_terracotta", "wind_pearl", "silver_glazed_terracotta", "bow", 
# "carved_pumpkin", "white_glazed_terracotta", "nautilus_shell", "quiver", "emerald_pickaxe", "water_gun"

#拿到除剑外的物品播放音效
execute unless entity @s[has_property={aw:bonus_item_type="sword"}] run music play get_tool 1 0 play_once
execute unless entity @s[has_property={aw:bonus_item_type="sword"}] run function lib/utils/music/queue

#拿到剑
execute if score sword itemState matches 0 if entity @s[has_property={aw:bonus_item_type="sword"}] run tellraw @a {"rawtext":[{"text":"§a[我]找到我的剑了！不过……它为什么在这里？"}]}
execute if score sword itemState matches 0 if entity @s[has_property={aw:bonus_item_type="sword"}] run tellraw @a {"rawtext":[{"text":"§e*道具坏掉了都会自动补充，随便用别担心"}]}
execute if score sword itemState matches 0 if entity @s[has_property={aw:bonus_item_type="sword"}] run music play get_sword 1 0 play_once
execute if score sword itemState matches 0 if entity @s[has_property={aw:bonus_item_type="sword"}] run scoreboard players set music data 3
execute if score sword itemState matches 0 if entity @s[has_property={aw:bonus_item_type="sword"}] run function lib/utils/music/queue
execute if score sword itemState matches 0 if entity @s[has_property={aw:bonus_item_type="sword"}] run scoreboard players set sword itemState 1

#拿到镐
execute if score pickaxe itemState matches 0 if entity @s[has_property={aw:bonus_item_type="iron_pickaxe"}] run tellraw @a {"rawtext":[{"text":"§e你拿到了镐！虽然不是神镐，但肯定有用！"}]}
execute if score pickaxe itemState matches 0 if entity @s[has_property={aw:bonus_item_type="iron_pickaxe"}] run scoreboard players set pickaxe itemState 1

#拿到灰色彩陶（并解锁快速下楼）
execute if score firstBlock itemState matches 0 if entity @s[has_property={aw:bonus_item_type="gray_glazed_terracotta"}] if block -287 -13 145 air run clone -287 -7 145 -287 -6 146 -287 -13 145
execute if score firstBlock itemState matches 0 if entity @s[has_property={aw:bonus_item_type="gray_glazed_terracotta"}] run tellraw @a {"rawtext":[{"text":"§e你拿到了方块！或许能放在哪里！"}]}
execute if score firstBlock itemState matches 0 if entity @s[has_property={aw:bonus_item_type="gray_glazed_terracotta"}] run scoreboard players set firstBlock itemState 1 

#拿到御风珠
execute if score windPearl itemState matches 0 if entity @s[has_property={aw:bonus_item_type="wind_pearl"}] run tellraw @a {"rawtext":[{"text":"§e你拿到了御风珠！这是什么，能扔出去？"}]}
execute if score windPearl itemState matches 0 if entity @s[has_property={aw:bonus_item_type="wind_pearl"}] run scoreboard players set windPearl itemState 1 

#拿到银色彩陶
execute if score secondBlock itemState matches 0 if entity @s[has_property={aw:bonus_item_type="silver_glazed_terracotta"}] run tellraw @a {"rawtext":[{"text":"§e第二种方块！但你已经有一种了啊？"}]}
execute if score secondBlock itemState matches 0 if entity @s[has_property={aw:bonus_item_type="silver_glazed_terracotta"}] run scoreboard players set secondBlock itemState 1 

#拿到南瓜
execute if score pumpkin itemState matches 0 if entity @s[has_property={aw:bonus_item_type="carved_pumpkin"}] run tellraw @a {"rawtext":[{"text":"§e你拿到了南瓜头！能戴在头上的法宝？"}]}
execute if score pumpkin itemState matches 0 if entity @s[has_property={aw:bonus_item_type="carved_pumpkin"}] run spawnpoint @a -238 20 -7
execute if score pumpkin itemState matches 0 if entity @s[has_property={aw:bonus_item_type="carved_pumpkin"}] run setworldspawn -238 20 -7
execute if score pumpkin itemState matches 0 if entity @s[has_property={aw:bonus_item_type="carved_pumpkin"}] run scoreboard players set pumpkin itemState 1 

#拿到弓
execute if score bow itemState matches 0 if entity @s[has_property={aw:bonus_item_type="bow"}] run tellraw @a {"rawtext":[{"text":"§e你拿到了弓！为什么不附赠箭啊？"}]}
execute if score bow itemState matches 0 if entity @s[has_property={aw:bonus_item_type="bow"}] run scoreboard players set bow itemState 1 

#拿到箭袋
execute if score quiver itemState matches 0 if entity @s[has_property={aw:bonus_item_type="quiver"}] run tellraw @a {"rawtext":[{"text":"§e你拿到了箭袋！可以装更多箭了！"}]}
execute if score quiver itemState matches 0 if entity @s[has_property={aw:bonus_item_type="quiver"}] run scoreboard players set quiver itemState 1

#拿到贝壳
execute if score shell itemState matches 0 if entity @s[has_property={aw:bonus_item_type="nautilus_shell"}] run tellraw @a {"rawtext":[{"text":"§e你拿到了贝壳！水下呼吸时间超大提升！"}]}
execute if score shell itemState matches 0 if entity @s[has_property={aw:bonus_item_type="nautilus_shell"}] run event entity @a breath_yes
execute if score shell itemState matches 0 if entity @s[has_property={aw:bonus_item_type="nautilus_shell"}] run scoreboard players set monument_prepare data 3
execute if score shell itemState matches 0 if entity @s[has_property={aw:bonus_item_type="nautilus_shell"}] run scoreboard players set shell itemState 1

#拿到白色彩陶
execute if score thirdBlock itemState matches 0 if entity @s[has_property={aw:bonus_item_type="white_glazed_terracotta"}] run tellraw @a {"rawtext":[{"text":"§e第三种方块！不用说你也知道怎么用！"}]}
execute if score thirdBlock itemState matches 0 if entity @s[has_property={aw:bonus_item_type="white_glazed_terracotta"}] run scoreboard players set thirdBlock itemState 1 

#拿到水枪
execute if score waterGun itemState matches 0 if entity @s[has_property={aw:bonus_item_type="water_gun"}] run tellraw @a {"rawtext":[{"text":"§e你拿到了……水枪？终于可以灭火了！"}]}
execute if score waterGun itemState matches 0 if entity @s[has_property={aw:bonus_item_type="water_gun"}] run scoreboard players set waterGun itemState 1 

#拿到绿宝石镐
execute if score emeraldPickaxe itemState matches 0 if entity @s[has_property={aw:bonus_item_type="emerald_pickaxe"}] run tellraw @a {"rawtext":[{"text":"§e田萍的神镐被神庙复活了！除了可以破坏黑曜石还能在水下挖掘！"}]}
execute if score emeraldPickaxe itemState matches 0 if entity @s[has_property={aw:bonus_item_type="emerald_pickaxe"}] run scoreboard players set emeraldPickaxe itemState 3