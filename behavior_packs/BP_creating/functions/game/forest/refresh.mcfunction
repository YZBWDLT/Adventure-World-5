# ===== 更新森林npc和其它东西 =====

#包括迷失森林和明月森林场景的刷新
#玩家的位置信息也会更新

#记录已刷新避免重复
scoreboard players set refreshArea data 1

#刷新怪物
kill @e[family=monster]
scoreboard players set forest_enemy1 data 0
scoreboard players set forest_enemy2 data 0
scoreboard players set forest_enemy3 data 0

#归还盾牌
give @a[tag=shield] shield
tag @a remove shield

#播放音乐
execute if entity @a[x=-264,y=31,z=-48,r=2] run scoreboard players set music data 71
execute unless entity @a[x=-264,y=31,z=-48,r=2] run scoreboard players set music data 72
function music/replay