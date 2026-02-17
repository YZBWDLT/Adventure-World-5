# ===== 更新地铁控制室 =====

#当每次进入地铁控制室时执行此命令
#怪物会重新生成，但机关不会
#在通关之前BOSS会重新生成

#记录已刷新避免重复
scoreboard players set refresh data 1

#复原陶罐等场景
fill -165 -44 -42 -163 -44 -42 aw:decorated_pot_type1
fill -153 -44 -39 -153 -44 -37 aw:decorated_pot_type1

#复原坐标笔记
clone -139 -49 -56 -139 -49 -56 -139 -46 -56

#播放音乐
scoreboard players set music data 61
function music/replay