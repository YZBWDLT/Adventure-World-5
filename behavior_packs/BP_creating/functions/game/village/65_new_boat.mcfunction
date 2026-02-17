# ===== 在新船上和华梦言的对话 =====

execute if score timeline time matches 80 run tellraw @a {"rawtext":[{"text":"§a[我]这里是……？这艘船……？"}]}
execute if score timeline time matches 160 run tellraw @a {"rawtext":[{"text":"§9[华梦言]嗯，空间魔法就是这样，它是假的，也是真的。"}]}
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"text":"§9[华梦言]但那座岛与上面的人……在怪物守卫被消灭，我真正苏醒时，的确一起消失了……"}]}
execute if score timeline time matches 240 run event entity @e[type=aw:npc,x=38,y=82,z=-10,r=1] aw:confuse
execute if score timeline time matches 320 run tellraw @a {"rawtext":[{"text":"§a[我]唉……"}]}
execute if score timeline time matches 400 run tellraw @a {"rawtext":[{"text":"§a[我]虽然有很多不舍，在岛上和这些朋友的回忆是如此的宝贵……"}]}
execute if score timeline time matches 480 run tellraw @a {"rawtext":[{"text":"§a[我]但是也要向前看！"}]}
execute if score timeline time matches 560 run tellraw @a {"rawtext":[{"text":"§a[我]是时候回家了，还有两个朋友在等着我们呢，我们四人此时才算真正的重逢了。"}]}
execute if score timeline time matches 640 run tellraw @a {"rawtext":[{"text":"§9[华梦言]我可以理解你，所以有个好消息是，我还给你留了一份回忆，关于这座岛的……"}]}
execute if score timeline time matches 640 run event entity @e[type=aw:npc,x=38,y=82,z=-10,r=1] aw:speak
execute if score timeline time matches 720 run tellraw @a {"rawtext":[{"text":"§9[华梦言]你可以再回去看看，那里还有很多你未发现的秘密，以及大家想对你说的话。"}]}

execute if score timeline time matches 800.. run function game/village/events/new_boat/complete
