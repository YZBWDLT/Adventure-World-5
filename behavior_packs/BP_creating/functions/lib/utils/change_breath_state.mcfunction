# ===== 修正呼吸状态 =====
# 按照 itemState.shell 的值设置玩家的血量上限。
# 调用此方法时：无需修饰。

execute if score shell itemState matches 0 run event entity @a breath_no
execute if score shell itemState matches 1 run event entity @a breath_yes
