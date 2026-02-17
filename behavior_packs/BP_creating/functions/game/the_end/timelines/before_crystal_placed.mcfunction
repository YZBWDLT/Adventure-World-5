# ===== 玩家放置末地水晶之前时间线 =====
# 在 BOSS 战过程中的玩家放置末地水晶之前（开战前）的循环命令于此执行

# 当玩家没有末地水晶时，给予玩家 4 个末地水晶
give @a[hasitem={item=end_crystal,quantity=0}] end_crystal 4 0 {"item_lock":{"mode":"lock_in_inventory"}}

# 当末地水晶数量大于等于 4 后，进入下一阶段：
execute if score ender_crystal_amount data matches 4.. run function game/the_end/events/on_crystal_placed
