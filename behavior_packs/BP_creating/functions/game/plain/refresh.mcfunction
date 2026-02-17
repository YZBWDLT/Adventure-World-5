# ===== 更新平原npc和其它东西 =====

#包括平原、草原、丛林、沙漠四个场景的刷新
#由于面积较大，因此只刷新怪物和少部分场景
#位置保持不变的npc生成指令在debug文件夹中
#玩家的位置信息也会更新

#记录已刷新避免重复
scoreboard players set refresh data 1

#刷新场景
structure load other:plain -256 30 76

#刷新怪物
kill @e[family=monster]
scoreboard players set plain_enemy1 data 0
scoreboard players set plain_enemy2 data 0
scoreboard players set plain_enemy3 data 0
scoreboard players set plain_enemy4 data 0
scoreboard players set plain_enemy5 data 0
scoreboard players set plain_enemy6 data 0
scoreboard players set plain_enemy7 data 0

#播放音乐
scoreboard players set music data 41
function music/replay