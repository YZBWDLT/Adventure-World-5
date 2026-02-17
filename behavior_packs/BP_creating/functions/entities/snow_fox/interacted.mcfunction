# ===== 雪狐被交互时 =====

playsound mob.fox.sleep @a
particle minecraft:water_evaporation_bucket_emitter ~~~
execute if entity @s[x=-308,y=8,z=53,r=1] if score brush data matches 0 run tellraw @a {"rawtext":[{"text":"§e雪狐狐送给你一件礼物！"}]}
execute if entity @s[x=-308,y=8,z=53,r=1] if score brush data matches 1 run tellraw @a {"rawtext":[{"text":"§a[我]这支笔上写着，要配合染料使用。"}]}
execute if entity @s[x=-308,y=8,z=53,r=1] if score brush data matches 0 run scoreboard players set brush data 1
execute if entity @s[x=-290,y=32,z=27,r=1] run setblock -309 9 49 air
execute if entity @s[x=-290,y=32,z=27,r=1] run tp @s -308 8 53 facing -308 8 52
execute if entity @s[x=-281,y=50,z=21,r=1] run tp @s -290 32 27 facing -290 32 26
execute if entity @s[x=-273,y=59,z=34,r=1] run tp @s -281 50 21 facing -281 50 20
execute if entity @s[x=-263,y=42,z=48,r=1] run tp @s -273 59 34 facing -273 59 35