#溺尸之王剩75%血量时，传送玩家回底部，召唤僵尸

scoreboard players set 6_monument_boss data 3
tp @s -161 -47 169
tp @a -161 -57 169
kill @e[type=drowned,x=-169,y=-57,z=161,dx=16,dy=5,dz=16]
summon drowned -157 -57 165 0 0 aw:baby
summon drowned -165 -57 165 0 0
summon drowned -165 -57 173 0 0
summon drowned -157 -57 173 0 0