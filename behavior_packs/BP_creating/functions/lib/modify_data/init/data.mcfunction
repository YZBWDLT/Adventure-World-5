# ===== 重置数据 =====
# 重置所有记分项和常加载区域的数据
# 调用此方法时：无需修饰。

# --- 记分项 ---
scoreboard objectives add active dummy "激活状态"
scoreboard objectives add data dummy "数据"
scoreboard objectives add time dummy "时间"
scoreboard objectives add deathState dummy "玩家死亡状态"
scoreboard objectives add isOnline dummy "玩家在线"
scoreboard objectives add itemState dummy "各道具状态"

# --- 变量 ---

## 心心上限相关
scoreboard players set heartPiece data 0
scoreboard players set heartLimit data 3

## 道具状态
scoreboard players set emeraldPickaxe itemState 0
scoreboard players set shell itemState 0

scoreboard players set bottle1 data 0
scoreboard players set bottle2 data 0
scoreboard players set bottle3 data 0
scoreboard players set bottle4 data 0
scoreboard players set village_start_music data 0
scoreboard players set sword data 0
scoreboard players set 1_mine_meettp data 0
scoreboard players set 1_mine_book data 0
scoreboard players set 1_mine_item data 0
scoreboard players set 1_mine_super_pickaxe data 0
scoreboard players set 1_mine_key data 0
scoreboard players set 1_mine_boss data 0
scoreboard players set 1_mine_tphelp data 0
scoreboard players set 2_hill_book data 0
scoreboard players set 2_hill_item data 0
scoreboard players set 2_hill_key data 0
scoreboard players set 2_hill_boss data 0
scoreboard players set village_goto_plain data 0
scoreboard players set 3_shaft_meetly data 0
scoreboard players set 3_shaft_book data 0
scoreboard players set 3_shaft_2 data 0
scoreboard players set 3_shaft_item data 0
scoreboard players set 3_shaft_key data 0
scoreboard players set 3_shaft_boss data 0
scoreboard players set 4_rail_book data 0
scoreboard players set 4_rail_item data 0
scoreboard players set 4_rail_key data 0
scoreboard players set 4_rail_boss data 0
scoreboard players set item_pumpkin data 0
scoreboard players set 5_mansion_book data 0
scoreboard players set 5_mansion_item data 0
scoreboard players set 5_mansion_key data 0
scoreboard players set 5_mansion_boss data 0
scoreboard players set 6_monument_book data 0
scoreboard players set 6_monument_item data 0
scoreboard players set 6_monument_key data 0
scoreboard players set 6_monument_boss data 0
scoreboard players set quiver data 0
scoreboard players set item_fire data 0
scoreboard players set monument_prepare data 0
scoreboard players set blue_ice data 0
scoreboard players set fortress_prepare data 0
scoreboard players set brush data 0
scoreboard players set 7_fortress_book data 0
scoreboard players set 7_fortress_help data 0
scoreboard players set 7_fortress_item data 0
scoreboard players set 7_fortress_key data 0
scoreboard players set 7_fortress_boss data 0
scoreboard players set 8_pe_book data 0
scoreboard players set 8_pe_boss data 0
scoreboard players set aiya_wodeshengao data 0
scoreboard players set 9_the_end_boss data 0
scoreboard players set 9_the_end_story data 0
scoreboard players set 9_the_end_init data 0
scoreboard players set 9_the_end_boss_finished data 0
scoreboard players set fog_type data 0

scoreboard players set 1_mine_enemy1 data 0
scoreboard players set 1_mine_enemy2 data 0
scoreboard players set village_enemy1 data 0
scoreboard players set 2_hill_enemy1 data 0
scoreboard players set kita data 0
scoreboard players set plain_enemy1 data 0
scoreboard players set plain_enemy2 data 0
scoreboard players set plain_enemy3 data 0
scoreboard players set plain_enemy4 data 0
scoreboard players set plain_enemy5 data 0
scoreboard players set plain_enemy6 data 0
scoreboard players set plain_enemy7 data 0
scoreboard players set 3_shaft_enemy1 data 0
scoreboard players set 3_shaft_enemy2 data 0
scoreboard players set 3_shaft_enemy3 data 0
scoreboard players set forest_enemy1 data 0
scoreboard players set forest_enemy2 data 0
scoreboard players set forest_enemy3 data 0
scoreboard players set 5_mansion_enemy1 data 0
scoreboard players set 5_mansion_enemy2 data 0
scoreboard players set 5_mansion_enemy3 data 0
scoreboard players set 5_mansion_enemy4 data 0
scoreboard players set sea_enemy1 data 0
scoreboard players set sea_enemy2 data 0
scoreboard players set sea_enemy3 data 0
scoreboard players set 6_monument_enemy1 data 0
scoreboard players set 6_monument_enemy2 data 0
scoreboard players set 6_monument_enemy3 data 0
scoreboard players set 6_monument_enemy4 data 0
scoreboard players set 7_fortress_enemy1 data 0
scoreboard players set 7_fortress_enemy2 data 0
scoreboard players set 7_fortress_enemy3 data 0
scoreboard players set 7_fortress_enemy4 data 0
scoreboard players set 8_pe_enemy1 data 0
scoreboard players set 8_pe_enemy2 data 0
scoreboard players set 8_pe_enemy3 data 0
scoreboard players set badland_enemy1 data 0
scoreboard players set badland_enemy2 data 0
