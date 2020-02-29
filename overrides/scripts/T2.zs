##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge;
import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;

##vars
val plateSteel = <ore:plateSteel>;
val wire = <magneticraft:crafting:3>;
val motor = <magneticraft:crafting:2>;
val cable = <magneticraft:electric_cable>;
val casing = <actuallyadditions:block_misc:9>;
val coil = <actuallyadditions:item_misc:7>;

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

##recipes
//artisan tables
val _wt = <artisanworktables:worktable:5>;
RecipeBuilder.get("basic")
	.setName("AW_CarpenterWorktable")
	.setShaped([
		[<ore:plankWood>, <ore:logWood>, <ore:plankWood>],
		[<ore:plankWood>, _wt, <ore:plankWood>],
		[plateSteel, plateSteel, plateSteel]
	])
	.addOutput(<artisanworktables:worktable:1>)
	.addTool(saw, 1)
	.create();
RecipeBuilder.get("basic")
	.setName("AW_MasonWorktable")
	.setShaped([
		[<minecraft:brick_block>, <ore:bricksStone>, <minecraft:brick_block>],
		[<minecraft:brick_block>, _wt, <minecraft:brick_block>],
		[plateSteel, plateSteel, plateSteel]
	])
	.addOutput(<artisanworktables:worktable:2>)
	.addTool(file, 1)
	.create();
RecipeBuilder.get("basic")
	.setName("AW_BlacksmithWorktable")
	.setShaped([
		[<ore:plateIron>, <minecraft:iron_block>, <ore:plateIron>],
		[<ore:plateIron>, _wt, <ore:plateIron>],
		[plateSteel, plateSteel, plateSteel]
	])
	.addOutput(<artisanworktables:worktable:3>)
	.addTool(hammer, 1)
	.create();
RecipeBuilder.get("carpenter")
	.setName("AW_TailorWorktable")
	.setShaped([
		[<minecraft:wool:3>, <ore:plateGold>, <minecraft:wool:3>],
		[<minecraft:wool:10>, _wt, <minecraft:wool:10>],
		[<ore:plankWood>, <ore:logWood>, <ore:plankWood>]
	])
	.addOutput(<artisanworktables:worktable>)
	.addTool(needle, 1)
	.create();
RecipeBuilder.get("blacksmith")
	.setName("AW_EngineerWorktable")
	.setShaped([
		[<ore:plateIron>, <ore:plateBronze>, <ore:plateIron>],
		[<magneticraft:inserter>, <magneticraft:conveyor_belt>, <magneticraft:inserter>],
		[plateSteel, _wt, plateSteel]
	])
	.addOutput(<artisanworktables:worktable:6>)
	.addTool(hammer, 1)
	.create();
RecipeBuilder.get("mason")
	.setName("AW_PotterWorktable")
	.setShaped([
		[plateSteel, <minecraft:hardened_clay>, plateSteel],
		[<minecraft:hardened_clay>, _wt, <minecraft:hardened_clay>],
		[<minecraft:stone_slab>, <minecraft:brick_block>, <minecraft:stone_slab>]
	])
	.addOutput(<artisanworktables:worktable:14>)
	.addTool(carver, 1)
	.create();
RecipeBuilder.get("engineer")
	.setName("AW_ChemistWorktable")
	.setShaped([
		[<actuallyadditions:block_misc:2>, <ore:plateElectrum>, <actuallyadditions:block_misc:2>],
		[<ore:blockGlass>, _wt, <ore:blockGlass>],
		[plateSteel, <forestry:wood_pulp>, plateSteel]
	])
	.addOutput(<artisanworktables:worktable:9>)
	.addTool(hammer, 1)
	.create();
	
//crushing table
recipes.remove(<minecraft:stone_slab>);
RecipeBuilder.get("mason")
	.setName("MC_StoneSlab")
	.setShaped([
		[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
		[null, null, null],
		[null, null, null]
	])
	.setMirrored()
	.addOutput(<minecraft:stone_slab>*6)
	.addTool(file, 1)
	.create();
recipes.remove(<magneticraft:crushing_table>);
RecipeBuilder.get("basic")
	.setName("MG_CrushingTable")
	.setShaped([
		[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],
		[<ore:stickWood>, <ore:gearStone>, <ore:stickWood>],
		[<ore:plateSteel>, <ore:plankWood>, <ore:plateSteel>]
	])
	.addOutput(<magneticraft:crushing_table>)
	.addTool(framing, 1)
	.create();
recipes.remove(<magneticraft:stone_hammer>);
recipes.remove(<magneticraft:iron_hammer>);
recipes.remove(<magneticraft:steel_hammer>);
RecipeBuilder.get("blacksmith")
	.setName("MG_Hammer_Steel")
	.setShaped([
		[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
		[<ore:ingotSteel>, <ore:stickWood>, null],
		[null, <ore:stickWood>, null]
	])
	.addOutput(<magneticraft:steel_hammer>)
	.addTool(hammer, 1)
	.create();

//sluice box
recipes.remove(<magneticraft:crafting:6>);
RecipeBuilder.get("tailor")
	.setName("MG_Mesh_String")
	.setShaped([
		[<ore:string>, <ore:string>, <ore:string>],
		[<ore:string>, <ore:string>, <ore:string>],
		[<ore:string>, <ore:string>, <ore:string>]
	])
	.addOutput(<magneticraft:crafting:6>)
	.addTool(needle, 1)
	.create();
recipes.remove(<magneticraft:crafting:5>);
RecipeBuilder.get("tailor")
	.setName("MG_Mesh_Iron")
	.setShaped([
		[<ore:string>, <ore:plateIron>, <ore:string>],
		[<ore:plateIron>, <magneticraft:crafting:6>, <ore:plateIron>],
		[<ore:string>, <ore:plateIron>, <ore:string>]
	])
	.addOutput(<magneticraft:crafting:5>)
	.addTool(shears, 1)
	.create();
recipes.remove(<magneticraft:sluice_box>);
RecipeBuilder.get("basic")
	.setName("MG_SluiceBox")
	.setShaped([
		[<ore:plankWood>, <ore:stickWood>, null],
		[<magneticraft:crafting:5>, <ore:plankWood>, <ore:stickWood>],
		[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
	])
	.addOutput(<magneticraft:sluice_box>)
	.addTool(framing, 1)
	.create();

//motor
recipes.remove(wire);
RecipeBuilder.get("blacksmith")
	.setName("MG_WireCopper")
	.setShapeless([<ore:plateCopper>])
	.addOutput(wire)
	.addTool(cutter, 1)
	.create();
recipes.remove(<ic2:crafting:5>);
RecipeBuilder.get("basic")
	.setName("IC2_Coil")
	.setShaped([
		[wire, wire, wire],
		[wire, <ore:ingotSteel>, wire],
		[wire, wire, wire]
	])
	.addOutput(<ic2:crafting:5>)
	.create();
recipes.remove(motor);
RecipeBuilder.get("basic")
	.setName("MG_Motor")
	.setShaped([
		[plateSteel, plateSteel, null],
		[<ic2:crafting:5>, <minecraft:redstone>, <minecraft:iron_ingot>],
		[plateSteel, plateSteel, null]
	])
	.addOutput(motor)
	.addTool(hammer, 1)
	.create();

//inserter
recipes.remove(<magneticraft:inserter>);
RecipeBuilder.get("basic")
	.setName("MG_Inserter")
	.setShaped([
		[<ore:plateConstantan>, motor, null],
		[<ore:ingotSilver>, <ore:plateConstantan>, <ore:ingotSilver>],
		[plateSteel, plateSteel, plateSteel]
	])
	.addOutput(<magneticraft:inserter>)
	.addTool(hammer, 1)
	.create();
	
//conveyor belt
recipes.remove(<magneticraft:conveyor_belt>);
RecipeBuilder.get("basic")
	.setName("MG_Conveyor")
	.setShaped([
		[<minecraft:iron_ingot>, plateSteel, <minecraft:iron_ingot>],
		[<ore:ingotSteel>, motor, <ore:ingotSteel>],
		[<ore:ingotSteel>, null, <ore:ingotSteel>]
	])
	.addOutput(<magneticraft:conveyor_belt>*2)
	.addTool(hammer, 1)
	.create();
	
//brick furnace
recipes.remove(<magneticraft:brick_furnace>);
RecipeBuilder.get("potter")
	.setName("MG_BrickFurnace")
	.setShaped([
		[<ore:plateCopper>, <minecraft:brick_block>, <ore:plateCopper>],
		[<minecraft:brick_block>, <minecraft:furnace>, <minecraft:brick_block>],
		[<ore:plateCopper>, <minecraft:brick_block>, <ore:plateCopper>]
	])
	.addOutput(<magneticraft:brick_furnace>)
	.addTool(chisel, 1)
	.create();
	
//cable
for meta in 0 to 16 {
	val wool = <minecraft:wool>.definition.makeStack(meta);
	val carpet = <minecraft:carpet>.definition.makeStack(meta);
	recipes.remove(carpet);
	RecipeBuilder.get("tailor")
		.setName("MC_Carpet"+meta)
		.setShapeless([wool])
		.addOutput(carpet*3)
		.addTool(shears, 1)
		.create();
}
recipes.remove(cable);
RecipeBuilder.get("engineer")
	.setName("MG_CableCopper")
	.setShaped([
		[<minecraft:carpet:*>, <minecraft:carpet:*>, <minecraft:carpet:*>],
		[wire, wire, wire],
		[<minecraft:carpet:*>, <minecraft:carpet:*>, <minecraft:carpet:*>]
	])
	.addOutput(cable*6)
	.create();

//thermopile
recipes.remove(<magneticraft:thermopile>);
RecipeBuilder.get("engineer")
	.setName("MG_Thermopile")
	.setShaped([
		[plateSteel, cable, plateSteel],
		[<ore:plateInvar>, <magneticraft:brick_furnace>, <ore:plateConstantan>],
		[plateSteel, plateSteel, plateSteel]
	])
	.addOutput(<magneticraft:thermopile>)
	.addTool(spanner, 1)
	.create();
	
//electric furnace
recipes.remove(<magneticraft:electric_furnace>);
RecipeBuilder.get("engineer")
	.setName("MG_ElectricFurnace")
	.setShaped([
		[plateSteel, cable, plateSteel],
		[<ore:plateInvar>, <magneticraft:brick_furnace>, <ore:plateConstantan>],
		[plateSteel, plateSteel, plateSteel]
	])
	.addOutput(<magneticraft:electric_furnace>)
	.addTool(driver, 1)
	.create();
	
//clockwork engine
recipes.remove(<forestry:engine_clockwork>);
RecipeBuilder.get("engineer")
	.setName("FR_EngineClockwork")
	.setShaped([
		[null, cable, null],
		[<ore:plateGold>, <magneticraft:thermopile>, <ore:plateGold>],
		[<ore:gearCopper>, motor, <ore:gearCopper>]
	])
	.addOutput(<forestry:engine_clockwork>)
	.addTool(spanner, 1)
	.create();
	
//manual mill
recipes.remove(<extrautils2:passivegenerator:7>);
RecipeBuilder.get("engineer")
	.setName("ExU_MillManual")
	.setShaped([
		[null, null, null],
		[<extrautils2:ingredients>, <extrautils2:ingredients:1>, <extrautils2:ingredients>],
		[<extrautils2:decorativesolid:2>, <forestry:engine_clockwork>, <extrautils2:decorativesolid:2>]
	])
	.setMirrored()
	.addOutput(<extrautils2:passivegenerator:7>)
	.addTool(spanner, 1)
	.create();
	
//resonator
recipes.remove(<extrautils2:resonator>);
RecipeBuilder.get("engineer")
	.setName("ExU_Resonator")
	.setShaped([
		[<extrautils2:ingredients>, <actuallyadditions:item_dust:7>, <extrautils2:ingredients>],
		[<ore:plateSteel>, motor, <ore:plateSteel>],
		[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>]
	])
	.addOutput(<extrautils2:resonator>)
	.addTool(driver, 1)
	.create();
	
//carpenter
recipes.remove(<forestry:carpenter>);
RecipeBuilder.get("engineer")
	.setName("FR_Carpenter")
	.setShaped([
		[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>],
		[<ore:gearBronze>, motor, <ore:gearBronze>],
		[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>]
	])
	.addOutput(<forestry:carpenter>)
	.addTool(driver, 1)
	.create();
	
//machine casing
recipes.remove(casing);
casing.displayName = "Machine Casing";
Carpenter.addRecipe(casing, [
	[plateSteel, plateSteel, plateSteel],
	[motor, <actuallyadditions:item_misc:5>, motor],
	[plateSteel, plateSteel, plateSteel]
], 30, <liquid:redstone>*1000);

//atomic reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
RecipeBuilder.get("engineer")
	.setName("AA_AtomicReconstructor")
	.setShaped([
		[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
		[<extrautils2:decorativesolid:3>, casing, <extrautils2:ingredients>],
		[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]
	])
	.addOutput(<actuallyadditions:block_atomic_reconstructor>)
	.addTool(driver, 1)
	.create();
	
//basic coil
recipes.remove(coil);
Carpenter.addRecipe(coil, [
	[null, <actuallyadditions:item_crystal>, null],
	[<actuallyadditions:item_misc:5>, <ic2:crafting:5>, <actuallyadditions:item_misc:5>],
	[null, <actuallyadditions:item_crystal>, null]
], 30, <liquid:redstone>*400);

//furnace generator
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}));
RecipeBuilder.get("engineer")
	.setName("ExU_GeneratorFurnace")
	.setShaped([
		[plateSteel, <ore:plateInvar>, plateSteel],
		[coil, <magneticraft:thermopile>, coil],
		[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]
	])
	.addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}))
	.addTool(spanner, 1)
	.create();
	
//crusher
recipes.remove(<actuallyadditions:block_grinder>);
RecipeBuilder.get("engineer")
	.setName("AA_Crusher")
	.setShaped([
		[<actuallyadditions:item_crystal:5>, <ore:gearSteel>, <actuallyadditions:item_crystal:5>],
		[coil, casing, coil],
		[<actuallyadditions:item_crystal:5>, <ore:gearSteel>, <actuallyadditions:item_crystal:5>]
	])
	.addOutput(<actuallyadditions:block_grinder>)
	.addTool(driver, 1)
	.create();
	
//sturdy casing
recipes.remove(<forestry:sturdy_machine>);
Carpenter.addRecipe(<forestry:sturdy_machine>, [
	[<ore:plateBronze>, <ore:gearBronze>, <ore:plateBronze>],
	[<ore:gearBronze>, casing, <ore:gearBronze>],
	[<ore:plateBronze>, <ore:gearBronze>, <ore:plateBronze>]
], 60);

//centrifuge
recipes.remove(<forestry:centrifuge>);
RecipeBuilder.get("engineer")
	.setName("FR_Centrifuge")
	.setShaped([
		[<ore:plateConstantan>, <ore:blockGlass>, <ore:plateConstantan>],
		[<ore:gearConstantan>, <forestry:sturdy_machine>, <ore:gearConstantan>],
		[<ore:plateConstantan>, <ore:blockGlass>, <ore:plateConstantan>]
	])
	.addOutput(<forestry:centrifuge>)
	.addTool(driver, 1)
	.create();
	
//silicon
RecipeBuilder.get("chemist")
	.setName("RV_QuartzMix")
	.setShapeless([<ore:dustQuartz>, <ore:dustCertusQuartz>, <ore:dustQuartzBlack>])
	.setFluid(<liquid:water>*1000)
	.addOutput(<contenttweaker:quartz_mix>*3)
	.addTool(beaker, 1)
	.create();
furnace.remove(<ore:itemSilicon>);
Centrifuge.addRecipe([<appliedenergistics2:material:5> % 75], <contenttweaker:quartz_mix>, 10);

//redstone alloy
Alloy.removeRecipe(<liquid:redstone_alloy>);
RecipeBuilder.get("chemist")
	.setName("EIO_RedstoneAlloy")
	.setShaped([
		[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
		[<appliedenergistics2:material:5>, <appliedenergistics2:material:5>, <appliedenergistics2:material:5>],
		[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
	])
	.addOutput(<contenttweaker:redstone_alloy_dust>)
	.addTool(mortar, 1)
	.create();
furnace.addRecipe(<enderio:item_alloy_ingot:3>, <contenttweaker:redstone_alloy_dust>);
Melting.addRecipe(<liquid:redstone_alloy>*144, <contenttweaker:redstone_alloy_dust>);
	
//conductive iron
Alloy.removeRecipe(<liquid:conductive_iron>);
RecipeBuilder.get("chemist")
	.setName("EIO_ConductiveIron")
	.setShaped([
		[null, <actuallyadditions:item_crystal>, null],
		[<actuallyadditions:item_crystal>, <ore:dustIron>, <actuallyadditions:item_crystal>],
		[null, <actuallyadditions:item_crystal>, null]
	])
	.addOutput(<contenttweaker:conductive_iron_dust>)
	.addTool(mortar, 1)
	.create();
furnace.addRecipe(<enderio:item_alloy_ingot:4>, <contenttweaker:conductive_iron_dust>);
Melting.addRecipe(<liquid:conductive_iron>*144, <contenttweaker:conductive_iron_dust>);

//conduit binder
recipes.remove(<enderio:item_material:22>);
RecipeBuilder.get("chemist")
	.setName("EIO_ConduitBinderComposite")
	.setShapeless([<ic2:misc_resource:4>, <appliedenergistics2:material:5>, <forestry:wood_pulp>, <buildinggadgets:constructionpaste>])
	.addOutput(<enderio:item_material:22>*3)
	.addTool(mortar, 1)
	.create();
	
//energy conduit
recipes.remove(<enderio:item_power_conduit>);
RecipeBuilder.get("engineer")
	.setName("EIO_ConduitEnergyT1")
	.setShaped([
		[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
		[wire, <enderio:item_alloy_ingot:4>, wire],
		[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
	])
	.addOutput(<enderio:item_power_conduit>*3)
	.create();
	
//redstone conduit
recipes.remove(<projectred-transmission:wire>);
RecipeBuilder.get("blacksmith")
	.setName("PR_Wire")
	.setShapeless([<enderio:item_alloy_ingot:3>])
	.addOutput(<projectred-transmission:wire>)
	.addTool(cutter, 1)
	.create();
recipes.remove(<enderio:item_redstone_conduit>);
RecipeBuilder.get("engineer")
	.setName("EIO_ConduitRedstone")
	.setShaped([
		[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
		[<projectred-transmission:wire>, <projectred-transmission:wire>, <projectred-transmission:wire>],
		[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
	])
	.addOutput(<enderio:item_redstone_conduit>*3)
	.create();
