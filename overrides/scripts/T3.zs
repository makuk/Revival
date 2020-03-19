##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge;
import mods.nuclearcraft.alloy_furnace;
import mods.nuclearcraft.manufactory;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

##vars
val capacitor = <enderio:item_basic_capacitor>;
val coil = <actuallyadditions:item_misc:8>;
val servo = <thermalfoundation:material:512>;
val fluxduct = <thermaldynamics:duct_0>;
val plating = <nuclearcraft:part>;
val blueprint = <artisanworktables:design_pattern>;
val frame = <thermalexpansion:frame>;
val coilG = <thermalfoundation:material:513>;
val coilS = <thermalfoundation:material:514>;
val coilE = <thermalfoundation:material:515>;

val saw = <ore:artisansHandsaw>;
val chisel = <ore:artisansChisel>;
val punch = <ore:artisansPunch>;
val file = <ore:artisansFile>;
val hammer = <ore:artisansHammer>;
val pliers = <ore:artisansPliers>;
val framing = <ore:artisansFramingHammer>;
val needle = <ore:artisansNeedle>;
val shears = <ore:artisansShears>;
val cutter = <ore:artisansCutters>;
val carver = <ore:artisansCarver>;
val spanner = <ore:artisansSpanner>;
val driver = <ore:artisansDriver>;
val beaker = <ore:artisansBeaker>;
val mortar = <ore:artisansMortar>;
val solderer = <ore:artisansSolderer>;
val pencil = <ore:artisansPencil>;

##recipes
/*
//artisan tables
val _wt = <artisanworktables:worktable:5>;

//basic plating
recipes.remove(plating);
alloy_furnace.addRecipe(<ore:plateLead>, <nuclearcraft:ingot:8>, plating);

//combustion chamber
recipes.remove(<magneticraft:combustion_chamber>);
RecipeBuilder.get("engineer")
	.setName("MG_CombustionChamber")
	.setShaped([
		[plating, <contenttweaker:red_metal>, plating],
		[<magneticraft:heat_pipe>, <magneticraft:brick_furnace>, <magneticraft:heat_pipe>],
		[plating, <contenttweaker:red_metal>, plating]
	])
	.addOutput(<magneticraft:combustion_chamber>)
	.addTool(spanner, 1)
	.create();
	
//gasification unit
recipes.remove(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}));
RecipeBuilder.get("engineer")
	.setName("TE_PortableTankT1")
	.setShaped([
		[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
		[<ore:blockGlass>, servo, <ore:blockGlass>],
		[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
	])
	.addOutput(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}))
	.create();
recipes.remove(<magneticraft:gasification_unit>);
RecipeBuilder.get("engineer")
	.setName("MG_GasificationUnit")
	.setShaped([
		[plating, plating, plating],
		[plating, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Level: 0 as byte}), plating],
		[plating, plating, plating]
	])
	.addOutput(<magneticraft:gasification_unit>)
	.addTool(driver, 1)
	.create();
	
//fermenter
recipes.remove(<forestry:fermenter>);
RecipeBuilder.get("engineer")
	.setName("FR_Fermenter")
	.setShaped([
		[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>],
		[<contenttweaker:red_metal>, <forestry:impregnated_casing>, <contenttweaker:red_metal>],
		[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>]
	])
	.addOutput(<forestry:fermenter>)
	.addTool(driver, 1)
	.create();
	
//still
recipes.remove(<forestry:still>);
RecipeBuilder.get("engineer")
	.setName("FR_Still")
	.setShaped([
		[plating, <ore:blockGlass>, plating],
		[<thermaldynamics:duct_16>, <forestry:sturdy_machine>, <thermaldynamics:duct_16>],
		[plating, <ore:blockGlass>, plating]
	])
	.addOutput(<forestry:still>)
	.addTool(driver, 1)
	.create();
	
//blueprint
blueprint.displayName = "Blank Blueprint";
RecipeBuilder.get("chemist")
	.setName("AW_Blueprint")
	.setShapeless([<minecraft:paper>, <actuallyadditions:item_crystal:1>])
	.setFluid(<liquid:bio.ethanol>*100)
	.addOutput(blueprint)
	.create();
Carpenter.addRecipe(<artisanworktables:worktable:12>, [
	[blueprint, blueprint, blueprint],
	[plating, <artisanworktables:worktable:5>, plating],
	[<ore:plateSteel>, <ore:blockGlass>, <ore:plateSteel>]
], 60, <liquid:wood_gas>*3000);

//grinder and sieve
recipes.remove(<magneticraft:grinder>);
RecipeBuilder.get("designer")
	.setName("MG_Grinder")
	.setShaped([
		[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
		[plating, blueprint, plating],
		[plating, <actuallyadditions:block_grinder_double>, plating]
	])
	.setFluid(<liquid:bio.ethanol>*1000)
	.addOutput(<magneticraft:grinder>)
	.addTool(pencil, 1)
	.create();
recipes.remove(<magneticraft:sieve>);
RecipeBuilder.get("designer")
	.setName("MG_Sieve")
	.setShaped([
		[<magneticraft:crafting:5>, <magneticraft:crafting:5>, <magneticraft:crafting:5>],
		[plating, blueprint, plating],
		[plating, <advancedrocketry:iquartzcrucible>, plating]
	])
	.setFluid(<liquid:bio.ethanol>*1000)
	.addOutput(<magneticraft:sieve>)
	.addTool(pencil, 1)
	.create();
	
//simple machine chassis
recipes.remove(<enderio:item_material>);
Carpenter.addRecipe(<enderio:item_material>, [
	[plating, <nuclearcraft:alloy:6>, plating],
	[servo, <actuallyadditions:block_misc:9>, servo],
	[plating, <nuclearcraft:alloy:6>, plating]
], 30, <liquid:wood_gas>*1000);

//simple alloy smelter
recipes.remove(<enderio:block_simple_alloy_smelter>);
RecipeBuilder.get("engineer")
	.setName("EIO_AlloySmelterSimple")
	.setShaped([
		[<nuclearcraft:alloy:6>, <nuclearcraft:alloy:6>, <nuclearcraft:alloy:6>],
		[<minecraft:furnace>, <enderio:item_material>, <minecraft:furnace>],
		[<ore:gearSteel>, <magneticraft:ingots:14>, <ore:gearSteel>]
	])
	.addOutput(<enderio:block_simple_alloy_smelter>)
	.addTool(driver, 1)
	.create();
	
//energetic alloy
recipes.remove(<nuclearcraft:compound:2>);
alloy_furnace.removeRecipeWithOutput(<enderio:item_alloy_ingot:1>);
alloy_furnace.removeRecipeWithOutput(<enderio:item_alloy_endergy_ingot:5>);
alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy:3>);

//machine frame
recipes.remove(frame);
Carpenter.addRecipe(frame, [
	[plating, <nuclearcraft:alloy:3>, plating],
	[servo, <actuallyadditions:block_misc:9>, servo],
	[plating, <nuclearcraft:alloy:3>, plating]
], 30, <liquid:wood_gas>*1000);

//coils
recipes.remove(coilG);
RecipeBuilder.get("engineer")
	.setName("TE_CoilGold")
	.setShaped([
		[null, <enderio:item_alloy_ingot:1>, coil],
		[<enderio:item_alloy_ingot:1>, servo, <enderio:item_alloy_ingot:1>],
		[coil, <enderio:item_alloy_ingot:1>, null]
	])
	.addOutput(coilG)
	.addTool(solderer, 1)
	.create();
recipes.remove(coilS);
RecipeBuilder.get("engineer")
	.setName("TE_CoilSilver")
	.setShaped([
		[null, <enderio:item_alloy_endergy_ingot:5>, coil],
		[<enderio:item_alloy_endergy_ingot:5>, servo, <enderio:item_alloy_endergy_ingot:5>],
		[coil, <enderio:item_alloy_endergy_ingot:5>, null]
	])
	.addOutput(coilS)
	.addTool(solderer, 1)
	.create();
recipes.remove(coilE);
RecipeBuilder.get("engineer")
	.setName("TE_CoilElectrum")
	.setShaped([
		[coilG, null, null],
		[null, <thermalfoundation:material:161>, null],
		[null, null, coilS]
	])
	.addOutput(coilE*2)
	.addTool(solderer, 1)
	.create();*/
