##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.advancedrocketry.PlatePresser;
import mods.appliedenergistics2.Grinder;
import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.Squeezer;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.highoven.MixRecipeManager;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

##vars
val stick = <ore:stickWood>;
val plank = <ore:plankWood>;
val log = <ore:logWood>;
val cobblestone = <ore:cobblestone>;
val stone = <ore:stone>;
val clay = <minecraft:clay_ball>;
val brick = <minecraft:brick>;
val iron = <ore:ingotIron>;

val pattern = <tconstruct:pattern>;

##recipes
//remove vanilla tools
recipes.remove(<minecraft:wooden_pickaxe>);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:golden_pickaxe>);
recipes.remove(<minecraft:diamond_pickaxe>);

recipes.remove(<minecraft:wooden_sword>);
recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:iron_sword>);
recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:diamond_sword>);

recipes.remove(<minecraft:wooden_axe>);
recipes.remove(<minecraft:stone_axe>);
recipes.remove(<minecraft:iron_axe>);
recipes.remove(<minecraft:golden_axe>);
recipes.remove(<minecraft:diamond_axe>);

recipes.remove(<minecraft:wooden_shovel>);
recipes.remove(<minecraft:stone_shovel>);
recipes.remove(<minecraft:iron_shovel>);
recipes.remove(<minecraft:golden_shovel>);
recipes.remove(<minecraft:diamond_shovel>);

recipes.remove(<minecraft:wooden_hoe>);
recipes.remove(<minecraft:stone_hoe>);
recipes.remove(<minecraft:iron_hoe>);
recipes.remove(<minecraft:golden_hoe>);
recipes.remove(<minecraft:diamond_hoe>);

//pattern
recipes.remove(pattern);
recipes.addShaped("TCon_Pattern", pattern*4, [
	[null, stick, null],
	[stick, plank, stick],
	[null, stick, null]
]);

//stencil table
recipes.remove(<tconstruct:tooltables:1>);
recipes.addShaped("TCon_StencilTable", <tconstruct:tooltables:1>, [
	[null, <artisanworktables:artisans_chisel_flint>, null],
	[pattern, pattern, pattern],
	[null, plank.marked("mark"), null]
], function(out, ins, cInfo) {
	return out.withTag({textureBlock: {id: ins.mark.definition.id, Count: 1 as byte, Damage: ins.mark.metadata as short}});
}, null);

//part builder
recipes.remove(<tconstruct:tooltables:2>);
recipes.addShaped("TCon_PartBuilder", <tconstruct:tooltables:2>, [
	[null, <artisanworktables:artisans_handsaw_flint>, null],
	[pattern, pattern, pattern],
	[null, log.marked("mark"), null]
], function(out, ins, cInfo) {
	return out.withTag({textureBlock: {id: ins.mark.definition.id, Count: 1 as byte, Damage: ins.mark.metadata as short}});
}, null);

//tool station
recipes.remove(<tconstruct:tooltables:3>);
recipes.addShaped("TCon_ToolStation", <tconstruct:tooltables:3>, [
	[null, <artisanworktables:artisans_framing_hammer_flint>, null],
	[pattern, pattern, pattern],
	[null, <ore:workbench>, null]
]);

//flint and steel
recipes.remove(<minecraft:flint_and_steel>);
<minecraft:flint_and_steel>.displayName = "Flint and Stick";
recipes.addShapeless("MC_FlintAndStick", <minecraft:flint_and_steel>, [
	stick, <minecraft:flint>
]);

//wood pile
furnace.remove(<minecraft:coal:1>);
recipes.remove(<forestry:wood_pile>);
recipes.addShapeless("FR_DecoPileToWoodPile",<forestry:wood_pile>, [<forestry:wood_pile_decorative>]);
recipes.addShaped("FR_WoodPile", <forestry:wood_pile>*2, [
	[log, log, log],
	[log, <minecraft:clay>, log],
	[log, log, log]
]);

//torch
val _t = <minecraft:torch>;
val _c = <harvestcraft:wovencottonitem>;
val _l = <minecraft:flint_and_steel>.anyDamage().transformDamage();
val _s = <ore:stickWood>;
val _ns = <enderio:item_material:8>;
val _is = <forestry:oak_stick>;

recipes.remove(<minecraft:torch>);
recipes.remove(<tconstruct:stone_torch>);
recipes.addShapedMirrored("MC_Torch_Coal", _t*8, [
	[null, <actuallyadditions:item_misc:10>, null],
	[null, _c, _l],
	[null, _s, null]
]);
recipes.addShapedMirrored("MC_Torch_CharCoal", _t*8, [
	[null, <actuallyadditions:item_misc:11>, null],
	[null, _c, _l],
	[null, _s, null]
]);
recipes.addShapedMirrored("MC_Torch_Rosin", _t*16, [
	[null, <thermalfoundation:material:832>, null],
	[null, _c, _l],
	[null, _s, null]
]);
recipes.addShapedMirrored("MC_Torch_Tar", _t*16, [
	[null, <thermalfoundation:material:833>, null],
	[null, _c, _l],
	[null, _s, null]
]);

recipes.addShapedMirrored("MC_Torch_Wax", _t*4, [
	[null, <forestry:beeswax>, null],
	[null, _c, _l],
	[null, _s, null]
]);

recipes.addShapedMirrored("MC_Torch_Canola", _t*4, [
	[null, <actuallyadditions:item_misc:13>, null],
	[null, _c, _l],
	[null, _s, null]
]);

//furnace
val _cc = <extrautils2:compressedcobblestone>;

recipes.remove(<minecraft:furnace>);
recipes.addShaped("MC_Furnace_Basic", <minecraft:furnace>, [
	[<minecraft:clay>, _cc, <minecraft:clay>],
	[_cc, null, _cc],
	[<minecraft:clay>, _cc, <minecraft:clay>]
]);
recipes.addShaped("MC_Furnace_Stone", <minecraft:furnace>, [
	[stone, stone, stone],
	[stone, clay, stone],
	[stone, stone, stone]
]);
recipes.addShaped("MC_Furnace_Dried", <minecraft:furnace>, [
	[<tconstruct:materials:2>, _cc, <tconstruct:materials:2>],
	[_cc, null, _cc],
	[<tconstruct:materials:2>, _cc, <tconstruct:materials:2>]
]);
recipes.addShaped("MC_Furnace_Brick", <minecraft:furnace>, [
	[brick, _cc,  brick],
	[_cc, null, _cc],
	[brick, _cc, brick]
]);
recipes.addShaped("MC_Furnace_Ash", <minecraft:furnace>, [
	[null, stone, null],
	[stone, <forestry:ash_brick>, stone],
	[null, stone, null]
]);

//grindstone
recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped("AE2_Grindstone", <appliedenergistics2:grindstone>, [
	[stone, <ore:gearStone>, stone],
	[<minecraft:flint>, <tconstruct:wooden_hopper>, <minecraft:flint>],
	[cobblestone, <minecraft:flint>, cobblestone]
]);
<appliedenergistics2:grindstone>.displayName = "Flint Grindstone";

//change ore process
PlatePresser.clear();
PlatePresser.addRecipe(<thermalfoundation:material:32>*4, <minecraft:iron_block>);
PlatePresser.addRecipe(<thermalfoundation:material:33>*4, <minecraft:gold_block>);
PlatePresser.addRecipe(<thermalfoundation:material:320>*4, <thermalfoundation:storage>);
PlatePresser.addRecipe(<thermalfoundation:material:321>*4, <thermalfoundation:storage:1>);
PlatePresser.addRecipe(<thermalfoundation:material:322>*4, <thermalfoundation:storage:2>);
PlatePresser.addRecipe(<thermalfoundation:material:323>*4, <thermalfoundation:storage:3>);
PlatePresser.addRecipe(<thermalfoundation:material:324>*4, <thermalfoundation:storage:4>);
PlatePresser.addRecipe(<thermalfoundation:material:325>*4, <thermalfoundation:storage:5>);
PlatePresser.addRecipe(<thermalfoundation:material:352>*4, <thermalfoundation:storage_alloy>);
PlatePresser.addRecipe(<thermalfoundation:material:353>*4, <thermalfoundation:storage_alloy:1>);
PlatePresser.addRecipe(<thermalfoundation:material:354>*4, <thermalfoundation:storage_alloy:2>);
PlatePresser.addRecipe(<thermalfoundation:material:355>*4, <thermalfoundation:storage_alloy:3>);
PlatePresser.addRecipe(<thermalfoundation:material:356>*4, <thermalfoundation:storage_alloy:4>);

//glass
furnace.remove(<minecraft:glass>);

//bucket
recipes.remove(<minecraft:bucket>);
recipes.addShapedMirrored("MC_Bucket_Ingot", <minecraft:bucket>, [
	[null, null, null],
	[iron, <ore:artisansHammer>.transformDamage(), iron],
	[null, iron, null]
]);
recipes.addShapedMirrored("MC_Bucket_Plate", <minecraft:bucket>, [
	[null, null, null],
	[<ore:plateIron>, null, <ore:plateIron>],
	[null, <ore:plateIron>, null]
]);
recipes.removeShaped(<ore:plateIron>, [
	[iron, iron, iron],
	[null, null, null],
	[null, null, null]
]);

//smeltery
val _sb = <tconstruct:materials>;

recipes.remove(<tcomplement:melter>);
recipes.remove(<tcomplement:melter:8>);
recipes.remove(<tcomplement:alloy_tank>);
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.addShaped("TCon_SearedFurnace", <tconstruct:seared_furnace_controller>, [
	[brick, _sb, brick],
	[_sb, <minecraft:furnace>, _sb],
	[brick, _sb, brick]
]);
recipes.remove(<tconstruct:tinker_tank_controller>);
recipes.addShaped("TCon_TinkerTankController", <tconstruct:tinker_tank_controller>, [
	[brick, _sb, brick],
	[_sb, <minecraft:bucket>, _sb],
	[brick, _sb, brick]
]);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped("TCon_SmelteryController", <tconstruct:smeltery_controller>, [
	[_sb, _sb, _sb],
	[_sb, <minecraft:furnace>, _sb],
	[_sb, _sb, _sb]
]);
recipes.remove(<tconstruct:seared_tank>);
recipes.addShaped("TCon_SearedTank", <tconstruct:seared_tank>, [
	[_sb, _sb, _sb],
	[_sb, <minecraft:bucket>, _sb],
	[_sb, _sb, _sb]
]);

//high oven
val _sc = <tcomplement:materials:1>;
recipes.remove(<tcomplement:high_oven_controller>);
recipes.addShaped("TCon_HighOven", <tcomplement:high_oven_controller>, [
	[_sc, _sc, _sc],
	[_sc, <tconstruct:smeltery_controller>, _sc],
	[_sc, _sc, _sc]
]);

//steel
var manager = HighOven.manageMixRecipe(<liquid:steel>, <liquid:iron>);

Alloy.removeRecipe(<liquid:steel>);
HighOven.removeFuel(<minecraft:coal:1>);
HighOven.addFuel(<minecraft:coal:1>, 5, 1);
HighOven.removeFuel(<forestry:charcoal>);
HighOven.addFuel(<forestry:charcoal>, 45, 1);
HighOven.removeFuel(<ic2:coke>);
HighOven.addFuel(<ic2:coke>, 10, 1);
HighOven.removeFuel(<thermalfoundation:storage_resource:1>);
HighOven.addFuel(<thermalfoundation:storage_resource:1>, 90, 1);
manager.removeReducer(<minecraft:redstone>);
manager.removeReducer(<thermalfoundation:material:68>);
manager.removeReducer(<nuclearcraft:dust:11>);
manager.addReducer(<integrateddynamics:crystalized_menril_chunk>, 60);

//small plate press
recipes.remove(<advancedrocketry:platepress>);
recipes.addShaped("AR_SmallPlatePress", <advancedrocketry:platepress>, [
	[null, <ore:blockSteel>, null],
	[null, <minecraft:piston>, null],
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

//cast removal for balance
Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
Casting.removeTableRecipe(<tcomplement:cast>);

//basic worktable
PlatePresser.addRecipe(<thermalfoundation:material:355>*4, <thermalfoundation:storage_alloy:3>);
recipes.addShapedMirrored("AW_BasicToolbox", <artisanworktables:toolbox>, [
	[null, <ore:plateBronze>, null],
	[null, <minecraft:chest>, null],
	[null, null, null]
]);
recipes.addShaped("AW_BasicWorktable", <artisanworktables:worktable:5>, [
	[<minecraft:planks>, <minecraft:planks:1>, <minecraft:planks:2>],
	[<tconstruct:seared_tank>, <forestry:worktable>, <artisanworktables:toolbox>],
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);