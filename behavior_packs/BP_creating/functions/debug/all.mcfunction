# ===== 全部数据重置 =====

say 所有计分板都被删掉重置！
scoreboard objectives remove active
scoreboard objectives remove data
scoreboard objectives remove health
scoreboard objectives remove isOnline
scoreboard objectives remove time

function debug/init_data
function debug/init_once
function debug/init_health
function debug/village_npc
function debug/plain_npc
function build/clear