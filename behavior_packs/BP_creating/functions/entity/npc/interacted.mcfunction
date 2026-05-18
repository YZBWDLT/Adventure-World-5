# ===== NPC 被交互后，NPC 执行的命令 =====

execute if score timeline active matches 0 run event entity @s aw:speak

execute if score timeline active matches 0 if entity @s[x=-188,y=36,z=130,r=1] run say §f感觉好点儿了吗？下床出去走走，和其他人打个招呼吧！大家对你的出现也很感兴趣，在镇长来之前你们可以先互相认识认识。
execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=132,r=1] run say §f你好，我叫邹鹭遥。镇长去矿洞了，他还不知道你来了呢，等他回来一定也会很惊讶的。
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 0 run say §f现在小镇的房子很少，大部分人都住在这个旅馆里，但我很喜欢这里，有房子我也不搬出去。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 0 run say §f你醒过来了啊，我们都想知道你是怎么到这里来的，不过在这之前还要先等镇长田萍回来。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 0 run say §f说来也真是奇怪，自从昨天你来了之后，外面的怪物数量激增，我都不敢出去了，为了安全你也别往外走。
execute if score timeline active matches 0 if entity @s[x=-272,y=57,z=153,r=1] if score progress data matches 0 run say §f可以开创造，不过只建议用此法跳过PVE和跑酷，如果跳过解谜可能会导致游戏进度错乱。

execute if score timeline active matches 0 if entity @s[x=-230,y=-29,z=138,r=1] run say §f我叫田萍，是筑梦镇的镇长。我一天之前来到矿洞遇到了事故，但因为我经常在这里待很久，恐怕其他镇民都没意识到我出事了。
execute if score timeline active matches 0 if entity @s[x=-234,y=-49,z=139,r=1] run say §f我们是从另外一条路下来的，现在原路返回太远，你跟着我们从后面的入口一起上去吧。
execute if score timeline active matches 0 if entity @s[x=-230,y=-49,z=142,r=1] run say §f我真没想到你跑矿洞了，看来你已经完全痊愈了，等咱们上去就互相详细认识一下吧！

execute if score timeline active matches 0 if entity @s[x=-217,y=31,z=134,r=1] run say §f山里地形起伏太大了，不如这里适合建筑。不过那里景色不错，高处还有个悬浮的空岛。
execute if score timeline active matches 0 if entity @s[x=-215,y=31,z=132,r=1] run say §f出门儿左拐是冒险中心，你应该见过了吧？我在那儿给你准备了好东西，欢迎你来拜访。
execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 1 run tellraw @a {"rawtext":[{"text":"§a[我]你的餐厅招牌好显眼啊，我大老远就看到了。"}]}
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 1 run tellraw @a {"rawtext":[{"text":"§a[我]餐厅是你开的，冒险中心也是你开的，旅馆也是你的吗？"}]}
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 1 run say §f那倒不是，那个是田萍搭的。
execute if score timeline active matches 0 if entity @s[x=-242,y=31,z=133,r=1] if score progress data matches 1 run say §f加油，祝你一路顺风。路上注意安全啊。
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 1 run say §f镇长非常喜欢他的神镐，那是在矿洞里挖了很久的矿才做出来的，只有它才能破坏黑曜石。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 1 run say §f呜呜呜qwq，我的城堡堵住了上山的路，一层都没完工就被镇长给强拆了。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 1 run say §f你去过我家看了吗？斯是陋室，五万一平。
execute if score timeline active matches 0 if entity @s[x=-272,y=57,z=153,r=1] if score progress data matches 1 run say §f欢迎游玩跑酷小游戏，顺着梯子到上面的绿地就可以看到了，可以获得丰富奖励哦。

execute if score timeline active matches 0 if entity @s[x=-204,y=31,z=109,r=1] run say §f他们在小镇外一直很顺利，但昨天你到来之后却恰巧都遇到了麻烦，实在对不住。
execute if score timeline active matches 0 if entity @s[x=-197,y=31,z=107,r=1] run say §f啊……一路顺风！（神色有点奇怪）
execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 2 run tellraw @a {"rawtext":[{"text":"§a[我]不管你准备了啥，拿肉路上吃准没错。"}]}
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 2 run tellraw @a {"rawtext":[{"text":"§a[我]这让我想起我以前也有一面盾牌，还是通过挑战才得到的，可惜出海时没带上。"}]}
execute if score timeline active matches 0 if entity @s[x=-179,y=31,z=137,r=1] run tellraw @a {"rawtext":[{"text":"§a[我]为什么这两个人住一个房子？"}]}
execute if score timeline active matches 0 if entity @s[x=-179,y=31,z=137,r=1] run say §f哦，只是因为房子不够，不是因为他们两个有什么特殊的关系。
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 2 run say §f田萍是想把林场交给我管理的，但是王予凡精力爆棚，他想把管理林场的工作也揽下来。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 2 run say §f我现在无家可归了，是时候再规划一座房子了，你能不能帮我向镇长说点好话？
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 2 run tellraw @a {"rawtext":[{"text":"§a[我]看你一直站在这里，不想到平原去走走吗？"}]}
execute if score timeline active matches 0 if entity @s[x=-272,y=57,z=153,r=1] if score progress data matches 2.. run say §f跑酷计时器的每1个数代表0.05秒，也就是假如你的成绩是2000，就说明你花了100秒。

execute if score timeline active matches 0 if entity @s[x=-146,y=31,z=72,r=1] if score pickaxe itemState matches 0 run say §f这个小游戏需要挖掘方块寻找出口，等你有镐子了再来找我吧！
execute if score timeline active matches 0 if entity @s[x=-146,y=31,z=72,r=1] if score pickaxe itemState matches 1.. run say §f我也不知道每一层的出口分别在哪个位置，能多快找到就看你的运气了！
execute if score timeline active matches 0 if entity @s[x=-164,y=-59,z=121,r=1] if score progress data matches 0..1 run say §f我没见过你，但我好像早就认识你，你就是勇……啊，头好痛。
execute if score timeline active matches 0 if entity @s[x=-164,y=-59,z=121,r=1] if score progress data matches 2 run say §f我叫吕岩，是一名建筑师。田萍和我说过你的事了，王予凡给你的钥匙你留在门上就行。

execute if score timeline active matches 0 if entity @s[x=-215,y=32,z=112,r=1] run say §f你不知道吧，画地图也是我的爱好之一，所以当制图室建好之后我就来管理了。
execute if score timeline active matches 0 if entity @s[x=-193,y=34,z=148,r=1] run say §f不算上你，我们这个岛上一共有11个人。田萍、王予凡、邹鹭遥、吕岩、倪高志、胡雨、陆千里、陈林夕、杨程、孙嘉睿、伊云。
execute if score timeline active matches 0 if entity @s[x=-154,y=32,z=145,r=1] run say §f为了感谢你的帮助，楼上有一本书写了这个岛上的传说和见闻，你可以随时去翻。
execute if score timeline active matches 0 if entity @s[x=-39,y=64,z=100,r=1] run say §f这么大一片冰原，不拿来玩儿赛船可惜了。等到过年的时候，我把镇上的人全叫过来一起比赛。

execute if score timeline active matches 0 if entity @s[x=-199,y=31,z=114,r=1] run say §f如果没建筑材料了，完成那些小游戏可以赠送。
execute if score timeline active matches 0 if entity @s[x=-243,y=31,z=153,r=1] run say §f别客气，箱子里的彩岩拿走吧！我和田萍说一声就可以了，他肯定同意。
execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 3 run say §f“不定时”补充实际上是，你每次离开小镇时我就会补充，回来后箱子就补满了。
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 3 run say §f你找到制图室的位置了吗，那里搭好就能画汇灵岛的地图了。
execute if score timeline active matches 0 if entity @s[x=-175,y=31,z=166,r=1] if block -175 36 153 air run say §f可是……小镇的彩岩也太少了。凑齐我房子的材料恐怕得等到猴年马月吧。
execute if score timeline active matches 0 if entity @s[x=-175,y=31,z=166,r=1] if block -175 36 153 stone run say §f我研究了新的药水放在我家二楼，应该对你的冒险有帮助，记得去看看。
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 3 run say §f哎？我们是什么时候开始居住在这岛上的？这个我也不清楚。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 3 if block -194 32 158 air run say §f先搭我的房子好不好？我需要的建筑材料是最便宜的，搭好之后我会送你好东西。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 3 if block -194 32 158 stone_bricks run say §f孙嘉睿平时在逍遥平原管理挖掘小游戏，你已经见过他了吧。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 3 run say §f虽说我自己建的房子没有吕岩的好，但好在我抢占了黄金位置，离旅馆最近。
execute if score timeline active matches 0 if entity @s[x=-175,y=31,z=61,r=1] run say §f别忘了修桥，那个对你来说是最重要的。

execute if score timeline active matches 0 if entity @s[x=-202,y=34,z=-59,r=1] run say §f你好啊林乐，我负责铺设岛上的地铁，但是现在出故障了。

execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 4 run tp @a -231 -24 185 facing -232 -24 185
execute if score timeline active matches 0 if entity @s[x=-233,y=31,z=144,r=1] if score progress data matches 4 run say §f我想和你聊会儿天，去§d沙滩§f找我吧！
execute if score timeline active matches 0 if entity @s[x=-233,y=31,z=144,r=1] if score progress data matches 4 unless entity @e[type=aw:npc,x=-273,y=31,z=185,r=1] run summon aw:npc -273 31 185 facing -273 31 184 skin_1 "王予凡"
execute if score timeline active matches 0 if entity @s[x=-233,y=31,z=144,r=1] if score progress data matches 4 if score flintAndSteel itemState matches 0 run scoreboard players set flintAndSteel itemState 1

execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 0 run function lib/modify_data/states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 0 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 0 run scoreboard players set timeline active 36
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 1 run say §f关于去雪原的事，你去找§d吕岩§f让他帮帮忙吧。
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 2 run say §f多准备几个§d河豚§f，从§d农港§f去§d雪原§f让我给你酿造水肺药水，然后下水§d寻找贝壳§f吧。
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 3 run say §f贝壳给你的呼吸时间也不是特别长啊，还是要记得浮上水面换气。
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches 7 run function lib/modify_data/states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches 7 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches 7 run scoreboard players set timeline active 49
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches 8.. run say §f恢复药水的酿造也需要寒冷环境，所以你想要的话还是得麻烦你再来雪原找我。

execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 0 run function lib/modify_data/states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 0 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 0 run scoreboard players set timeline active 37
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 1 run say §f我没想好要选什么礼物，你问问§d邹鹭遥§f吧。
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 2 run say §f去雪原拿到§d蓝冰§f，交给田萍§d借神镐§f，寻找并挖§d黑曜石§f，搭建传送门。
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 3 run say §f田萍和王予凡和我说他们也想去下界要塞。
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches 2.. run say §f彩岩的获取难度较高，经过改进后有更多的小游戏可以赠送了！

execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if score progress data matches 4 if block -229 31 135 air run function lib/modify_data/states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if score progress data matches 4 if block -229 31 135 air run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if score progress data matches 4 if block -229 31 135 air run scoreboard players set timeline active 35
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if score progress data matches 4 unless block -229 31 135 air run say §f仔细观察，那些在表面之内还藏有东西的事物总会留下线索。
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches 3 run function lib/modify_data/states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches 3 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches 3 run scoreboard players set timeline active 47
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches 4.. run say §f如果你不想永远不饿的话，把南瓜祝福关掉就好了。

execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 4 run say §f你想试试生啃河豚吗？哈哈，可不要做这种狠活儿，它有更大的价值。
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 4 run say §f我经常在田萍下矿洞挖矿的时候钓鱼，有一次他千辛万苦挖的矿全丢了，我却靠钓鱼发家致富了。
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 4 run say §f穿了皮革鞋子就可以在细雪中行走，你是知道的吧。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 4 run say §f在沙滩上吹着海风眺望远方，还挺惬意的。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 4 run say §f其实，我不敢出去的原因是，现在岛上没有任何人来自小镇之外，其他地方的人就像消失了一样。

execute if score timeline active matches 0 if entity @s[x=-284,y=31,z=76,r=1] run say §f那边的山很漂亮呢，传说是一只小鼠发现的，你想去走走吗？
execute if score timeline active matches 0 if block -276 31 84 air if entity @s[x=-283,y=31,z=90,r=1] run say §f俗话说得好……英雄不论出处，染料莫问来路。
execute if score timeline active matches 0 unless block -276 31 84 air if entity @s[x=-283,y=31,z=90,r=1] run say §f你拿那几朵花其实不算啥，主要是我也拿了好几箱子。
execute if score timeline active matches 0 if entity @s[x=-190,y=31,z=128,r=1] if score progress data matches 4 run say §f这东西很危险，所以我把它藏在地板下方避免出事故。
execute if score timeline active matches 0 if entity @s[x=14,y=60,z=94,r=1] run say §f对面那堆细雪里好像藏了什么东西。

execute if score timeline active matches 0 if entity @s[x=-270,y=-49,z=54,r=1] run say §f如果你自己着火了可以用水枪灭火，水枪还能对这里的怪物造成伤害，试试吧！
execute if score timeline active matches 0 if entity @s[x=-270,y=-49,z=52,r=1] run say §f设计一下要在什么时机操作篝火，否则……可能会跑断腿的。

execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 5.. run say §f等你要离开这个岛时，我一定把餐厅里最好吃，最耐储存的东西拿出来给你带上。
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 5.. run say §f跟你说，我以前梦到过一个几乎和你一模一样的人，所以看到你感觉特别亲切！
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 5.. run say §f虽然不知道故事会以什么样的形式结束，但你离开岛的那一天也不远了吧。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 5.. run say §f我觉得我早就认识你，一定是这样的。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 5.. run say §f有很多事直到最后一刻都是不知道结局的，走一步看一步吧。
execute if score timeline active matches 0 if entity @s[x=-190,y=31,z=128,r=1] if score progress data matches 5.. run say §f你还记得你是从多远的地方航行来到这里的吗？路上要花多长时间？

execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 5 run function lib/modify_data/states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 5 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 5 run scoreboard players set timeline active 54
execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 6 if score emeraldPickaxe itemState matches 0 run say §f神镐在我这里先保养一下，等你找到了地牢入口再说。
execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 6 if score emeraldPickaxe itemState matches 2 run say §f神镐你先继续拿着吧，之后肯定用得上。

execute if score timeline active matches 0 if entity @s[x=-205,y=33,z=-36,r=1] run say §f嗯？林乐你去忙你的吧，我们这边没什么事。
execute if score timeline active matches 0 if entity @s[x=-214,y=31,z=134,r=1] run say §f王予凡是个热心肠，一个人打了好几份工不说，几乎每次小镇活动都是他牵头组织的。我很感谢他。
execute if score timeline active matches 0 if entity @s[x=-166,y=37,z=119,r=1] run say §f你好啊林乐，我在准备新的工程，至于内容你之后就知道了。
execute if score timeline active matches 0 if entity @s[x=-77,y=31,z=30,r=1] run say §f我的神镐，我的神镐啊！（疯狂拍地板）

execute if score timeline active matches 0 if entity @s[x=-92,y=79,z=-43,r=1] if entity @a[x=-92,y=79,z=-43,r=5] if block -97 79 -50 air run say §f把明信片放在§d箱子第一格§f就好了，田萍和王予凡住在一起所以要放§d两张§f。都放好了回来跟我说一声，我有好东西给你。
execute if score timeline active matches 0 if entity @s[x=-92,y=79,z=-43,r=1] if entity @a[x=-92,y=79,z=-43,r=5] unless block -97 79 -50 air run say §f……田萍和王予凡真是一对苦命鸳鸯……咳，信口胡诌的，你当没听见。

execute if score timeline active matches 0 if entity @s[x=-265,y=31,z=66,r=1] run say §f以后我看到这座雕像，也能想到拿着神镐的你，曾经和我们一起度过了这段时光。
execute if score timeline active matches 0 if entity @s[x=-264,y=39,z=163,r=1] run say §f我记得好久前，看到你被海浪冲上沙滩的那个下午，我也像今天一样坐在这里。
execute if score timeline active matches 0 if entity @s[x=-226,y=31,z=156,r=1] run say §f千万不要忘了我们哦，不然……我一定不会原谅你的qwq
execute if score timeline active matches 0 if entity @s[x=-300,y=31,z=186,r=1] run say §f船的木材都是我们在林场自己种的树，绝对结实可靠。你问我为什么没用来搭房子？因为在这种重要场合才值得。
execute if score timeline active matches 0 if entity @s[x=-228,y=-15,z=182,r=1] run say §f用好身上的道具，它们会在战斗中起很大的作用。
# 船上的华梦言
execute if score timeline active matches 0 if entity @s[x=38,y=82,z=-10,r=1] run tellraw @a {"rawtext":[{"text":"§9[华梦言]冒险中心二层的攻略也更新了，它可以带着你§d发现岛上的所有秘密§9。"}]}
