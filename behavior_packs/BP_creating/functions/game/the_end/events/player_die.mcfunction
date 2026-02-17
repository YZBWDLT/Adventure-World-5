# ===== 有玩家在游戏内死亡 =====

execute in overworld positioned -233 -15 189 facing -233 -15 188 run function game/start/enter
scoreboard players set timeline active 0
function lib/modify_states/timeline/disable_time_lapse

# 恢复生物破坏，并把末影龙吐的痰和怪物都鲨了
kill @e[type=dragon_fireball]
kill @e[family=monster]
schedule delay add lib/modify_data/init/gamerule 3s

# 把给玩家的末地水晶也扬了，防止带出主世界
clear @a end_crystal
