# ===== 游戏模式切换器 =====
# 用于在玩家手持对应更改游戏模式的物品时，切换游戏模式。
# 调用此方法时：无需修饰。

# --- 给予全体玩家4种变换模式的工具 ---
replaceitem entity @a[hasitem={item=clock,quantity=0}] slot.inventory 0 clock
replaceitem entity @a[hasitem={item=allay_spawn_egg,quantity=0}] slot.inventory 1 allay_spawn_egg
replaceitem entity @a[hasitem={item=compass,quantity=0}] slot.inventory 2 compass
replaceitem entity @a[hasitem={item=recovery_compass,quantity=0}] slot.inventory 3 recovery_compass

# --- 手持 切换为创造 物品时，切换该玩家为创造模式 ---

## 当玩家处于创造模式时，执行失败
tellraw @a[m=creative,hasitem={item=clock,location=slot.weapon.mainhand}] { "rawtext": [ { "translate": "§c你已为创造模式，无法做出更改" } ] }
## 当玩家不处于创造模式时，执行成功
tellraw @a[m=!creative,hasitem={item=clock,location=slot.weapon.mainhand}] { "rawtext": [ { "translate": "你已被调整为创造模式" } ] }
gamemode creative @a[m=!creative,hasitem={item=clock,location=slot.weapon.mainhand}]
## 将玩家手中的物品清除
replaceitem entity @a[hasitem={item=clock,location=slot.weapon.mainhand}] slot.weapon.mainhand 0 air
## 当玩家处于旁观模式抬头时，变回创造模式
tellraw @a[m=spectator,rx=-85,rxm=-90] { "rawtext": [ { "translate": "你已被调整为创造模式" } ] }
gamemode creative @a[m=spectator,rx=-85,rxm=-90]

# --- 手持 切换为生存 物品时，切换该玩家为生存模式 ---

## 当玩家处于生存模式时，执行失败
tellraw @a[m=survival,hasitem={item=allay_spawn_egg,location=slot.weapon.mainhand}] { "rawtext": [ { "translate": "§c你已为生存模式，无法做出更改" } ] }
## 当玩家不处于生存模式时，执行成功
tellraw @a[m=!survival,hasitem={item=allay_spawn_egg,location=slot.weapon.mainhand}] { "rawtext": [ { "translate": "你已被调整为生存模式" } ] }
gamemode survival @a[m=!survival,hasitem={item=allay_spawn_egg,location=slot.weapon.mainhand}]
## 将玩家手中的物品清除
replaceitem entity @a[hasitem={item=allay_spawn_egg,location=slot.weapon.mainhand}] slot.weapon.mainhand 0 air

# --- 手持 切换为冒险 物品时，切换该玩家为冒险模式 ---

## 当玩家处于冒险模式时，执行失败
tellraw @a[m=adventure,hasitem={item=compass,location=slot.weapon.mainhand}] { "rawtext": [ { "translate": "§c你已为冒险模式，无法做出更改" } ] }
## 当玩家不处于冒险模式时，执行成功
tellraw @a[m=!adventure,hasitem={item=compass,location=slot.weapon.mainhand}] { "rawtext": [ { "translate": "你已被调整为冒险模式" } ] }
gamemode adventure @a[m=!adventure,hasitem={item=compass,location=slot.weapon.mainhand}]
## 将玩家手中的物品清除
replaceitem entity @a[hasitem={item=compass,location=slot.weapon.mainhand}] slot.weapon.mainhand 0 air

# --- 手持 切换为旁观 物品时，切换该玩家为旁观模式 ---

## 当玩家处于旁观模式时，执行失败
tellraw @a[m=spectator,hasitem={item=recovery_compass,location=slot.weapon.mainhand}] { "rawtext": [ { "translate": "§c你已为旁观模式，无法做出更改" } ] }
## 当玩家不处于旁观模式时，执行成功
tellraw @a[m=!spectator,hasitem={item=recovery_compass,location=slot.weapon.mainhand}] { "rawtext": [ { "translate": "你已被调整为旁观模式，抬头调整回创造模式" } ] }
gamemode spectator @a[m=!spectator,hasitem={item=recovery_compass,location=slot.weapon.mainhand}]
## 将玩家手中的物品清除
replaceitem entity @a[hasitem={item=recovery_compass,location=slot.weapon.mainhand}] slot.weapon.mainhand 0 air

