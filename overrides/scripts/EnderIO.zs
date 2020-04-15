##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.artisanworktables.builder.RecipeBuilder;

##vars
val infinity = <enderio:item_material:20>;

##recipes
//infinity bimetal gear
recipes.remove(<enderio:item_material:11>);

RecipeBuilder.get("blacksmith")
	.setName("EIO_GearBimetalT1")
	.setShaped([
		[infinity, <contenttweaker:galvanized_steel_ingot>, infinity],
		[<contenttweaker:galvanized_steel_ingot>, <actuallyadditions:item_crystal:3>, <contenttweaker:galvanized_steel_ingot>],
		[infinity, <contenttweaker:galvanized_steel_ingot>, infinity]
	])
	.addOutput(<enderio:item_material:11>)
	.addTool(<ore:artisansHammer>, 1)
	.create();
	
RecipeBuilder.get("blacksmith")
	.setName("EIO_GearBimetalT2")
	.setShaped([
		[<enderio:item_alloy_endergy_nugget:5>, <enderio:item_alloy_nugget:1>, <enderio:item_alloy_endergy_nugget:5>],
		[<enderio:item_alloy_nugget:1>, <enderio:item_material:11>, <enderio:item_alloy_nugget:1>],
		[<enderio:item_alloy_endergy_nugget:5>, <enderio:item_alloy_nugget:1>, <enderio:item_alloy_endergy_nugget:5>]
	])
	.addOutput(<enderio:item_material:12>)
	.addTool(<ore:artisansHammer>, 1)
	.create();