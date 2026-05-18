#最终战前对话2

execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§9[？]这空间已经被我全部破解了，你卷土重来的白日梦已经结束了！"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§7§o[？？？]你……可恶！"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§9[？]你的真身将继续被锁在封印中，直到他们醒来，将你彻底消灭！"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§7§o[？？？]好，这魔力我也不要了。我出不来，你也别想出去！"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§7§o[？？？]就把这里所有的黑暗能量，化为你永远的枷锁，让你在这里生不如死！"}]}
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§9[？]你没有了黑暗空间的保护，进入封印消灭你已经是易如反掌，不要再挣扎了！"}]}
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§9[？]这一刻终于要到来了，为了世界的和平，你这恶魔必须彻底消灭！"}]}

execute if score timeline time matches 640 run tp @a -202 -48 187 facing -202 -48 186
execute if score timeline time matches 640 run function lib/utils/stop_dialogue
execute if score timeline time matches 640 run function lib/modify_data/states/timeline/disable