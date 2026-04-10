# ===== 更新终末之地 =====
# 当每次进入终末之地时执行此命令

# 记录已刷新避免重复
scoreboard players set refreshArea data 1

# 更新箭矢陶罐
setblock 3 59 -2 aw:decorated_pot_type3
setblock -2 59 -3 aw:decorated_pot_type3
setblock -3 59 2 aw:decorated_pot_type3
setblock 2 59 3 aw:decorated_pot_type3

# 更新心心陶罐
setblock 2 59 -3 aw:decorated_pot_type2
setblock -3 59 -2 aw:decorated_pot_type2
setblock -2 59 3 aw:decorated_pot_type2
setblock 3 59 2 aw:decorated_pot_type2
