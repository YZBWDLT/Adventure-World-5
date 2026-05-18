// @ts-check
import * as minecraft from "@minecraft/server";
import * as config from "./config.js";

minecraft.system.afterEvents.scriptEventReceive.subscribe(event => {
    // 检查脚本事件 ID
    switch (event.id) {
        // 移除物品实体命令 | 语法：/scriptevent aw:removeItemInventory <物品 ID>
        case "aw:removeItemEntity":
            // 对所有维度检查物品实体，如果物品的类型 ID 满足提供的物品 ID 则移除之
            const dimensions = [
                minecraft.world.getDimension("overworld"),
                minecraft.world.getDimension("nether"),
                minecraft.world.getDimension("the_end")
            ];
            dimensions.forEach(dimension => {
                dimension.getEntities({ type: "minecraft:item" }).forEach(itemEntity => {
                    if (itemEntity.getComponent("minecraft:item")?.itemStack.typeId === event.message) itemEntity.remove();
                });
            });
            break;
    };
});

// 玩家使用雪浪笔
minecraft.world.afterEvents.itemUse.subscribe(event => {
    const item = event.itemStack;
    if (item.typeId !== "aw:schellon_brush") return;
    const player = event.source;
    const cooldownComp = item.getComponent("minecraft:cooldown");
    const cooldownTicks = cooldownComp?.getCooldownTicksRemaining(player);
    const maxCooldownTicks = cooldownComp?.cooldownTicks;
    if (cooldownTicks !== maxCooldownTicks) return;
    player.runCommand("function item/schellon_brush");
});

// 玩家使用完毕物品
minecraft.world.afterEvents.itemCompleteUse.subscribe(event => {
    // 如果使用的不是允许的物品，则终止运行
    const item = event.itemStack;
    const validItems = Object.keys(config.itemCompleteUseCommand);
    if (!validItems.includes(item.typeId)) return;
    // 否则，令该玩家执行命令
    const command = config.itemCompleteUseCommand[item.typeId];
    const player = event.source;
    player.runCommand(command);
});

// 玩家和酿造台交互获得药水
minecraft.world.beforeEvents.playerInteractWithBlock.subscribe(event => {
    if (!event.isFirstEvent) {
        event.cancel = true;
        return;
    }
    if (event.block.typeId !== "minecraft:brewing_stand") return;
    const blockBelow = event.block.below();
    const player = event.player;
    /** @param {string} potionType */
    const runPotionFunction = (potionType) => {
        event.cancel = true;
        minecraft.system.run(() => player.runCommand(`function block/brewing_stand/get_${potionType}`));
    };
    switch (blockBelow?.typeId) {
        case "minecraft:red_stained_glass": runPotionFunction("heal_potion"); break;
        case "minecraft:blue_stained_glass": runPotionFunction("full_potion"); break;
        case "minecraft:pink_stained_glass": runPotionFunction("regeneration_potion"); break;
        case "minecraft:light_blue_stained_glass": runPotionFunction("water_breathing_effect"); break;
        case "minecraft:yellow_stained_glass":
            const materialBlock = event.block.below(2);
            switch (materialBlock?.typeId) {
                case "minecraft:oak_planks": runPotionFunction("shield_potion_planks"); break;
                case "minecraft:stone": runPotionFunction("shield_potion_stone"); break;
                case "minecraft:granite": runPotionFunction("shield_potion_colorstone"); break;
            };
            break;
    };
});

// 玩家与箱子交互
minecraft.world.beforeEvents.playerInteractWithBlock.subscribe(event => {
    // 如果交互的不是箱子，则终止运行
    if (!event.isFirstEvent) return;
    const chest = event.block
    const validChests = ["aw:chest_build", "aw:chest_key", "aw:chest_others"];
    if (!validChests.includes(chest.typeId)) return;
    // 如果打开的箱子不为允许的箱子中的一个，则终止运行
    const validLocations = Object.keys(config.chestOpenedCommand);
    const { x, y, z } = chest.location;
    const interactLocation = `${x} ${y} ${z}`;
    if (!validLocations.includes(interactLocation)) return;
    // 如果箱子上方有方块，则终止运行
    const topBlock = chest.above();
    if (topBlock?.typeId !== "minecraft:air") return;
    // 符合条件时，执行代码
    event.cancel = true;
    minecraft.system.run(() => {
        // 播放音效和粒子
        chest.dimension.playSound("random.chestopen", chest.center());
        const openChestParticle = {
            "aw:chest_build": "aw:open_chest_build",
            "aw:chest_key": "aw:open_chest_key",
            "aw:chest_others": "aw:open_chest_others"
        }[chest.typeId] ?? "";
        chest.dimension.spawnParticle(openChestParticle, chest.center());
        // 运行命令
        const player = event.player;
        player.runCommand(config.chestOpenedCommand[interactLocation]);
        // 替换箱子
        const newChestId = {
            "aw:chest_build": "aw:opened_chest_build",
            "aw:chest_key": "aw:opened_chest_key",
            "aw:chest_others": "aw:opened_chest_others"
        }[chest.typeId] ?? "minecraft:chest";
        const cardinalDirection = chest.permutation.getState("minecraft:cardinal_direction");
        chest.dimension.setBlockPermutation(chest.location, minecraft.BlockPermutation.resolve(newChestId, { "minecraft:cardinal_direction": cardinalDirection ?? "north" }))
    });
});
