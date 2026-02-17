# ===== 修正心心上限，在新玩家加入或是心心上限增加后运行 =====

execute if score "§c心心上限" health matches 3 run event entity @a max_health_6
execute if score "§c心心上限" health matches 4 run event entity @a max_health_8
execute if score "§c心心上限" health matches 5 run event entity @a max_health_10
execute if score "§c心心上限" health matches 6 run event entity @a max_health_12
execute if score "§c心心上限" health matches 7 run event entity @a max_health_14
execute if score "§c心心上限" health matches 8 run event entity @a max_health_16
execute if score "§c心心上限" health matches 9 run event entity @a max_health_18
execute if score "§c心心上限" health matches 10 run event entity @a max_health_20
execute if score "§c心心上限" health matches 11 run event entity @a max_health_22
execute if score "§c心心上限" health matches 12 run event entity @a max_health_24
execute if score "§c心心上限" health matches 13 run event entity @a max_health_26
execute if score "§c心心上限" health matches 14 run event entity @a max_health_28
execute if score "§c心心上限" health matches 15 run event entity @a max_health_30
execute if score "§c心心上限" health matches 16 run event entity @a max_health_32
execute if score "§c心心上限" health matches 17 run event entity @a max_health_34
execute if score "§c心心上限" health matches 18 run event entity @a max_health_36
execute if score "§c心心上限" health matches 19 run event entity @a max_health_38
execute if score "§c心心上限" health matches 20 run event entity @a max_health_40
execute if score item_breath data matches 0 run event entity @a breath_no
execute if score item_breath data matches 1 run event entity @a breath_yes