# ===== 移除牢笼 =====
# 当对应位置的末地水晶爆炸后，则移除对应位置的牢笼
# 调用此方法时：需修饰执行位置为末地水晶下的基岩位置，并要求附近无末地水晶且牢笼存在（execute positioned (基岩位置) unless entity @e[type=ender_crystal,r=2] unless block ~2~1~ air ...）

fill ~2~1~2 ~-2~3~-2 air destroy
kill @e[type=item,x=~-3,y=~-1,z=~-3,dx=5,dy=5,dz=5]
