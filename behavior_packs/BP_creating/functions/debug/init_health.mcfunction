# ===== 心心数据重置 =====

say 心心上限已重置为3颗！呼吸重置为3秒！

scoreboard players set heartLimit data 3
scoreboard players set heartPiece data 0
function lib/utils/change_heart

scoreboard players set shell itemState 0
function lib/utils/change_breath_state
