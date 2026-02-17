#BOSS战挖开石头见到黑曜石-田萍帮助

execute if score timeline time matches 20 run tellraw @a {"rawtext":[{"text":"§a[我]啊？糟了！内层是黑曜石，这下怎么办……"}]}
execute if score timeline time matches 20 run summon aw:npc -234 -49 139 facing -234 -49 138 skin_0 "田萍"
execute if score timeline time matches 20 run summon aw:npc -230 -49 142 facing -230 -49 141 skin_1 "王予凡"
execute if score timeline time matches 120 run tellraw @a {"rawtext":[{"text":"§f[田萍]林乐！你在吗？"}]}
execute if score timeline time matches 160 run fill -233 -49 137 -233 -48 137 air destroy
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§a[我]田萍？你怎么在这里？"}]}
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§f[田萍]我好久不见你出来，担心你往更深处走了，你果然在！"}]}
execute if score timeline time matches 320 run event entity @e[type=aw:npc,x=-234,y=-49,z=139,r=1] aw:point
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§f[王予凡]我是被田萍叫来找你的，没想到你进矿洞了。"}]}
execute if score timeline time matches 400 run event entity @e[type=aw:npc,x=-230,y=-49,z=142,r=1] aw:speak
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§f[田萍]你怎么样，没受伤吧？"}]}
execute if score timeline time matches 480 run event entity @e[type=aw:npc,x=-234,y=-49,z=139,r=1] aw:confuse
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§a[我]我没事，你来的真及时。"}]}
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§f[田萍]没事就好，我在这里发现了一颗§d心之容器§f，对你应该有用，你拿上吧！"}]}
execute if score timeline time matches 640 run event entity @e[type=aw:npc,x=-234,y=-49,z=139,r=1] aw:nod
execute if score timeline time matches 720 unless entity @e[type=aw:heart_container,x=-233,y=-49,z=142,r=1] run tellraw @a {"rawtext":[{"text":"§f[田萍]咦？你已经拿了啊，那咱们走吧！"}]}
execute if score timeline time matches 720 unless entity @e[type=aw:heart_container,x=-233,y=-49,z=142,r=1] run event entity @e[type=aw:npc,x=-234,y=-49,z=139,r=1] aw:confuse
execute if score timeline time matches 720 run scoreboard players set 1_mine_boss data 2
execute if score timeline time matches 720 run function lib/modify_states/timeline/disable 