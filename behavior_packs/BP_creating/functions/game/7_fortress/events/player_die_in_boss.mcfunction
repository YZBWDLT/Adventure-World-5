# ===== 玩家在 BOSS 关死亡 =====

scoreboard players random randomDeathMessage data 1 5

execute if score randomDeathMessage data matches 1 run tellraw @a {"rawtext":[{"text":"§e自！刎！归！天！"}]}
execute if score randomDeathMessage data matches 2 run tellraw @a {"rawtext":[{"text":"§e死不可怕，死是凉爽的夏夜，可供人无忧地安眠。"}]}
execute if score randomDeathMessage data matches 3 run tellraw @a {"rawtext":[{"text":"§e打输了，已成哀兵，而哀兵必胜！"}]}
execute if score randomDeathMessage data matches 4 run tellraw @a {"rawtext":[{"text":"§e在下一者为主公悲伤，二者给主公道喜。"}]}
execute if score randomDeathMessage data matches 5 run tellraw @a {"rawtext":[{"text":"§e不是怪物害了你，是这个乱世害了你啊！"}]}

scoreboard players reset randomDeathMessage data
