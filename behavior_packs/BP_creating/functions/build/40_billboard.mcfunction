execute if score timeline time matches 5 positioned -204 32 121 run give @p aw:build3 5
execute if score timeline time matches 30 run tellraw @a {"rawtext":[{"text":"§f[田萍]你没见过我做建筑吧？彩岩先给你。"}]}
execute if score timeline time matches 40 run camera @a fade time 1 3 1 color 0 0 0
execute if score timeline time matches 80 run tp @a -198 31 121 facing -199 31 121
execute if score timeline time matches 80 run playsound random.anvil_use @a
execute if score timeline time matches 100 run summon aw:billboard -204 31 121 facing -203 31 121
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"§a[我]这是啥啊，模样好奇怪。"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"§f[王予凡]田萍，广告牌弄反了！"}]}
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"§f[田萍]搬一下，转过来就好了。"}]}
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"§a[我]广告牌是你设计的？"}]}
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"§f[王予凡]是田萍设计的，正好我拿来用。"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"§a[我]你俩名字是不是都在上面啊？"}]}
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"§f[王予凡]转过来就知道了。来吧，看我们表演！"}]}

execute if score timeline time matches 680 run camera @a set minecraft:free pos -199 33 121 facing -200 33 121
execute if score timeline time matches 680 run scoreboard players set music data 6
execute if score timeline time matches 680 run function lib/utils/music/replay
execute if score timeline time matches 692 run summon aw:npc -204 31 124 facing -203 31 124 skin_1 "王予凡"
execute if score timeline time matches 712 run summon aw:npc -204 31 118 facing -203 31 118 skin_0 "田萍"

execute if score timeline time matches 736 run event entity @e[type=aw:npc,x=-204,y=31,z=121,r=4] aw:place_block
execute if score timeline time matches 736..788 run execute as @e[type=aw:npc,x=-204,y=31,z=124,r=1] at @s run tp @s ~~~ ~40 ~
execute if score timeline time matches 736..788 run execute as @e[type=aw:npc,x=-204,y=31,z=118,r=1] at @s run tp @s ~~~ ~40 ~

execute if score timeline time matches 788 run event entity @e[type=aw:npc,x=-204,y=31,z=121,r=4] aw:place_block
execute if score timeline time matches 788..844 run execute as @e[type=aw:npc,x=-204,y=31,z=124,r=1] at @s run tp @s ~~~ ~40 ~
execute if score timeline time matches 788..844 run execute as @e[type=aw:npc,x=-204,y=31,z=118,r=1] at @s run tp @s ~~~ ~40 ~
execute if score timeline time matches 788..844 run execute as @e[type=aw:billboard] at @s run tp @s ~~~ ~20 ~

execute if score timeline time matches 844..876 run execute as @e[type=aw:npc,x=-204,y=31,z=124,r=1] at @s run tp @s ~~~ ~-40 ~
execute if score timeline time matches 844..876 run execute as @e[type=aw:npc,x=-204,y=31,z=118,r=1] at @s run tp @s ~~~ ~40 ~
execute if score timeline time matches 844..876 run execute as @e[type=aw:billboard] at @s run tp @s ~~0.2~ ~20 ~

execute if score timeline time matches 877 run execute as @e[type=aw:npc,x=-204,y=31,z=124,r=1] at @s run tp @s ~~~ -90 0
execute if score timeline time matches 877 run execute as @e[type=aw:npc,x=-204,y=31,z=118,r=1] at @s run tp @s ~~~ -90 0
execute if score timeline time matches 877 run tp @e[type=aw:billboard] -204 60 121 facing -205 60 121

execute if score timeline time matches 877 run event entity @e[type=aw:npc,x=-204,y=31,z=124,r=1] aw:lie
execute if score timeline time matches 877 run event entity @e[type=aw:npc,x=-204,y=31,z=118,r=1] aw:lie

execute if score timeline time matches 878..950 run execute as @e[type=aw:npc,x=-205,y=31,z=117,dx=2,dy=1,dz=18] at @s run tp @s ~ ~ ~0.3 facing ~ ~-1 ~2

execute if score timeline time matches 950 run event entity @e[type=aw:npc,x=-204,y=31,z=135,r=2] aw:remove_immediately
execute if score timeline time matches 950 run scoreboard players set music data 14
execute if score timeline time matches 950 run function lib/utils/music/queue
execute if score timeline time matches 950 run camera @a clear
execute if score timeline time matches 950 run function lib/utils/stop_dialogue 
execute if score timeline time matches 950 run function lib/modify_data/states/timeline/disable