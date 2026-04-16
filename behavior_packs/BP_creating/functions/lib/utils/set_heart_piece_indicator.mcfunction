# ===== 设置心之碎片指示器 =====
# 按照 data.heartPiece 的值在玩家物品栏最后一位设置心之碎片数目的指示器。
# 调用此方法时：无需修饰。

execute if score heartPiece data matches 0 run replaceitem entity @a slot.inventory 26 aw:heart_piece_0 1 0 {"item_lock":{"mode":"lock_in_slot"}}
execute if score heartPiece data matches 1 run replaceitem entity @a slot.inventory 26 aw:heart_piece_1 1 0 {"item_lock":{"mode":"lock_in_slot"}}
execute if score heartPiece data matches 2 run replaceitem entity @a slot.inventory 26 aw:heart_piece_2 1 0 {"item_lock":{"mode":"lock_in_slot"}}
execute if score heartPiece data matches 3 run replaceitem entity @a slot.inventory 26 aw:heart_piece_3 1 0 {"item_lock":{"mode":"lock_in_slot"}}
