#生成下界塔

execute if score timeline time matches 10 run tellraw @a {"rawtext":[{"text":"§e激活！"}]}
execute if score timeline time matches 10 run structure load other:nether_spire -234 -56 -32
execute if score timeline time matches 10 run music stop
execute if score timeline time matches 60 run fill -227 -55 -25 -225 -55 -23 aw:glowing_obsidian replace aw:old_cobblestone
execute if score timeline time matches 90 run scoreboard players set music data 133
execute if score timeline time matches 90 run function music/play
execute if score timeline time matches 120 run fill -227 -54 -25 -225 -54 -23 aw:glowing_obsidian replace aw:old_cobblestone
execute if score timeline time matches 180 run fill -227 -53 -25 -225 -53 -23 aw:glowing_obsidian replace aw:old_cobblestone
execute if score timeline time matches 240 run fill -227 -55 -25 -225 -55 -23 aw:glowing_obsidian replace aw:old_gold_block
execute if score timeline time matches 720 run fill -227 -53 -25 -225 -53 -23 aw:old_obsidian
execute if score timeline time matches 780 run fill -227 -54 -25 -225 -54 -23 aw:old_obsidian
execute if score timeline time matches 840 run fill -227 -55 -25 -225 -55 -23 aw:old_obsidian

execute if score timeline time matches 950 run structure load other:broken_nether_spire -234 -56 -32
execute if score timeline time matches 950 run music play boss_win_start 1 0 play_once
execute if score timeline time matches 950 run scoreboard players set music data 134
execute if score timeline time matches 950 run function music/play
execute if score timeline time matches 950 run function lib/modify_states/timeline/disable 