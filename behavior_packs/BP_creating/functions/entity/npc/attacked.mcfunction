# ===== NPC 被攻击后，NPC 执行的命令 =====

execute if score timeline active matches 0 run event entity @s aw:speak

execute if score timeline active matches 0 if entity @s[x=-188,y=36,z=130,r=1] run say §f船的残骸也在§d沙滩§f上，那儿可能有你的东西。
execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=132,r=1] run say §f我们的镇长去§d矿洞§f了。说起这个，他好像很长时间没回来了。应该没出什么事吧……
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 0 run say §f欢迎领取药水，王予凡在楼上留了一个§d玻璃瓶§f可以用来装药。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 0 run say §f这里就是沙滩了，现在被碎木头弄得乱七八糟的。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 0 run say §f汇灵岛的中心是平原，那里危险，你先不要出去。
execute if score timeline active matches 0 if entity @s[x=-272,y=57,z=153,r=1] if score progress data matches 0 run say §f卡关了吗？可以去b站搜“狂野巴豆”观看攻略视频~

execute if score timeline active matches 0 if entity @s[x=-230,y=-29,z=138,r=1] positioned -230 -29 138 if entity @p[hasitem={item=diamond_pickaxe,quantity=0}] run say §f找到我的§d神镐§f就能出来了，旁边有坐标笔记对你有用。
execute if score timeline active matches 0 if entity @s[x=-230,y=-29,z=138,r=1] positioned -230 -29 138 if entity @p[hasitem={item=diamond_pickaxe}] run function lib/modify_states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-230,y=-29,z=138,r=1] positioned -230 -29 138 if entity @p[hasitem={item=diamond_pickaxe}] run scoreboard players set timeline active 3
execute if score timeline active matches 0 if entity @s[x=-234,y=-49,z=139,r=1] run say §f你救了我，我可不能丢下你不管。
execute if score timeline active matches 0 if entity @s[x=-230,y=-49,z=142,r=1] run say §f镇长居然遇险了，多亏了你救他啊。

execute if score timeline active matches 0 if entity @s[x=-217,y=31,z=134,r=1] run say §f小镇西边的§d浮空山§f，那里的§d遗迹§f可能会记载这个小岛的秘密。
execute if score timeline active matches 0 if entity @s[x=-215,y=31,z=132,r=1] run say §f如果你遇到任何麻烦，尽管找我们。
execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 1 run say §f欢迎光临王予凡餐厅！食物随便拿，我会补的。
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 1 run say §f欢迎光临冒险中心！我给你准备了一套衣服。
execute if score timeline active matches 0 if entity @s[x=-242,y=31,z=133,r=1] run say §f我记得山里也有一个人居住，不过我们很少交流。
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 1 run say §f田萍负责镇里的事务管理，而王予凡喜欢在镇里开店。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 1 run say §f你从船的残骸里翻出什么好东西了吗？
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 1 run say §f旁边是林场，我们种了很多树。
execute if score timeline active matches 0 if entity @s[x=-272,y=57,z=153,r=1] if score progress data matches 1 run say §f走过门外的吊桥就可以进入浮空峰遗迹了。

execute if score timeline active matches 0 if entity @s[x=-204,y=31,z=109,r=1] run say §f到§d逍遥平原§f去，那里有人能帮到你。
execute if score timeline active matches 0 if entity @s[x=-197,y=31,z=107,r=1] run say §f外面危险，出发前先到冒险中心去一趟吧。
execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 2 run say §f出了这个小镇就没人给你准备吃的了，多拿点啊！
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 2 run say §f遇到远距离攻击的怪物时，盾牌就格外重要了。
execute if score timeline active matches 0 if entity @s[x=-179,y=31,z=137,r=1] run say §f我也好想要一栋属于自己的房子啊。
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 2 run say §f有时候，我们小镇的居民之间即使不说话也能明白对方的想法，真是神奇。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 2 run say §f你不在的时候王予凡一直在往冒险中心进货，记得常去看看。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 2 run say §f我？我不想出去。
execute if score timeline active matches 0 if entity @s[x=-272,y=57,z=153,r=1] if score progress data matches 2.. run say §f恭喜你啊，破解了遗迹的秘密，别忘了去楼上玩玩跑酷哦。

execute if score timeline active matches 0 if entity @s[x=-146,y=31,z=72,r=1] if score pickaxe itemState matches 0 run say §f你没有镐子吗？很遗憾你现在没法玩这个小游戏。
execute if score timeline active matches 0 if entity @s[x=-146,y=31,z=72,r=1] if score pickaxe itemState matches 1.. run say §f来玩挖掘小游戏吧，过关之后有建筑材料赠送！
execute if score timeline active matches 0 if entity @s[x=-164,y=-59,z=121,r=1] if score progress data matches 0..1 run say §f林乐？你们真的已经把恶魔……等等，你是谁？
execute if score timeline active matches 0 if entity @s[x=-164,y=-59,z=121,r=1] if score progress data matches 2 run say §f这里这么多怪物我实在不敢前进，深处只能麻烦你继续探索了。

execute if score timeline active matches 0 if entity @s[x=-215,y=32,z=112,r=1] run say §f汇灵岛的地图有大的也有小的，你可以选喜欢的拿。
execute if score timeline active matches 0 if entity @s[x=-193,y=34,z=148,r=1] run say §f陆千里在阳台上给你准备了礼物。
execute if score timeline active matches 0 if entity @s[x=-154,y=32,z=145,r=1] run say §f太好了，我终于有房子了。
execute if score timeline active matches 0 if entity @s[x=-39,y=64,z=100,r=1] run tellraw @a {"rawtext":[{"text":"§a[我]还是你？我以为这里没人呢。"}]}

execute if score timeline active matches 0 if entity @s[x=-199,y=31,z=114,r=1] run say §f接下来你需要§d过河§f，找另一个能帮到你的人。
execute if score timeline active matches 0 if entity @s[x=-243,y=31,z=153,r=1] run say §f木材在小镇附近最常见，石料偏僻一些，至于彩岩，只有汇灵岛很远的地方才有。
execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 3 run say §f林乐，大家看到你，都有一种很亲切的感觉呢，就像老朋友一样。
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 3 run say §f吕岩说如果有装饰损坏了，可以叫他来修复。
execute if score timeline active matches 0 if entity @s[x=-175,y=31,z=166,r=1] if block -175 36 153 air run say §f大家真照顾我，给我安排了独栋小屋。
execute if score timeline active matches 0 if entity @s[x=-175,y=31,z=166,r=1] if block -175 36 153 stone run say §f这么快就收集到这些彩岩了？好厉害，你是怎么做到的！
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 3 run say §f这里的药水都是邹鹭遥酿造的。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 3 if block -194 32 158 air run say §f我的新房子终于有规划了！
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 3 if block -194 32 158 stonebrick run say §f谢谢！我准备了一颗心之碎片送你，就在我家阳台上。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 3 run say §f刚才吕岩过来和田萍说了什么，然后用地毯圈出了这几块地。
execute if score timeline active matches 0 if entity @s[x=-175,y=31,z=61,r=1] run say §f只要你准备好材料，我就会开工搭房子。

execute if score timeline active matches 0 if entity @s[x=-202,y=34,z=-59,r=1] run say §f昨天地铁系统突然坏了，它的入口在§d白色的房子里§f。

execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 4 run say §d倪高志§f负责§d林地府邸§f，§d邹鹭遥§f负责§d海底神殿§f，§d吕岩§f负责§d下界要塞§f，想和我聊天长按我或点右键。
execute if score timeline active matches 0 if entity @s[x=-233,y=31,z=144,r=1] if score progress data matches 4 run say §f我想和你聊会儿天，去§d沙滩§f找我吧！
execute if score timeline active matches 0 if entity @s[x=-233,y=31,z=144,r=1] if score progress data matches 4 unless entity @e[type=aw:npc,x=-273,y=31,z=185,r=1] run summon aw:npc -273 31 185 facing -273 31 184 skin_1 "王予凡"
execute if score timeline active matches 0 if entity @s[x=-233,y=31,z=144,r=1] if score progress data matches 4 if score flintAndSteel itemState matches 0 run scoreboard players set flintAndSteel itemState 1

execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if entity @a[x=-235,y=31,z=136,r=5] if score progress data matches 4 if score monument_prepare data matches 0 run function lib/modify_states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if entity @a[x=-235,y=31,z=136,r=5] if score progress data matches 4 if score monument_prepare data matches 0 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if entity @a[x=-235,y=31,z=136,r=5] if score progress data matches 4 if score monument_prepare data matches 0 run scoreboard players set timeline active 36
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 1 run say §f关于去雪原的事，你去找§d吕岩§f让他帮帮忙吧。
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 2 run say §f多准备几个§d河豚§f，从§d农港§f去§d雪原§f让我给你酿造水肺药水，然后下水§d寻找贝壳§f吧。
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches ..6 if score progress data matches 4 if score monument_prepare data matches 3 run say §f现在你可以去§d海底神殿§f了！
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches 7 run function lib/modify_states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches 7 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches 7 run scoreboard players set timeline active 49
execute if score timeline active matches 0 if entity @s[x=-235,y=31,z=136,r=1] if score 6_monument_boss data matches 8.. run say §f等§d所有神殿都完成§f之后，就去§d找田萍聊聊§f吧！

execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if entity @a[x=-229,y=31,z=142,r=5] if score progress data matches 4 if score fortress_prepare data matches 0 run function lib/modify_states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if entity @a[x=-229,y=31,z=142,r=5] if score progress data matches 4 if score fortress_prepare data matches 0 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if entity @a[x=-229,y=31,z=142,r=5] if score progress data matches 4 if score fortress_prepare data matches 0 run scoreboard players set timeline active 37
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 1 run say §f我没想好要选什么礼物，你问问§d邹鹭遥§f吧。
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 2 run say §f去雪原拿到§d蓝冰§f，交给田萍§d借神镐§f，寻找并挖§d黑曜石§f，搭建传送门。
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches ..1 if score progress data matches 4 if score fortress_prepare data matches 3 run say §f传送门里可能很危险，多加小心。
execute if score timeline active matches 0 if entity @s[x=-229,y=31,z=142,r=1] if score 7_fortress_boss data matches 2.. run say §f等§d所有神殿都完成§f之后，就去§d找田萍聊聊§f吧！

execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if entity @a[x=-231,y=31,z=136,r=5] if score progress data matches 4 if block -229 31 135 air run function lib/modify_states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if entity @a[x=-231,y=31,z=136,r=5] if score progress data matches 4 if block -229 31 135 air run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if entity @a[x=-231,y=31,z=136,r=5] if score progress data matches 4 if block -229 31 135 air run scoreboard players set timeline active 35
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if score progress data matches 4 unless block -229 31 135 air if score pumpkin itemState matches 0 run say §f拿着我的钥匙去§d实验室§f，得到法宝之后再通过测试，就可以用它穿过迷失森林了。
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches ..2 if score progress data matches 4 unless block -229 31 135 air if score pumpkin itemState matches 1 run say §f我的雕刻技术怎么样？一旦失误就只能吃南瓜派了呢。
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches 3 run function lib/modify_states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches 3 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches 3 run scoreboard players set timeline active 47
execute if score timeline active matches 0 if entity @s[x=-231,y=31,z=136,r=1] if score 5_mansion_boss data matches 4.. run say §f等§d所有神殿都完成§f之后，就去§d找田萍聊聊§f吧！

execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 4 run say §f本餐厅允许顾客自带生食自行烹饪，旁边的篝火可不是装饰。
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 4 run say §f我给你准备了钓竿！你想试试钓鱼吗？
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 4 run say §f如果你觉得治疗药水药效不够强的话，就去搭建§d邹鹭遥家§f吧！她会在里面制作新药水的。
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 4 run say §f听王予凡说，远方有一片冰原，搭好§d码头§f之后就可以出发了。
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 4 run say §d胡雨＆伊云家§f搭好之后，他们会送你一本很有用的书的。

execute if score timeline active matches 0 if entity @s[x=-284,y=31,z=76,r=1] run say §f据说农场住着一只雪狐狐，见到他就能带来好运哦。
execute if score timeline active matches 0 if block -276 31 84 air if entity @s[x=-283,y=31,z=90,r=1] run say §f拿到新染料后点一下那边的按钮就可以解锁无限染料了，染色需要上楼。
execute if score timeline active matches 0 unless block -276 31 84 air if entity @s[x=-283,y=31,z=90,r=1] run say §f吕岩说之后染料供货由他负责，染坊经营不受影响。
execute if score timeline active matches 0 if entity @s[x=-190,y=31,z=128,r=1] if score progress data matches 4 run say §f你投掷的物品，比如御风珠，穿过火焰之后也会被点燃。
execute if score timeline active matches 0 if entity @s[x=14,y=60,z=94,r=1] if score 6_monument_boss data matches ..7 if score shell itemState matches 0 run say §f如果水下呼吸时间快结束了，一定要及时回到地面上啊！
execute if score timeline active matches 0 if entity @s[x=14,y=60,z=94,r=1] if score 6_monument_boss data matches ..7 if score shell itemState matches 1 run say §f剩下的河豚先别扔，我会想办法利用的。
execute if score timeline active matches 0 if entity @s[x=14,y=60,z=94,r=1] if score 6_monument_boss data matches 8.. run say §f注意，如果在恢复药水生效期间喝治疗类药水，恢复效果会失效的。

execute if score timeline active matches 0 if entity @s[x=-270,y=-49,z=54,r=1] run say §f把三层楼的三个篝火§d全部点燃或全部熄灭§f，就会触发整个要塞的机关。
execute if score timeline active matches 0 if entity @s[x=-270,y=-49,z=52,r=1] run say §f多亏了你来救我们，才保住了我们俩……和田萍的神镐。

execute if score timeline active matches 0 if entity @s[x=-202,y=31,z=186,r=1] if score progress data matches 5.. run say §f想到你以后不用再来拿东西吃了，还有点遗憾呢。
execute if score timeline active matches 0 if entity @s[x=-227,y=31,z=176,r=1] if score progress data matches 5.. run say §f绿色衣服是最经典的，不过你也可以自己染色，搭染坊了吗？
execute if score timeline active matches 0 if entity @s[x=-219,y=31,z=128,r=1] if score progress data matches 5.. run say §f这个岛上一共有4个玻璃瓶，4种药水，你找到了多少呢？
execute if score timeline active matches 0 if entity @s[x=-250,y=31,z=165,r=1] if score progress data matches 5.. run say §f海边的烂木头已经没法用了，所以需要……
execute if score timeline active matches 0 if entity @s[x=-195,y=31,z=110,r=1] if score progress data matches 5.. run say §f整个岛你都探遍了吧？或者还有地方你没去过？
execute if score timeline active matches 0 if entity @s[x=-190,y=31,z=128,r=1] if score progress data matches 5.. run say §f不好意思啊，我有点事儿要思考，有事儿找田萍吧。

execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 5 run function lib/modify_states/timeline/enable_time_lapse
execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 5 run function lib/utils/start_dialogue
execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 5 run scoreboard players set timeline active 54
execute if score timeline active matches 0 if entity @s[x=-228,y=31,z=139,r=1] if score progress data matches 6 run say §f如果你觉得§d哪个地方比较像地牢入口§f，那应该就是它了。

execute if score timeline active matches 0 if entity @s[x=-205,y=33,z=-36,r=1] run say §f作为岛上地铁的负责人，或许我可以……
execute if score timeline active matches 0 if entity @s[x=-214,y=31,z=134,r=1] run say §f林乐？累了就在旅馆休息休息吧，不要勉强自己。
execute if score timeline active matches 0 if entity @s[x=-166,y=37,z=119,r=1] run say §f林场里的树长势都不错啊，搭房子用的都是林乐给我的木材，这边还没用过呢。
execute if score timeline active matches 0 if entity @s[x=-77,y=31,z=30,r=1] run say §f我的神镐啊！你居然与基岩同归于尽了！

execute if score timeline active matches 0 if entity @s[x=-92,y=79,z=-43,r=1] unless entity @a[x=-92,y=79,z=-43,r=5] run say §f林乐？这上面景色很美，你也上来看看吧！
execute if score timeline active matches 0 if entity @s[x=-92,y=79,z=-43,r=1] if entity @a[x=-92,y=79,z=-43,r=5] if block -97 79 -50 air run say §f我在这里写了很多§d明信片§f，想寄给我的好朋友们。嗯……正好，可以请你帮忙送到§d田萍、王予凡、吕岩、倪高志家的信箱§f里吗？一人一张。
execute if score timeline active matches 0 if entity @s[x=-92,y=79,z=-43,r=1] if entity @a[x=-92,y=79,z=-43,r=5] unless block -97 79 -50 air run say §f我给你准备了新的药瓶！还有……相处了这么久，我也把你当作很重要的朋友了，所以我也给你写了明信片，和药瓶一起放在这里了。以及，你看到我在半山腰准备的新药水了吗？如果不知道怎么进去，从后边跳进深坑就可以了。

execute if score timeline active matches 0 if entity @s[x=-265,y=31,z=66,r=1] run say §f做好最后的战斗准备，去§d地铁中枢§f找倪高志，他会告诉你如何前往。
execute if score timeline active matches 0 if entity @s[x=-264,y=39,z=163,r=1] run say §f在你来之前所经历的点点滴滴我都写在了一本日记里，或许有一天你会看到。
execute if score timeline active matches 0 if entity @s[x=-226,y=31,z=156,r=1] run say §f总有一天，林乐会离开这座岛吧……
execute if score timeline active matches 0 if entity @s[x=-300,y=31,z=186,r=1] run say §f怎么样，这艘船够气派了吧？不仅结实，王予凡还把好多食物都搬上去了。
execute if score timeline active matches 0 if entity @s[x=-228,y=-15,z=182,r=1] run say §f这道新的门里面就是最终的战场了，进去就没有回头路，做好准备吧。
# 船上的华梦言
execute if score timeline active matches 0 if entity @s[x=38,y=82,z=-10,r=1] run tellraw @a {"rawtext":[{"text":"§9[华梦言]只要再去终末之地击败梦境守卫，就可以再回到船上了。你现在§d可以快速消灭它§9，不用再经过漫长的战斗了。"}]}
