say 小镇的所有npc都重新生成！不包括随着建筑加入的新npc！
event entity @e[type=aw:npc,x=-282,y=30,z=178,dx=20,dy=5,dz=13,name="王予凡"] aw:remove_immediately
function area/village/refresh
execute unless entity @e[type=aw:npc,x=-230,y=-29,z=138,r=1] run summon aw:npc -230 -29 138 facing -230 -29 137 skin_0 "田萍"
execute unless entity @e[type=aw:npc,x=-219,y=31,z=128,r=1] run summon aw:npc -219 31 128 facing -219 31 129 skin_5 "胡雨"
execute unless entity @e[type=aw:npc,x=-250,y=31,z=165,r=1] run summon aw:npc -250 31 165 facing -249 31 165 skin_6 "陆千里"
execute unless entity @e[type=aw:npc,x=-195,y=31,z=110,r=1] run summon aw:npc -195 31 110 facing -196 31 110 skin_7 "陈林夕"
execute unless entity @e[type=aw:npc,x=-272,y=57,z=153,r=1] run summon aw:npc -272 57 153 facing -273 57 153 skin_9 "杨程"