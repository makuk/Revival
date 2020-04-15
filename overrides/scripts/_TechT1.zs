##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.actuallyadditions.AtomicReconstructor;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge;
import mods.nuclearcraft.alloy_furnace;
import mods.nuclearcraft.manufactory;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
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
val solderer = <ore:artisansSolderer>;
val pencil = <ore:artisansPencil>;

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
		[<thermalfoundation:material:22>, <ore:plankWood>, <thermalfoundation:material:22>],
		[<ore:plankWood>, <ore:logWood>, <ore:plankWood>]
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
	.addOutput(wire*2)
	.addTool(cutter, 1)
	.create();
recipes.remove(<magneticraft:copper_coil>);
RecipeBuilder.get("basic")
	.setName("MG_Coil")
	.setShaped([
		[wire, wire, wire],
		[wire, <ore:ingotSteel>, wire],
		[wire, wire, wire]
	])
	.addOutput(<magneticraft:copper_coil>.withTag({}))
	.create();
recipes.remove(motor);
RecipeBuilder.get("basic")
	.setName("MG_Motor")
	.setShaped([
		[plateSteel, plateSteel, null],
		[<magneticraft:copper_coil>, <minecraft:redstone>, <minecraft:iron_ingot>],
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
	.addOutput(<magneticraft:conveyor_belt>*6)
	.addTool(hammer, 1)
	.create();
	
//brick furnace
recipes.remove(<magneticraft:brick_furnace>);
RecipeBuilder.get("potter")
	.setName("MG_BrickFurnace")
	.setShaped([
		[<ore:plateCopper>, <minecraft:brick>, <ore:plateCopper>],
		[<minecraft:brick>, <minecraft:furnace>, <minecraft:brick>],
		[<ore:plateCopper>, <minecraft:brick>, <ore:plateCopper>]
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
		[<ore:ingotSteel>, <ore:plateConstantan>, <ore:ingotSteel>],
		[<ore:plateInvar>, <magneticraft:brick_furnace>, <ore:plateInvar>],
		[<ore:ingotSteel>, <ore:plateConstantan>, <ore:ingotSteel>]
	])
	.addOutput(<magneticraft:thermopile>)
	.addTool(spanner, 1)
	.create();
	
//electric furnace
recipes.remove(<magneticraft:electric_furnace>);
RecipeBuilder.get("engineer")
	.setName("MG_ElectricFurnace")
	.setShaped([
		[null, null, null],
		[<magneticraft:copper_coil>, <magneticraft:brick_furnace>, <magneticraft:copper_coil>],
		[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]
	])
	.setMirrored()
	.addOutput(<magneticraft:electric_furnace>)
	.addTool(driver, 1)
	.create();

//clockwork engine
recipes.remove(<forestry:engine_clockwork>);
RecipeBuilder.get("engineer")
	.setName("FR_EngineClockwork")
	.setShaped([
		[<contenttweaker:wooden_plate>, <contenttweaker:wooden_plate>, <contenttweaker:wooden_plate>],
		[<ore:plateGold>, <ore:blockGlass>, <ore:plateGold>],
		[<ore:gearCopper>, <minecraft:piston>, <magneticraft:thermopile>]
	])
	.addOutput(<forestry:engine_clockwork>)
	.addTool(spanner, 1)
	.create();
	
//manual mill
recipes.remove(<minecraft:redstone_torch>);
recipes.addShapedMirrored("MC_RedstoneTorch", <minecraft:redstone_torch>, [
	[null, <minecraft:redstone>, null],
	[null, <contenttweaker:reinforced_stick>, null],
	[null, null, null]
]);
recipes.remove(<extrautils2:ingredients:1>);
RecipeBuilder.get("blacksmith")
	.setName("ExU_GearRedstone")
	.setShaped([
		[<minecraft:redstone_torch>, <minecraft:redstone_block>, <minecraft:redstone_torch>],
		[<minecraft:redstone_block>, <thermalfoundation:material:22>, <minecraft:redstone_block>],
		[<minecraft:redstone_torch>, <minecraft:redstone_block>, <minecraft:redstone_torch>]
	])
	.addOutput(<extrautils2:ingredients:1>)
	.addTool(hammer, 1)
	.create();
recipes.remove(<extrautils2:passivegenerator:7>);
RecipeBuilder.get("engineer")
	.setName("ExU_MillManual")
	.setShaped([
		[null, null, null],
		[null, <extrautils2:ingredients:1>, null],
		[<extrautils2:decorativesolid:2>, <extrautils2:ingredients>, <extrautils2:decorativesolid:2>]
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
		[<minecraft:redstone>, <extrautils2:ingredients>, <minecraft:redstone>],
		[<ore:plateSteel>, motor, <ore:plateSteel>],
		[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>]
	])
	.addOutput(<extrautils2:resonator>)
	.addTool(driver, 1)
	.create();
	
//sturdy casing
recipes.remove(<forestry:sturdy_machine>);
RecipeBuilder.get("engineer")
	.setName("FR_CasingSturdy")
	.setShaped([
		[<ore:plateBronze>, <ore:gearBronze>, <ore:plateBronze>],
		[<ore:gearBronze>, motor, <ore:gearBronze>],
		[<ore:plateBronze>, <ore:gearBronze>, <ore:plateBronze>]
	])
	.addOutput(<forestry:sturdy_machine>)
	.addTool(driver, 1)
	.create();
	
//carpenter
recipes.remove(<forestry:carpenter>);
RecipeBuilder.get("engineer")
	.setName("FR_Carpenter")
	.setShaped([
		[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>],
		[<ore:plateBronze>, <forestry:sturdy_machine>, <ore:plateBronze>],
		[<ore:plateBronze>, <ore:blockGlass>, <ore:plateBronze>]
	])
	.addOutput(<forestry:carpenter>)
	.addTool(driver, 1)
	.create();

//machine casing
recipes.remove(casing);
casing.displayName = "Machine Casing";
Carpenter.addRecipe(casing, [
	[plateSteel, <extrautils2:decorativesolid:3>, plateSteel],
	[motor, <actuallyadditions:item_misc:5>, motor],
	[plateSteel, <extrautils2:decorativesolid:3>, plateSteel]
], 30);

//atomic reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
RecipeBuilder.get("engineer")
	.setName("AA_AtomicReconstructor")
	.setShaped([
		[<ore:ingotSteel>, <minecraft:redstone>, <ore:ingotSteel>],
		[<minecraft:redstone>, casing, <minecraft:redstone>],
		[<ore:ingotSteel>, <minecraft:redstone>, <ore:ingotSteel>]
	])
	.addOutput(<actuallyadditions:block_atomic_reconstructor>)
	.addTool(driver, 1)
	.create();
	
//atomic reconstructor recipes
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:1>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:2>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:3>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:4>);
AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:5>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:1>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:2>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:3>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:4>);
AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:5>);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal>, <deepmoblearning:soot_covered_redstone>, 10000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <minecraft:dye:4>, 10000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <extrautils2:ingredients:4>, 10000);
AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:5>, <thermalfoundation:material:160>, 10000);
	
//fluxduct
recipes.remove(<thermaldynamics:duct_0>);
RecipeBuilder.get("engineer")
	.setName("TE_DuctEnergyT1")
	.setShaped([
		[<actuallyadditions:item_crystal>, <actuallyadditions:item_crystal>, <actuallyadditions:item_crystal>],
		[<ore:plateLead>, <ore:blockGlass>, <ore:plateLead>],
		[<actuallyadditions:item_crystal>, <actuallyadditions:item_crystal>, <actuallyadditions:item_crystal>]
	])
	.addOutput(<thermaldynamics:duct_0>*6)
	.create();
	
//basic coil
recipes.remove(coil);
Carpenter.addRecipe(coil, [
	[<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal>, <actuallyadditions:item_crystal:5>],
	[<actuallyadditions:item_misc:5>, <magneticraft:copper_coil>, <actuallyadditions:item_misc:5>],
	[<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal>, <actuallyadditions:item_crystal:5>]
], 30);

//furnace generator
recipes.remove(<extrautils2:machine>);
RecipeBuilder.get("engineer")
	.setName("ExU_MachineBlock")
	.setShaped([
		[plateSteel, <ore:plateInvar>, plateSteel],
		[coil, motor, coil],
		[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]
	])
	.addOutput(<extrautils2:machine>)
	.addTool(driver, 1)
	.create();
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}));
/*RecipeBuilder.get("engineer")
	.setName("ExU_GeneratorFurnace")
	.setShaped([
		[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
		[<ore:ingotSteel>, <extrautils2:machine>, <ore:ingotSteel>],
		[<minecraft:redstone>, <magneticraft:thermopile>, <minecraft:redstone>]
	])
	.addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}))
	.addTool(spanner, 1)
	.create();*/
	
RecipeBuilder.get("engineer")
	.setName("ExU_GeneratorSurvival")
	.setShaped([
		[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
		[<ore:ingotSteel>, <extrautils2:machine>, <ore:ingotSteel>],
		[<minecraft:redstone>, <magneticraft:thermopile>, <minecraft:redstone>]
	])
	.addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}))
	.addTool(spanner, 1)
	.create();
	
//crusher
recipes.remove(<actuallyadditions:block_grinder>);
RecipeBuilder.get("engineer")
	.setName("AA_Crusher")
	.setShaped([
		[<actuallyadditions:item_crystal>, <minecraft:flint>, <ore:bricksStone>],
		[coil, casing, coil],
		[<ore:bricksStone>, <minecraft:flint>, <actuallyadditions:item_crystal>]
	])
	.addOutput(<actuallyadditions:block_grinder>)
	.addTool(driver, 1)
	.create();
	
//sturdy casing(ez)
Carpenter.addRecipe(<forestry:sturdy_machine>, [
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
	[<ore:plateBronze>, motor, <ore:plateBronze>],
	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]
], 60);

//centrifuge
recipes.remove(<forestry:centrifuge>);
RecipeBuilder.get("engineer")
	.setName("FR_Centrifuge")
	.setShaped([
		[<ore:plateConstantan>, <ore:blockGlass>, <ore:plateConstantan>],
		[<ore:plateConstantan>, <forestry:sturdy_machine>, <ore:plateConstantan>],
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
	.addOutput(<contenttweaker:redstone_alloy_dust>*2)
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

//tree fluid extractor
recipes.remove(<industrialforegoing:tree_fluid_extractor>);
RecipeBuilder.get("engineer")
	.setName("IF_TreeFluidExtractor")
	.setShaped([
		[<extrautils2:decorativesolid:2>, <actuallyadditions:item_crystal>, <extrautils2:decorativesolid:2>],
		[<extrautils2:decorativesolid:2>, <minecraft:furnace>, <extrautils2:decorativesolid:2>],
		[<extrautils2:decorativesolid:2>, <thermalfoundation:material:24>, <extrautils2:decorativesolid:2>]
	])
	.addOutput(<industrialforegoing:tree_fluid_extractor>)
	.addTool(driver, 1)
	.create();

//conduit binder
recipes.remove(<enderio:item_material:22>);
RecipeBuilder.get("chemist")
	.setName("EIO_ConduitBinderComposite")
	.setShapeless([<ic2:misc_resource:4>, <appliedenergistics2:material:5>, <forestry:wood_pulp>, <buildinggadgets:constructionpaste>])
	.setFluid(<liquid:latex>*1000)
	.addOutput(<enderio:item_material:22>*6)
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
	
//project red plate
furnace.remove(<projectred-core:resource_item>);
RecipeBuilder.get("mason")
	.setName("PR_PlateBasic")
	.setShaped([
		[<buildinggadgets:constructionblock_dense>, <buildinggadgets:constructionblock_dense>, <buildinggadgets:constructionblock_dense>],
		[null, null, null],
		[null, null, null]
	])
	.setMirrored()
	.addOutput(<projectred-core:resource_item>*6)
	.addTool(file, 1)
	.create();

//project red stuff
recipes.remove(<projectred-core:resource_item:1>);
RecipeBuilder.get("engineer")
	.setName("PR_PlateConductive")
	.setShaped([
		[null, <projectred-transmission:wire>, null],
		[null, <projectred-core:resource_item>, null],
		[null, null, null]
	])
	.setMirrored()
	.addOutput(<projectred-core:resource_item:1>)
	.addTool(solderer, 1)
	.create();
	
recipes.remove(<projectred-core:resource_item:10>);
RecipeBuilder.get("engineer")
	.setName("PR_Anode")
	.setShaped([
		[null, <minecraft:redstone>, null],
		[null, <projectred-core:resource_item:1>, null],
		[null, null, null]
	])
	.setMirrored()
	.addOutput(<projectred-core:resource_item:10>)
	.addTool(solderer, 1)
	.create();

recipes.remove(<projectred-core:resource_item:11>);
RecipeBuilder.get("engineer")
	.setName("PR_Cathode")
	.setShaped([
		[null, <minecraft:redstone_torch>, null],
		[null, <projectred-core:resource_item:1>, null],
		[null, null, null]
	])
	.setMirrored()
	.addOutput(<projectred-core:resource_item:11>)
	.addTool(solderer, 1)
	.create();
	
recipes.remove(<minecraft:repeater>);
<minecraft:repeater>.displayName = "Redstone Diode";
RecipeBuilder.get("engineer")
	.setName("MC_RedstoneRepeater")
	.setShaped([
		[<projectred-core:resource_item:10>, <projectred-core:resource_item:11>, null],
		[null, null, null],
		[null, null, null]
	])
	.setMirrored()
	.addOutput(<minecraft:repeater>)
	.addTool(solderer, 1)
	.create();
	
//basic capacitor
recipes.remove(<enderio:item_basic_capacitor>);
RecipeBuilder.get("engineer")
	.setName("EIO_CapacitorT1")
	.setShaped([
		[null, <ore:plateAluminum>, null],
		[<projectred-core:resource_item:10>, <enderio:item_material:20>, <projectred-core:resource_item:11>],
		[null, <ore:plateAluminum>, null]
	])
	.addOutput(<enderio:item_basic_capacitor>)
	.addTool(solderer, 1)
	.create();
	
//redstone servo
recipes.remove(<thermalfoundation:material:512>);
RecipeBuilder.get("engineer")
	.setName("TE_RedstoneServo")
	.setShaped([
		[<minecraft:redstone>, <enderio:item_basic_capacitor>, <minecraft:redstone>],
		[null, <ore:plateSteel>, null],
		[<minecraft:redstone>, <enderio:item_basic_capacitor>, <minecraft:redstone>]
	])
	.addOutput(<thermalfoundation:material:512>)
	.addTool(solderer, 1)
	.create();
	
//advanced coil
recipes.remove(<nuclearcraft:part:4>);
RecipeBuilder.get("engineer")
	.setName("NC_SolenoidCopper")
	.setShaped([
		[<magneticraft:crafting:3>, <magneticraft:crafting:3>, <magneticraft:crafting:3>],
		[<magneticraft:crafting:3>, <enderio:item_alloy_ingot:4>, <magneticraft:crafting:3>],
		[<magneticraft:crafting:3>, <magneticraft:crafting:3>, <magneticraft:crafting:3>]
	])
	.addOutput(<nuclearcraft:part:4>)
	.addTool(solderer, 1)
	.create();

recipes.remove(<actuallyadditions:item_misc:8>);
RecipeBuilder.get("engineer")
	.setName("AA_CoilAdvanced")
	.setShaped([
		[null, <ore:plateElectrum>, null],
		[<nuclearcraft:part:4>, <actuallyadditions:item_misc:7>, <nuclearcraft:part:4>],
		[null, <ore:plateElectrum>, null]
	])
	.addOutput(<actuallyadditions:item_misc:8>)
	.addTool(solderer, 1)
	.create();
	
//manufactory
recipes.remove(<nuclearcraft:manufactory_idle>);
RecipeBuilder.get("engineer")
	.setName("NC_Manufactory")
	.setShaped([
		[<ore:plateLead>, <thermalfoundation:material:512>, <ore:plateLead>],
		[<minecraft:flint>, <minecraft:piston>, <minecraft:flint>],
		[<ore:plateLead>, <actuallyadditions:item_misc:8>, <ore:plateLead>]
	])
	.addOutput(<nuclearcraft:manufactory_idle>)
	.addTool(driver, 1)
	.create();
	
//manufactory recipes
manufactory.removeAllRecipes();
manufactory.addRecipe([<minecraft:redstone>, <actuallyadditions:item_crystal>, 0.2, 0.5, 0.0]);
manufactory.addRecipe([<minecraft:dye:4>, <actuallyadditions:item_crystal:1>, 0.2, 0.5, 0.0]);
manufactory.addRecipe([<minecraft:diamond>, <actuallyadditions:item_crystal:2>, 1.5, 2.0, 0.0]);
manufactory.addRecipe([<extrautils2:ingredients:4>, <actuallyadditions:item_crystal:3>, 0.2, 0.5, 0.0]);
manufactory.addRecipe([<minecraft:emerald>, <actuallyadditions:item_crystal:4>, 1.5, 2.0, 0.0]);
manufactory.addRecipe([<ore:ingotSteel>, <actuallyadditions:item_crystal:5>, 0.2, 0.5, 0.0]);
manufactory.addRecipe([<ore:plateCopper>, <magneticraft:crafting:3>*4, 0.5, 1.0, 0.0]);
manufactory.addRecipe([<contenttweaker:quartz_mix>, <appliedenergistics2:material:5>, 0.2, 0.5, 0.0]);

//graphite
furnace.remove(<nuclearcraft:ingot:8>);
Casting.removeTableRecipe(<nuclearcraft:ingot:8>);
Centrifuge.addRecipe([<nuclearcraft:dust:8>], <thermalfoundation:material:768>, 20);
Centrifuge.addRecipe([<nuclearcraft:dust:8>], <thermalfoundation:material:769>, 20);
manufactory.addRecipe([<nuclearcraft:dust:8>, <nuclearcraft:ingot:8>, 1.0, 1.0, 0.0]);

//alloy furnace
/*recipes.remove(<actuallyadditions:block_furnace_double>);
RecipeBuilder.get("engineer")
	.setName("AA_PoweredFurnace")
	.setShaped([
		[<actuallyadditions:item_crystal:5>, coil, <actuallyadditions:item_crystal:5>],
		[<minecraft:furnace>, <actuallyadditions:block_misc:9>, <minecraft:furnace>],
		[<actuallyadditions:item_crystal:5>, coil, <actuallyadditions:item_crystal:5>]
	])
	.addOutput(<actuallyadditions:block_furnace_double>)
	.addTool(driver, 1)
	.create();*/
recipes.remove(<nuclearcraft:alloy_furnace_idle>);
RecipeBuilder.get("engineer")
	.setName("NC_AlloyFurnace")
	.setShaped([
		[<ore:plateLead>, <thermalfoundation:material:512>, <ore:plateLead>],
		[<nuclearcraft:ingot:8>, <magneticraft:brick_furnace>, <nuclearcraft:ingot:8>],
		[<ore:plateLead>, <actuallyadditions:item_misc:8>, <ore:plateLead>]
	])
	.addOutput(<nuclearcraft:alloy_furnace_idle>)
	.addTool(driver, 1)
	.create();