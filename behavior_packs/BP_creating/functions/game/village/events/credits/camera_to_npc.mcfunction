# ===== 在制作人动画中，将视角给到 NPC 的镜头并使 NPC 招手 =====
# 调用此方法时：需修饰执行者及其执行环境为 NPC（execute as @e[type=npc,...] at @s run ...）

camera @a set minecraft:free pos ^^2^4 facing ^3^2^-2.5
event entity @s aw:wave_hand
