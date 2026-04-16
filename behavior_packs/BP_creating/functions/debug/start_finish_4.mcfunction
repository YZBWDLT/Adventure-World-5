say 现在从刚完成地铁控制室开始测试！
tp @a -153 -33 -8 facing -153 -33 -7
give @a cooked_beef 64
say 自动解锁了前面必要的道具，默认你刚打完了BOSS！
scoreboard players set sword itemState 1
scoreboard players set position data 6
scoreboard players set progress data 3
scoreboard players set pickaxe itemState 2
scoreboard players set 1_mine_boss data 2
scoreboard players set 1_mine_tphelp data 1
scoreboard players set firstBlock itemState 1
scoreboard players set 2_hill_boss data 1
scoreboard players set windPearl itemState 1
scoreboard players set 3_shaft_boss data 1
scoreboard players set secondBlock itemState 1
scoreboard players set 4_rail_boss data 2
clone -259 5 121 -245 21 134 -259 31 121
structure load build:bridge -201 31 9
function unlock/map
function unlock/dock
function unlock/house_heart
function unlock/house_hint
function unlock/house_potion
function unlock/color
function unlock/billboard
say 可以从这里开始继续玩！但不要去之前的地下迷宫以免出问题！