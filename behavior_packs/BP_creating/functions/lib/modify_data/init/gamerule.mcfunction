# ===== 游戏规则设定 =====
# 用于重置游戏规则。
# 调用此方法时：无需修饰。

gamerule commandblockoutput false
gamerule commandblocksenabled true
gamerule dodaylightcycle false
gamerule doentitydrops false
gamerule dofiretick false
gamerule doimmediaterespawn false
gamerule doinsomnia false
#生物要改掉落物，概率掉落回复之心，因此要打开
gamerule domobloot true

gamerule domobspawning false
#因为陶罐，也需要方块掉落
gamerule dotiledrops true

gamerule doweathercycle false
gamerule drowningdamage true
gamerule falldamage false
gamerule firedamage true
gamerule freezedamage true
gamerule functioncommandlimit 10000
gamerule keepinventory true
gamerule maxcommandchainlength 65535
#为了点燃的御风珠能够熄灭细雪，需要打开。但是打末影龙时需要关上
execute unless score position data matches 15 run gamerule mobgriefing true
execute if score position data matches 15 run gamerule mobgriefing false

gamerule naturalregeneration false
gamerule pvp false
gamerule randomtickspeed 0
gamerule respawnblocksexplode false
gamerule sendcommandfeedback false
gamerule showbordereffect false
#地图要靠坐标定位，因此要打开
gamerule showcoordinates true

gamerule showdeathmessages true
gamerule showtags false
gamerule spawnradius 0
gamerule tntexplodes false
