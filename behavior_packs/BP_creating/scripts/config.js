// @ts-check

/** 在使用完毕后执行命令的物品
 * @type {Record<string, string>}
 */
export const itemCompleteUseCommand = {
    "aw:potion_heal": "function item/potion_heal",
    "aw:potion_full": "function item/potion_full",
    "aw:potion_regeneration": "function item/potion_regeneration",
    "aw:potion_shield": "function item/potion_shield",
};

/** 打开特定位置的箱子后执行的函数，在打开这些箱子后将会使箱子变为对应的「打开的箱子」
 * @remarks 键名为坐标，值为执行的命令
 * @type {Record<string, string>}
 */
export const chestOpenedCommand = {
    // 四大 NPC 的馈赠
    "-222 36 130": "execute if score bottle1 data matches 0 run function area/village/events/open_wangyufan_gift",
    // 各地牢的坐标笔记
    "-236 -29 133": "execute if score locationBookOfMine data matches 0 run function dungeon/mine/events/get_location_book",
    // 木材
    "-311 31 182": "function lib/utils/get_wood", // 筑梦镇 沉船
    "-216 41 138": "function lib/utils/get_wood", // 筑梦镇 旅馆 3 楼
    // 石料
    "-309 31 182": "function lib/utils/get_stone", // 筑梦镇 沉船
    // 彩岩
    "-243 31 148": "function lib/utils/get_colorstone", // 筑梦镇 仓库
};
