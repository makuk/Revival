##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.advancedrocketry.PlatePresser;
import mods.appliedenergistics2.Grinder;
import mods.jei.JEI;
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

//flint and steel
recipes.remove(<minecraft:flint_and_steel>);
<minecraft:flint_and_steel>.displayName = "Flint and Stick";
recipes.addShapeless("MC_FlintAndStick", <minecraft:flint_and_steel>, [
	stick, <minecraft:flint>
]);

//charcoal remove
furnace.remove(<minecraft:coal:1>);

//wooden gear
recipes.remove(<appliedenergistics2:material:40>);
JEI.hide(<appliedenergistics2:material:40>);
recipes.remove(<enderio:item_material:9>);
JEI.hide(<enderio:item_material:9>);
recipes.remove(<thermalfoundation:material:22>);
recipes.addShaped("TE_GearWood", <thermalfoundation:material:22>, [
	[stick, plank, stick],
	[plank, log, plank],
	[stick, plank, stick]
]);

//grindstone
recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped("AE2_Grindstone", <appliedenergistics2:grindstone>, [
	[stone, <thermalfoundation:material:22>, stone],
	[<minecraft:flint>, stone, <minecraft:flint>],
	[cobblestone, <minecraft:flint>, cobblestone]
]);
<appliedenergistics2:grindstone>.displayName = "Flint Grindstone";

//glass
furnace.remove(<minecraft:glass>);

//smeltery
recipes.remove(<tcomplement:melter>);
recipes.remove(<tcomplement:melter:8>);
recipes.remove(<tcomplement:alloy_tank>);
val _sb = <tconstruct:materials>;
recipes.remove(<tconstruct:seared_tank>);
recipes.addShaped("TCon_SearedTank", <tconstruct:seared_tank>, [
	[_sb, _sb, _sb],
	[_sb, <minecraft:bucket>, _sb],
	[_sb, _sb, _sb]
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
manager.removeReducer(<thermalfoundation:material:68>);
manager.removeReducer(<nuclearcraft:dust:11>);
manager.addReducer(<actuallyadditions:item_misc:5>, 50);
manager.addReducer(<extrautils2:ingredients>, 55);
manager.addReducer(<actuallyadditions:item_crystal>, 40);

//stone gear
recipes.remove(<enderio:item_material:10>);
recipes.remove(<thermalfoundation:material:23>);
recipes.addShaped("TE_GearStone", <thermalfoundation:material:23>, [
	[<ore:rodStone>, stone, <ore:rodStone>],
	[stone, <thermalfoundation:material:22>, stone],
	[<ore:rodStone>, stone, <ore:rodStone>]
]);

//piston
recipes.remove(<minecraft:piston>);
recipes.addShaped("MC_Piston", <minecraft:piston>, [
	[plank, plank, plank],
	[<ore:ingotSteel>, <thermalfoundation:material:23>, <ore:ingotSteel>],
	[<ore:ingotSteel>, <minecraft:redstone>, <ore:ingotSteel>]
]);

//small plate press
recipes.remove(<advancedrocketry:platepress>);
recipes.addShaped("AR_SmallPlatePress", <advancedrocketry:platepress>, [
	[null, null, null],
	[null, <minecraft:piston>, null],
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

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
for p in plank.items {
	PlatePresser.addRecipe(<contenttweaker:wooden_plate>, p);
}

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