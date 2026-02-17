# ===== 心心数据重置 =====

say 心心上限已重置为3颗！呼吸重置为3秒！
event entity @a max_health_6
event entity @a breath_no
scoreboard objectives add health dummy "§c心心数据"
scoreboard players set "§c心之碎片" health 0
scoreboard players set "§c心心上限" health 3
scoreboard objectives setdisplay list health