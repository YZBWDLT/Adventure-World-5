# ===== 主函数 =====

# --- 计时器 ---

## time.tick
scoreboard players add tick time 1
execute unless score tick time matches 0..19 run scoreboard players set tick time 0
## time.timeline
execute if score timeline active matches 1.. if score timeLapse data matches 1.. run scoreboard players add timeline time 1
execute if score timeLapse data matches 1.. run scoreboard players add timeline time 1

# --- 时间线 ---

# 当剧情没有执行时timeline active=0，timeline不动并开启检测功能；当有剧情时>0，开启timeline并关闭检测避免重复执行
execute if score timeline active matches 1.. run function system/controller/timeline

# --- 反退出重进 ---

## 获取退出重进的玩家
scoreboard players add @a isOnline 0
## 令退出重进玩家执行命令
execute as @a[scores={isOnline=0}] at @s run function lib/events/player_join
## 将所有玩家设置为在线模式
scoreboard objectives remove isOnline
scoreboard objectives add isOnline dummy "玩家在线"
scoreboard players set @a isOnline 1

# --- 玩家死亡检测 ---

## 玩家复活检测
function lib/get_data/player_is_alive
execute as @a[tag=isAlive,scores={deathState=2}] run function lib/events/player_respawn
## 玩家死亡检测
scoreboard players set @a[scores={deathState=!2}] deathState 1
scoreboard players set @e[type=player] deathState 0
execute as @a[scores={deathState=1}] at @s run function lib/events/player_die
scoreboard players set @a[scores={deathState=1}] deathState 2

# --- 物品道具 ---

## 剑 | 补充剑并对剑自动附魔
execute if score sword itemState matches 1 run give @a[hasitem={item=diamond_sword,quantity=0}] diamond_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["web","aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}
execute if score sword itemState matches 1 run enchant @a[hasitem={item=diamond_sword,location=slot.weapon.mainhand}] sharpness 3
execute if score sword itemState matches 1 run enchant @a[hasitem={item=diamond_sword,location=slot.weapon.mainhand}] knockback 1

## 镐 | 补充镐
execute if score pickaxe itemState matches 1.. as @a[hasitem={item=iron_pickaxe,quantity=0}] run give @s iron_pickaxe 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3","aw:dig1","aw:dig2","aw:dig3","aw:dig4","aw:dig5","aw:dig6","aw:dig7","aw:dig9","gray_glazed_terracotta","silver_glazed_terracotta","white_glazed_terracotta"]}}

## 第一个方块（灰色带釉陶瓦） | 移除或补充第一个方块
execute if score firstBlock itemState matches 0 run clear @a[hasitem={item=gray_glazed_terracotta}] gray_glazed_terracotta
execute if score firstBlock itemState matches 1 run give @a[hasitem={item=gray_glazed_terracotta,quantity=..1}] gray_glazed_terracotta 63 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["black_glazed_terracotta"]},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

## 御风珠 | 移除（靠近标靶）或补充御风珠
execute if score windPearl itemState matches 2 run clear @a aw:wind_pearl
execute if score windPearl itemState matches 1 run give @a[hasitem={item=aw:wind_pearl,quantity=..1}] aw:wind_pearl 15 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

## 第二个方块（淡灰色带釉陶瓦） | 补充第二个方块
execute if score secondBlock itemState matches 1 run give @a[hasitem={item=silver_glazed_terracotta,quantity=..1}] silver_glazed_terracotta 63 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["gray_glazed_terracotta"]},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

## 钓鱼竿 | 对钓鱼竿自动附魔，阻止钓竿钓到黑名单实体
enchant @a[hasitem={item=fishing_rod,location=slot.weapon.mainhand}] lure 3
execute as @e[type=fishing_hook] at @s if entity @e[family=no_hook,r=4] run kill @s

## 南瓜头 | 补充南瓜头
execute if score pumpkin itemState matches 1 run give @a[hasitem={item=carved_pumpkin,quantity=0}] carved_pumpkin 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

## 弓 | 补充弓并对弓自动附魔，阻止没有弓的玩家获得箭
execute if score bow itemState matches 0 run scriptevent aw:removeItemEntity minecraft:arrow
execute if score bow itemState matches 0 run clear @a arrow
execute if score bow itemState matches 1 run give @a[hasitem={item=bow,quantity=0}] bow 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}
execute if score bow itemState matches 1 run enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] power 1

## 箭袋 | 补充箭袋，阻止玩家获得过多的箭
execute if score quiver itemState matches 1 as @a[hasitem={item=aw:quiver,quantity=0}] run give @s aw:quiver 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}
execute if score quiver itemState matches 0 run tag @a[hasitem={item=arrow,quantity=33..}] add tooManyArrows
execute if score quiver itemState matches 1 run tag @a[hasitem={item=arrow,quantity=65..}] add tooManyArrows
clear @a[tag=tooManyArrows] arrow
execute if score quiver itemState matches 0 run give @a[tag=tooManyArrows] arrow 32
execute if score quiver itemState matches 1 run give @a[tag=tooManyArrows] arrow 64
tag @a remove tooManyArrows

## 贝壳 | 补充贝壳
execute if score shell itemState matches 1 run give @a[hasitem={item=nautilus_shell,quantity=0}] nautilus_shell 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

## 第三个方块（白色带釉陶瓦） | 补充第三个方块
execute if score thirdBlock itemState matches 1 as @a[hasitem={item=white_glazed_terracotta,quantity=..1}] run give @s white_glazed_terracotta 63 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_place_on":{"blocks":["silver_glazed_terracotta"]},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

## 打火石 | 补充打火石
execute if score flintAndSteel itemState matches 3 as @a[hasitem={item=flint_and_steel,quantity=0}] run give @s flint_and_steel 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]},"minecraft:can_place_on":{"blocks":["netherrack","soul_soil"]}}

## 水枪 | 补充水枪
execute if score waterGun itemState matches 1 as @a[hasitem={item=aw:water_gun,quantity=..1}] run give @s aw:water_gun 15 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

## 神镐 | 移除或补充神镐，阻止无神镐的玩家在水里破坏方块
## itemState.emeraldPickaxe -> 0：禁止神镐；1：允许神镐，但此时神镐无作用；2：允许神镐，但此时不能进府邸神殿要塞；3：允许神镐
execute if score emeraldPickaxe itemState matches 0 run clear @a diamond_pickaxe
execute if score emeraldPickaxe itemState matches 2..3 run give @a[hasitem={item=diamond_pickaxe,quantity=0}] diamond_pickaxe 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3","aw:dig1","aw:dig2","aw:dig3","aw:dig4","aw:dig5","aw:dig6","aw:dig7","aw:dig8","aw:dig8drop","aw:dig9","gray_glazed_terracotta","silver_glazed_terracotta","white_glazed_terracotta","aw:old_cobblestone","aw:old_gold_block","aw:nether_reactor_core"]}}
execute as @a at @s if block ~~~ water run effect @s[hasitem={item=diamond_pickaxe,quantity=0}] mining_fatigue 1 4 true
execute as @a at @s if block ~~1~ water run effect @s[hasitem={item=diamond_pickaxe,quantity=0}] mining_fatigue 1 4 true

## 雪浪笔 | 补充雪浪笔
execute if score schellonBrush itemState matches 1 run give @a[hasitem={item=aw:schellon_brush,quantity=0}] aw:schellon_brush 1 0 {"item_lock":{"mode":"lock_in_inventory"},"minecraft:can_destroy":{"blocks":["aw:decorated_pot_type1","aw:decorated_pot_type2","aw:decorated_pot_type3"]}}

## 恢复之心 | 移除并恢复血量
execute as @a[hasitem={item=aw:heart}] run effect @s instant_health 1 0 true
execute as @a[hasitem={item=aw:heart}] run clear @s aw:heart 0 1

## 心之碎片 & 心之容器 | 移除并对玩家血量操作
execute as @e[type=aw:heart_piece] at @s if entity @a[r=1] run function lib/utils/get_heart_piece
execute as @e[type=aw:heart_container] at @s if entity @a[r=1] run function lib/utils/get_heart_container

# --- 杂项功能 ---

# 饱和效果
execute if score tick time matches 0 if score saturation data matches 1 run effect @a saturation 5 0 true

# 清除玩家的经验
xp -1L @a

# 阻止特殊的掉落物 | 除溟海外，其余区域还要清除黑曜石
scriptevent aw:removeItemEntity minecraft:gray_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:light_gray_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:white_glazed_terracotta
scriptevent aw:removeItemEntity minecraft:string
scriptevent aw:removeItemEntity minecraft:cactus
scriptevent aw:removeItemEntity minecraft:oak_sign
execute unless score position data matches 9 run scriptevent aw:removeItemEntity minecraft:obsidian

# 如果玩家开创则提示玩家
execute if entity @a[m=creative] if score gamemode data matches 0 run tellraw @a {"rawtext":[{"text":"§e跑酷和战斗遇到困难了就开创造吧！如果解谜遇到困难可以去§db站搜“狂野巴豆”§e看攻略视频！"}]}
execute if entity @a[m=creative] if score gamemode data matches 0 run tellraw @a {"rawtext":[{"text":"§b在各场景之间切换时一定要走§d箭头方块入口§b，不要直接飞过去，以免出现问题！"}]}
execute if entity @a[m=creative] if score gamemode data matches 0 run scoreboard players set gamemode data 1
execute unless entity @a[m=creative] if score gamemode data matches 1 run scoreboard players set gamemode data 0

# [debug] 中国版的蜂箱可能会在射鸡游戏处出现神奇蜜蜂，大约1000+只，大幅降低游戏性能，所以杀杀杀
execute if score client data matches 1 if entity @e[type=bee] run kill @e[type=bee]

# --- 各区域循环执行的代码 ---
# 区域代码：
# -1 第一大矿洞 | -2 浮空峰遗迹 | -3 逍遥矿井 | -4 地铁控制室 | -5 林地府邸
# -6 海底神殿 | -7 下界要塞 | -8 时间神庙 | -9 终末之地
# 0 开始 | 1 筑梦镇 | 2 逍遥平原（包含旭日沙漠和买卖村） | 3 地铁中枢 | 4 迷失森林 | 5 明月森林 |
# 6 繁星农场 | 7 溟海 | 8 五色山 | 9 结束

execute if score position data matches 0 run function area/start/timeline
execute if score position data matches 9 run function game/sea/timeline

#游戏内一直开的功能
function system/test
function system/once

#function system/developer_gamemode
#execute at @a run fill ~-5~-5~-5 ~5~5~5 deepslate replace deepslate
