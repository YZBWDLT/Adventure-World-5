# ===== 只执行一次的命令（其中部分可重置） =====

#到达矿洞相应位置-初次见到田萍
execute if score 1_mine_meettp data matches 0 if entity @a[x=-238,y=-29,z=125,dx=10,dy=7,dz=10] run scoreboard players set timeline active 2
execute if score 1_mine_meettp data matches 0 if entity @a[x=-238,y=-29,z=125,dx=10,dy=7,dz=10] run function lib/modify_states/timeline/enable_time_lapse
execute if score 1_mine_meettp data matches 0 if entity @a[x=-238,y=-29,z=125,dx=10,dy=7,dz=10] run scoreboard players set 1_mine_meettp data 1

#拿到坐标笔记
execute if score 1_mine_book data matches 0 if block -236 -29 133 chest if blocks -236 -29 133 -236 -29 133 -236 -31 133 all run tellraw @a {"rawtext":[{"text":"§e你拿到了坐标笔记，可以查询所有宝箱的位置了！"}]}
execute if score 1_mine_book data matches 0 if block -236 -29 133 chest if blocks -236 -29 133 -236 -29 133 -236 -31 133 all run music play get_book 1 0 play_once
execute if score 1_mine_book data matches 0 if block -236 -29 133 chest if blocks -236 -29 133 -236 -29 133 -236 -31 133 all run function music/play
execute if score 1_mine_book data matches 0 if block -236 -29 133 chest if blocks -236 -29 133 -236 -29 133 -236 -31 133 all run scoreboard players set 1_mine_book data 1 

#拿到BOSS钥匙
execute if score 1_mine_key data matches 0 if block -223 -29 154 chest if blocks -223 -29 154 -223 -29 154 -232 -9 177 all run tellraw @a {"rawtext":[{"text":"§e你拿到了BOSS钥匙，准备好最后的战斗吧！"}]}
execute if score 1_mine_key data matches 0 if block -223 -29 154 chest if blocks -223 -29 154 -223 -29 154 -232 -9 177 all run music play get_item 1 0 play_once
execute if score 1_mine_key data matches 0 if block -223 -29 154 chest if blocks -223 -29 154 -223 -29 154 -232 -9 177 all run function music/play
execute if score 1_mine_key data matches 0 if block -223 -29 154 chest if blocks -223 -29 154 -223 -29 154 -232 -9 177 all run scoreboard players set 1_mine_key data 1 

#获得镐附近检测方块开门
execute if score 1_mine_item data matches 1 if block -204 -28 138 air if block -214 -28 138 air if block -204 -28 144 air if block -214 -28 144 air run fill -209 -29 147 -209 -28 147 air
execute if score 1_mine_item data matches 1 if block -204 -28 138 air if block -214 -28 138 air if block -204 -28 144 air if block -214 -28 144 air run tellraw @a {"rawtext":[{"text":"§e你挖断了所有的岩石柱，障碍清除了！"}]}
execute if score 1_mine_item data matches 1 if block -204 -28 138 air if block -214 -28 138 air if block -204 -28 144 air if block -214 -28 144 air run music play solve_puzzle 1 0 play_once
execute if score 1_mine_item data matches 1 if block -204 -28 138 air if block -214 -28 138 air if block -204 -28 144 air if block -214 -28 144 air run function music/play
execute if score 1_mine_item data matches 1 if block -204 -28 138 air if block -214 -28 138 air if block -204 -28 144 air if block -214 -28 144 air run scoreboard players set 1_mine_item data 2

#拿到神镐
execute if score 1_mine_super_pickaxe data matches 0 if block -257 -29 106 chest if blocks -257 -29 106 -257 -29 106 -257 -31 106 all run tellraw @a {"rawtext":[{"text":"§e你拿到了田萍的神镐，回去还给他吧！"}]}
execute if score 1_mine_super_pickaxe data matches 0 if block -257 -29 106 chest if blocks -257 -29 106 -257 -29 106 -257 -31 106 all run tellraw @a {"rawtext":[{"text":"§e*重要物品如果丢了，可以从箱子里重新拿。"}]}
execute if score 1_mine_super_pickaxe data matches 0 if block -257 -29 106 chest if blocks -257 -29 106 -257 -29 106 -257 -31 106 all run scoreboard players set 1_mine_super_pickaxe data 1

#出现怪物1
execute if score 1_mine_enemy1 data matches 0 if entity @a[x=-238,y=-29,z=113,dx=10,dy=7,dz=10] run summon zombie -230 -29 121
execute if score 1_mine_enemy1 data matches 0 if entity @a[x=-238,y=-29,z=113,dx=10,dy=7,dz=10] run summon zombie -236 -29 121
execute if score 1_mine_enemy1 data matches 0 if entity @a[x=-238,y=-29,z=113,dx=10,dy=7,dz=10] run scoreboard players set 1_mine_enemy1 data 1 

#出现怪物2
execute if score 1_mine_enemy2 data matches 0 if entity @a[x=-250,y=-29,z=125,dx=10,dy=7,dz=10] run summon zombie -244 -29 128
execute if score 1_mine_enemy2 data matches 0 if entity @a[x=-250,y=-29,z=125,dx=10,dy=7,dz=10] run summon zombie -244 -29 132
execute if score 1_mine_enemy2 data matches 0 if entity @a[x=-250,y=-29,z=125,dx=10,dy=7,dz=10] run summon zombie -247 -29 130
execute if score 1_mine_enemy2 data matches 0 if entity @a[x=-250,y=-29,z=125,dx=10,dy=7,dz=10] run scoreboard players set 1_mine_enemy2 data 1 

#挖光方块通过BOSS战
execute if score 1_mine_boss data matches 0 if block -240 -39 121 aw:dig1 if blocks -250 -48 101 -216 -48 135 -250 -37 101 all run tellraw @a {"rawtext":[{"text":"§e你挖断了所有的岩石柱，障碍清除了！"}]}
execute if score 1_mine_boss data matches 0 if block -240 -39 121 aw:dig1 if blocks -250 -48 101 -216 -48 135 -250 -37 101 all run kill @e[type=zombie]
execute if score 1_mine_boss data matches 0 if block -240 -39 121 aw:dig1 if blocks -250 -48 101 -216 -48 135 -250 -37 101 all run music play boss_win_start 1 0 play_once
execute if score 1_mine_boss data matches 0 if block -240 -39 121 aw:dig1 if blocks -250 -48 101 -216 -48 135 -250 -37 101 all run scoreboard players set music data 23
execute if score 1_mine_boss data matches 0 if block -240 -39 121 aw:dig1 if blocks -250 -48 101 -216 -48 135 -250 -37 101 all run function music/play
execute if score 1_mine_boss data matches 0 if block -240 -39 121 aw:dig1 if blocks -250 -48 101 -216 -48 135 -250 -37 101 all run scoreboard players set 1_mine_boss data 1
execute if block -240 -39 121 aw:dig1 if blocks -250 -48 101 -216 -48 135 -250 -37 101 all run fill -233 -49 135 -233 -48 135 air

#挖开BOSS战最后方块看到黑曜石
execute if score 1_mine_tphelp data matches 0 if block -233 -48 136 air run scoreboard players set timeline active 4
execute if score 1_mine_tphelp data matches 0 if block -233 -48 136 air run function lib/modify_states/timeline/enable_time_lapse
execute if score 1_mine_tphelp data matches 0 if block -233 -48 136 air run scoreboard players set 1_mine_tphelp data 1

#从BOSS战离开（第一次离开时）
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run spawnpoint @a -233 30 103
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run setworldspawn -233 30 103
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run scoreboard players set position data 1
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if score progress data matches 0 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run scoreboard players set progress data 1
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run event entity @e[type=aw:npc,x=-233,y=-49,z=142,r=5] aw:remove_immediately
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run scoreboard players set timeline active 5
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run function lib/modify_states/timeline/enable_time_lapse
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run function lib/modify_states/timeline/enable_lock_camera
execute if score 1_mine_boss data matches 2 if score 1_mine_tphelp data matches 1 if entity @a[x=-232.5,y=-49,z=147.5,r=1] run scoreboard players set 1_mine_tphelp data 2