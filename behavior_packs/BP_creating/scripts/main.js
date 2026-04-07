// @ts-check
import * as minecraft from "@minecraft/server"

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
                dimension.getEntities({type: "minecraft:item"}).forEach(itemEntity => {
                    /** @type {minecraft.EntityItemComponent} */ // @ts-ignore
                    const itemComponent = itemEntity.getComponent("minecraft:item");
                    if (itemComponent.itemStack.typeId === event.message) itemEntity.remove();
                });
            });
            break;

    };

})
