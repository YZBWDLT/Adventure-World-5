# ===== 队列音乐 =====
# 调用此方法以将音乐队列安放到某音乐后
# 调用此方法时：需提前确定要播放的音乐曲目（scoreboard players set music data ...）

# ↓ 有待整理

#当切换场景时，先music stop，然后更改music data，最后使用此函数
#当打败BOSS时，先play boss_win_start，然后更改music data，最后使用此函数
#当播放音效时，先music play，然后使用此函数
#当进游戏时，直接使用此函数

#处理防重复播放标记
scoreboard players set repmusic data 0

#地铁中枢播放的音乐
execute if score music data matches 1 run music queue metro 1 0 loop

#筑梦镇的音乐太多装不下了
execute if score music data matches 2 run music queue cave 1 0 loop
execute if score music data matches 3 run music queue passage 1 0 loop
execute if score music data matches 4 run music queue cozy 1 0 loop
execute if score music data matches 5 run music queue shop 1 0 loop
execute if score music data matches 6 run music queue build_billboard 1 0 play_once

#筑梦镇播放的音乐
execute if score music data matches 11 run music queue wake_start 1 0 play_once
execute if score music data matches 11 run music queue wake 1 0 loop
execute if score music data matches 12 run music queue village_first 1 0 loop
execute if score music data matches 13 run music queue plain_sword_start 1 0 play_once
execute if score music data matches 13 run music queue plain 1 0 loop
execute if score music data matches 14 run music queue village 1 0 loop
execute if score music data matches 15 run music queue parkour 1 0 loop
execute if score music data matches 16 run music queue ice 1 0 loop
execute if score music data matches 17 run music queue boat 1 0 loop
execute if score music data matches 18 run music queue beach_start 1 0 play_once
execute if score music data matches 18 run music queue beach 1 0 play_once

#一号大矿洞播放的音乐
execute if score music data matches 21 run music queue 1_mine 1 0 loop
execute if score music data matches 22 run music queue boss1_start 1 0 play_once
execute if score music data matches 22 run music queue boss1 1 0 loop
execute if score music data matches 23 run music queue boss_win 1 0 loop

#浮空峰遗迹播放的音乐
execute if score music data matches 31 run music queue 2_hill 1 0 loop
execute if score music data matches 32 run music queue boss1_start 1 0 play_once
execute if score music data matches 32 run music queue boss1 1 0 loop
execute if score music data matches 33 run music queue boss_win 1 0 loop
execute if score music data matches 34 run music queue hear 1 0 loop

#逍遥平原播放的音乐
execute if score music data matches 41 run music queue plain_start 1 0 play_once
execute if score music data matches 41 run music queue plain 1 0 loop
execute if score music data matches 42 run music queue dig 1 0 loop
execute if score music data matches 43 run music queue shoot 1 0 loop
execute if score music data matches 44 run music queue lab 1 0 loop

#逍遥矿井播放的音乐
execute if score music data matches 51 run music queue 3_shaft 1 0 loop
execute if score music data matches 52 run music queue boss1_start 1 0 play_once
execute if score music data matches 52 run music queue boss1 1 0 loop
execute if score music data matches 53 run music queue boss_win 1 0 loop

#地铁控制室播放的音乐
execute if score music data matches 61 run music queue 4_rail 1 0 loop
execute if score music data matches 62 run music queue boss1_start 1 0 play_once
execute if score music data matches 62 run music queue boss1 1 0 loop
execute if score music data matches 63 run music queue boss_win 1 0 loop

#森林播放的音乐
execute if score music data matches 71 run music queue lost_forest 1 0 loop
execute if score music data matches 72 run music queue forest_start 1 0 play_once
execute if score music data matches 72 run music queue forest 1 0 loop

#林地府邸播放的音乐
execute if score music data matches 81 run music queue 5_mansion 1 0 loop
execute if score music data matches 82 run music queue boss2 1 0 loop
execute if score music data matches 83 run music queue boss_win 1 0 loop
execute if score music data matches 84 run music queue hear 1 0 loop

#溟海播放的音乐
execute if score music data matches 91 run music queue plain_start 1 0 play_once
execute if score music data matches 91 run music queue plain 1 0 loop

#繁星农场播放的音乐
execute if score music data matches 101 run music queue starry_start 1 0 play_once
execute if score music data matches 101 run music queue starry 1 0 loop
execute if score music data matches 102 run music queue snow 1 0 loop
execute if score music data matches 103 run music queue fire 1 0 loop

#海底神殿播放的音乐
execute if score music data matches 111 run music queue 6_monument 1 0 loop
execute if score music data matches 112 run music queue boss2 1 0 loop
execute if score music data matches 113 run music queue boss_win 1 0 loop
execute if score music data matches 114 run music queue hear 1 0 loop

#下界要塞播放的音乐
execute if score music data matches 121 run music queue 7_fortress 1 0 loop
execute if score music data matches 122 run music queue boss2 1 0 loop
execute if score music data matches 123 run music queue boss_win 1 0 loop
execute if score music data matches 124 run music queue hear 1 0 loop

#时间神庙播放的音乐
execute if score music data matches 131 run music queue 8_pe 1 0 loop
execute if score music data matches 132 run music queue 8_pe_old 1 0 loop
execute if score music data matches 133 run music queue nether_spire 1 0 loop
execute if score music data matches 134 run music queue boss_win 1 0 loop

#五色山播放的音乐
execute if score music data matches 141 run music queue badland 1 0 loop

#最终战斗的相关音乐
execute if score music data matches 151 run music queue 9_final 1 0 loop
execute if score music data matches 152 run music queue boss_final_appear 1 0 loop
execute if score music data matches 153 run music queue boss_final_1_start 1 0 play_once
execute if score music data matches 153 run music queue boss_final_1 1 0 loop
execute if score music data matches 154 run music queue boss_final_2_start 1 0 play_once
execute if score music data matches 154 run music queue boss_final_2 1 0 loop
execute if score music data matches 155 run music queue boss_final_win_start 1 0 play_once
execute if score music data matches 155 run music queue boss_final_win 1 0 loop
execute if score music data matches 156 run music queue dream_end_start 1 0 play_once
execute if score music data matches 156 run music queue dream_end 1 0 loop
execute if score music data matches 157 run music queue island_disappear 1 0 play_once
execute if score music data matches 158 run music queue credits 1 0 play_once

# 若在筑梦镇则重新播放音乐
execute if score position data matches 1 run music stop
# ↑ 有待整理

# 筑梦镇
execute if score position data matches 1 run function area/village/queue_music
