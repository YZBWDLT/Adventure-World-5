# ===== 前置对话完成 =====
# 在三大地牢前置剧情，和吕岩对话完毕（先和邹鹭遥对话）执行的命令

scoreboard players set fortress_prepare data 2
scoreboard players set monument_prepare data 2
camera @a clear
function lib/modify_data/states/timeline/disable
function lib/utils/stop_dialogue
