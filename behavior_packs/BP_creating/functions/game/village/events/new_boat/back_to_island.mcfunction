# ===== 回到小岛 =====
# 当玩家在船上按下回忆按钮后，可以回到小岛继续完成冒险。

## 回到筑梦镇
execute positioned -186 36 130 facing -193 37 130 run function game/village/enter

## 移除迷雾效果
fog @a remove aw:sky
scoreboard players set fog_type data 0

## 恢复生物破坏
gamerule mobgriefing true

## 重置 BOSS 进度
scoreboard players set 9_the_end_init data 0

## 播放音乐
scoreboard players set music data 4
function music/replay