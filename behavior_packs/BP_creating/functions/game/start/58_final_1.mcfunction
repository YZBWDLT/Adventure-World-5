#最终战前对话1

execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§7§o[？？？]放弃吧，你们四个人都奈何不了我，你一个人还妄想能向我挑战？"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§9[？]你果然将部分魔力留在了外面，我此次就是要将其彻底消灭，让你永远无法脱离封印！"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§7§o[？？？]留于外界的魔力的确不堪一击，但你又如何能破解我布下的黑暗空间呢？"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§7§o[？？？]我要让你死在你最擅长的能力之下！"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§7§o[？？？]让我将你这不自量力的蝼蚁彻底撕碎吧！"}]}

execute if score timeline time matches 480 run tp @a -202 -36 187 facing -202 -36 186
execute if score timeline time matches 480 run function lib/modify_states/timeline/disable