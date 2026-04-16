# ===== 事件：玩家重新进入游戏 =====
# 用于规定玩家重新进入游戏时执行的命令。
# 调用此方法时：需修饰执行者为重新进入的玩家，执行位置为该玩家的位置（execute as @a[scores={isOnline=0}] at @s）。

# 重置游戏规则
function lib/modify_data/init/gamerule

# 更改难度为普通
difficulty normal

# 对进入的玩家播放音乐
function music/replay

# 同步玩家的心心上限，并设置心之碎片指示器
function lib/utils/change_heart
function lib/utils/set_heart_piece_indicator

# 同步玩家的呼吸状态
function lib/utils/change_breath_state

# 执行各关卡进入游戏后的事件
execute if score timeline active matches 62 run function game/the_end/events/player_join

# 移除玩家的迷雾
execute if score fog_type data matches 0 run fog @s remove aw:sky

# 调整玩家的游戏模式，以应对网易版可能更改游戏模式的问题
gamemode adventure @s[m=survival]

# 检查是否为网易版，方便区别对待（不是
# 其实是因为在网易版还是会出现一些国际版不会出现的问题，只能手动调整了
function lib/get_data/client
