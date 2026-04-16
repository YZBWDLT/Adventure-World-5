# 水滴熄火

## 熄灭营火
fill ~-1~-1~-1~1~1~1 campfire ["direction"=0,"extinguished"=true] replace campfire ["direction"=0,"extinguished"=false]
fill ~-1~-1~-1~1~1~1 campfire ["direction"=1,"extinguished"=true] replace campfire ["direction"=1,"extinguished"=false]
fill ~-1~-1~-1~1~1~1 campfire ["direction"=2,"extinguished"=true] replace campfire ["direction"=2,"extinguished"=false]
fill ~-1~-1~-1~1~1~1 campfire ["direction"=3,"extinguished"=true] replace campfire ["direction"=3,"extinguished"=false]

## 熄灭灵魂营火
fill ~-1~-1~-1~1~1~1 soul_campfire ["direction"=0,"extinguished"=true] replace soul_campfire ["direction"=0,"extinguished"=false]
fill ~-1~-1~-1~1~1~1 soul_campfire ["direction"=1,"extinguished"=true] replace soul_campfire ["direction"=1,"extinguished"=false]
fill ~-1~-1~-1~1~1~1 soul_campfire ["direction"=2,"extinguished"=true] replace soul_campfire ["direction"=2,"extinguished"=false]
fill ~-1~-1~-1~1~1~1 soul_campfire ["direction"=3,"extinguished"=true] replace soul_campfire ["direction"=3,"extinguished"=false]

## 熄灭火焰 
fill ~-2~-2~-2~2~2~2 air replace fire

## 熄灭灵魂火焰
fill ~-2~-2~-2~2~2~2 air replace soul_fire

## 熄灭岩浆
fill ~-0.5~-1~-0.5~0.5~1~0.5 aw:dig8 replace lava

## 将附近的生物给予缓慢II
effect @e[r=2,family=monster] slowness 8 1 true

##伤害周围的岩浆怪(如果落点离玩家很近，范围会很小)
execute unless entity @a[r=2] run damage @e[type=magma_cube,r=4] 4
execute if entity @a[r=2] run damage @e[type=magma_cube,r=2] 4

## 清除水滴
event entity @s aw:remove_immediately