# ===== 龙出现时间线 =====
# 在 BOSS 战过程中的龙出现（开战前）的循环命令于此执行

# 移除玩家的末地水晶
clear @a[hasitem={item=end_crystal}] end_crystal

# 如果出现末影龙，进入下一阶段
execute if entity @e[type=ender_dragon] run function game/the_end/events/on_dragon_spawned

# 如果玩家打破末地水晶，倒退回上一阶段 | 因为出现末影龙之后会自动打破龙穴附近的水晶，所以需要额外指定 data.9_the_end_boss == 1
execute if score 9_the_end_boss data matches 1 unless entity @e[type=ender_crystal,x=0,y=59,z=0,r=10] run function game/the_end/events/on_dragon_spawn_stopped
