# ===== 玩家破坏全部的末地水晶后 =====
# 当玩家破坏全部的末地水晶后，BOSS 战进入下一阶段
# （data.9_the_end_boss -> 3）

# 振荡玩家的视角并提示玩家
camerashake add @a 1.5 1
tellraw @a {"rawtext":[{"text":"§e你摧毁掉了所有的末地水晶！斩杀末影龙以获取胜利！当心生成的怪物！"}]}

# 更换栖息点
setblock 0 100 0 air

# 更换音乐
scoreboard players set music data 154
function lib/utils/music/replay

# 启用时间线流逝
function lib/modify_states/timeline/enable_time_lapse

# 添加一个追踪末影龙位置的标记实体，便于在结束后播放镜头动画
summon aw:marker "enderDragonPosition" 0 80 0

# 进入下一阶段
scoreboard players set 9_the_end_boss data 3
