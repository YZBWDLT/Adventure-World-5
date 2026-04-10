# ===== 更新繁星农场 =====

#玩家的位置信息也会更新

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#复原陶罐等场景
fill -292 31 77 -288 31 77 aw:decorated_pot_type1

#播放音乐
scoreboard players set music data 101
function music/replay