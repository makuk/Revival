##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachineSlot;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.forestry.Carpenter;
import mods.forestry.Centrifuge;
import mods.nuclearcraft.alloy_furnace;
import mods.nuclearcraft.manufactory;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.thermalexpansion.RedstoneFurnace;

##vars
val capacitor = <enderio:item_basic_capacitor>;
val coil = <actuallyadditions:item_misc:8>;
val servo = <thermalfoundation:material:512>;
val fluxduct = <thermaldynamics:duct_0>;
val plating = <nuclearcraft:part>;
val platingAdv = <nuclearcraft:part:1>;
val blueprint = <artisanworktables:design_pattern>;
val frame = <contenttweaker:machine_frame_basic>;
val coilG = <thermalfoundation:material:513>;
val coilS = <thermalfoundation:material:514>;
val coilE = <thermalfoundation:material:515>;
val metalRed = <contenttweaker:red_metal>;
val brick = <appliedenergistics2:sky_stone_brick>;
val gearEnergy = <enderio:item_material:12>;
val tungsten = <magneticraft:ingots:5>;
val alt = <magneticraft:crafting:1>;
val galv = <contenttweaker:galvanized_steel_ingot>;

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

RecipeBuilder.get("carpenter")
	.setName("AW_DesingerWorktable")
	.setShaped([
		[blueprint, blueprint, blueprint],
		[<contenttweaker:wooden_plate>, _wt, <contenttweaker:wooden_plate>],
		[plating, <ore:blockGlass>, plating]
	])
	.addOutput(<artisanworktables:worktable:12>)
	.addTool(framing, 1)
	.create();

//basic plating
recipes.remove(plating);

//heat pipe
recipes.remove(<magneticraft:heat_pipe>);
RecipeBuilder.get("engineer")
	.setName("MG_HeatPipe")
	.setShaped([
		[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
		[<nuclearcraft:ingot:8>, <nuclearcraft:ingot:8>, <nuclearcraft:ingot:8>],
		[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]
	])
	.addOutput(<magneticraft:heat_pipe>*3)
	.create();
recipes.remove(<magneticraft:insulated_heat_pipe>);
Casting.addBasinRecipe(<magneticraft:insulated_heat_pipe>, <magneticraft:heat_pipe>, <liquid:clay>, 144, true);

//combustion chamber
recipes.remove(<magneticraft:combustion_chamber>);
RecipeBuilder.get("engineer")
	.setName("MG_CombustionChamber")
	.setShaped([
		[plating, metalRed, plating],
		[<magneticraft:heat_pipe>, <magneticraft:brick_furnace>, <magneticraft:heat_pipe>],
		[plating, metalRed, plating]
	])
	.addOutput(<magneticraft:combustion_chamber>)
	.addTool(spanner, 1)
	.create();
	
//boiler
recipes.remove(<magneticraft:steam_boiler>);
RecipeBuilder.get("engineer")
	.setName("MG_Boiler")
	.setShaped([
		[<ore:ingotInvar>, plating, <ore:ingotInvar>],
		[<ore:ingotInvar>, metalRed, <ore:ingotInvar>],
		[<ore:ingotInvar>, plating, <ore:ingotInvar>]
	])
	.addOutput(<magneticraft:steam_boiler>)
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
	
//squeezer
recipes.remove(<forestry:squeezer>);
RecipeBuilder.get("engineer")
	.setName("FR_Squeezer")
	.setShaped([
		[<ore:plateInvar>, <ore:blockGlass>, <ore:plateInvar>],
		[<ore:plateInvar>, <forestry:sturdy_machine>, <ore:plateInvar>],
		[<ore:plateInvar>, <ore:blockGlass>, <ore:plateInvar>]
	])
	.addOutput(<forestry:squeezer>)
	.addTool(driver, 1)
	.create();
	
//fermenter
recipes.remove(<forestry:fermenter>);
RecipeBuilder.get("engineer")
	.setName("FR_Fermenter")
	.setShaped([
		[<ore:gearBronze>, <ore:blockGlass>, <ore:gearBronze>],
		[<ore:blockGlass>, <forestry:impregnated_casing>, <ore:blockGlass>],
		[<ore:gearBronze>, <ore:blockGlass>, <ore:gearBronze>]
	])
	.addOutput(<forestry:fermenter>)
	.addTool(driver, 1)
	.create();
	
//moistener
recipes.remove(<forestry:moistener>);
RecipeBuilder.get("engineer")
	.setName("FR_Moistener")
	.setShaped([
		[<ore:gearConstantan>, <ore:blockGlass>, <ore:gearConstantan>],
		[<ore:blockGlass>, <forestry:impregnated_casing>, <ore:blockGlass>],
		[<ore:gearConstantan>, <ore:blockGlass>, <ore:gearConstantan>]
	])
	.addOutput(<forestry:moistener>)
	.addTool(driver, 1)
	.create();
	
//still
recipes.remove(<forestry:still>);
RecipeBuilder.get("engineer")
	.setName("FR_Still")
	.setShaped([
		[plating, <ore:blockGlass>, plating],
		[<ore:blockGlass>, <forestry:sturdy_machine>, <ore:blockGlass>],
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

//grinder and sieve
recipes.remove(<magneticraft:grinder>);
RecipeBuilder.get("designer")
	.setName("MG_Grinder")
	.setShaped([
		[metalRed, <actuallyadditions:item_crystal:2>, metalRed],
		[plating, blueprint, plating],
		[metalRed, plating, metalRed]
	])
	.setFluid(<liquid:wood_gas>*1000)
	.addOutput(<magneticraft:grinder>)
	.addTool(pencil, 1)
	.create();
recipes.remove(<magneticraft:sieve>);
RecipeBuilder.get("designer")
	.setName("MG_Sieve")
	.setShaped([
		[metalRed, <magneticraft:crafting:5>, metalRed],
		[plating, blueprint, plating],
		[metalRed, plating, metalRed]
	])
	.setFluid(<liquid:wood_gas>*1000)
	.addOutput(<magneticraft:sieve>)
	.addTool(pencil, 1)
	.create();
	
//multiblock parts
recipes.remove(<magneticraft:multiblock_parts>);
RecipeBuilder.get("engineer")
	.setName("MG_MachineBlockBase")
	.setShaped([
		[plating, <ore:plateElectrum>, plating],
		[<ore:plateElectrum>, metalRed, <ore:plateElectrum>],
		[plating, <ore:plateElectrum>, plating]
	])
	.addOutput(<magneticraft:multiblock_parts>*4)
	.addTool(driver, 1)
	.create();
recipes.remove(<magneticraft:multiblock_parts:2>);
RecipeBuilder.get("engineer")
	.setName("MG_MachineBlockIronGrate")
	.setShapeless([<magneticraft:multiblock_parts>, <minecraft:iron_bars>])
	.addOutput(<magneticraft:multiblock_parts:2>)
	.addTool(driver, 1)
	.create();
recipes.remove(<magneticraft:multiblock_parts:3>);
RecipeBuilder.get("engineer")
	.setName("MG_MachineBlockStriped")
	.setShapeless([<magneticraft:multiblock_parts>, <ore:dyeYellow>, <ore:dyeBlack>])
	.addOutput(<magneticraft:multiblock_parts:3>)
	.addTool(driver, 1)
	.create();	
recipes.remove(<magneticraft:multiblock_parts:4>);
RecipeBuilder.get("engineer")
	.setName("MG_MachineBlockCopperCoil")
	.setShapeless([<magneticraft:multiblock_parts>, <magneticraft:copper_coil>])
	.addOutput(<magneticraft:multiblock_parts:4>)
	.addTool(driver, 1)
	.create();	
recipes.remove(<magneticraft:multiblock_parts:5>);
RecipeBuilder.get("engineer")
	.setName("MG_MachineBlockIronCorrugate")
	.setShapeless([<magneticraft:multiblock_parts>, <ore:plateIron>])
	.addOutput(<magneticraft:multiblock_parts:5>)
	.addTool(driver, 1)
	.create();	
recipes.remove(<magneticraft:multiblock_column>);
RecipeBuilder.get("engineer")
	.setName("MG_MachineBlockSupportColumn")
	.setShaped([
		[null, <ore:plateSteel>, null],
		[<ore:plateSteel>, <magneticraft:multiblock_parts>, <ore:plateSteel>],
		[null, <ore:plateSteel>, null]
	])
	.addOutput(<magneticraft:multiblock_column>)
	.addTool(driver, 1)
	.create();	
	
//simple machine chassis
recipes.remove(<nuclearcraft:part:8>);
RecipeBuilder.get("engineer")
	.setName("NC_Motor")
	.setShaped([
		[plating, plating, null],
		[<magneticraft:crafting:2>, metalRed, <minecraft:iron_ingot>],
		[plating, plating, null]
	])
	.addOutput(<nuclearcraft:part:8>)
	.addTool(driver, 1)
	.create();		
recipes.remove(<nuclearcraft:part:7>);
RecipeBuilder.get("engineer")
	.setName("NC_Servo")
	.setShaped([
		[<nuclearcraft:alloy:6>, null, <nuclearcraft:alloy:6>],
		[servo, <nuclearcraft:part:8>, servo],
		[<contenttweaker:brass_ingot>, coil, <contenttweaker:brass_ingot>]
	])
	.addOutput(<nuclearcraft:part:7>)
	.addTool(driver, 1)
	.create();	
recipes.remove(<enderio:item_material:69>);
manufactory.addRecipe([<nuclearcraft:part:7>, <enderio:item_material:69>*2, 2.0, 2.0, 0.0]);
	
recipes.remove(<enderio:item_material>);
Carpenter.addRecipe(<enderio:item_material>, [
	[galv, <minecraft:iron_bars>, galv],
	[<minecraft:iron_bars>, <enderio:item_material:69>, <minecraft:iron_bars>],
	[galv, <minecraft:iron_bars>, galv]
], 60, <liquid:redstone>*5000);

//sky stone
furnace.remove(<appliedenergistics2:smooth_sky_stone_block>);
alloy_furnace.addRecipe([<extrautils2:decorativesolid:3>, <appliedenergistics2:material:45>, <appliedenergistics2:smooth_sky_stone_block>, 0.5, 2.0, 0.0]);

//bimetal gear
Casting.removeTableRecipe(<enderio:item_material:11>);
Casting.removeTableRecipe(<enderio:item_material:12>);

//simple machines
recipes.remove(<enderio:block_simple_furnace>);
RecipeBuilder.get("engineer")
	.setName("EIO_PoweredFurnaceSimple")
	.setShaped([
		[<thermalfoundation:material:162>, <minecraft:furnace>, <thermalfoundation:material:162>],
		[brick, <enderio:item_material>, brick],
		[<enderio:item_material:11>, <minecraft:bucket>, <enderio:item_material:11>]
	])
	.addOutput(<enderio:block_simple_furnace>)
	.addTool(driver, 1)
	.create();
	
recipes.remove(<enderio:block_simple_alloy_smelter>);
RecipeBuilder.get("engineer")
	.setName("EIO_AlloySmelterSimple")
	.setShaped([
		[<thermalfoundation:material:162>, <thermalfoundation:material:162>, <thermalfoundation:material:162>],
		[<minecraft:furnace>, <enderio:item_material>, <minecraft:furnace>],
		[<enderio:item_material:11>, <minecraft:bucket>, <enderio:item_material:11>]
	])
	.addOutput(<enderio:block_simple_alloy_smelter>)
	.addTool(driver, 1)
	.create();

recipes.remove(<enderio:block_simple_sag_mill>);
RecipeBuilder.get("engineer")
	.setName("EIO_SagMillSimple")
	.setShaped([
		[<actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>],
		[galv, <enderio:item_material>, galv],
		[<enderio:item_material:11>, <minecraft:piston>, <enderio:item_material:11>]
	])
	.addOutput(<enderio:block_simple_sag_mill>)
	.addTool(driver, 1)
	.create();
	
//alternator
recipes.remove(<magneticraft:crafting:4>);
recipes.remove(alt);
RecipeBuilder.get("engineer")
	.setName("MG_Alternator")
	.setShaped([
		[plating, plating, null],
		[<magneticraft:crafting:4>, <magneticraft:copper_coil>, <thermalfoundation:material:160>],
		[plating, plating, null]
	])
	.addOutput(alt)
	.addTool(spanner, 1)
	.create();
	
//simple stirling generator
recipes.remove(<enderio:block_simple_stirling_generator>);
RecipeBuilder.get("engineer")
	.setName("EIO_StirlingGeneratorSimple")
	.setShaped([
		[brick, <minecraft:furnace>, brick],
		[brick, <enderio:item_material>, brick],
		[<enderio:item_material:11>, alt, <enderio:item_material:11>]
	])
	.addOutput(<enderio:block_simple_stirling_generator>)
	.addTool(spanner, 1)
	.create();

//energetic alloy
recipes.remove(<nuclearcraft:compound:2>);
recipes.remove(<enderio:item_material:12>);

//micro capacitor
<enderio:item_capacitor_silver>.displayName = "Micro Capacitor";
recipes.remove(<enderio:item_capacitor_silver>);
RecipeBuilder.get("engineer")
	.setName("EIO_CapacitorT1Silver")
	.setShaped([
		[null, <ore:plateAluminum>, null],
		[<projectred-core:resource_item:10>, <enderio:block_infinity_fog>, <projectred-core:resource_item:11>],
		[null, <ore:plateAluminum>, null]
	])
	.addOutput(<enderio:item_capacitor_silver>)
	.addTool(solderer, 1)
	.create();

//tier 2 capacitor
recipes.remove(<enderio:item_basic_capacitor:1>);
RecipeBuilder.get("engineer")
	.setName("EIO_CapacitorT2")
	.setShaped([
		[null, <enderio:item_alloy_ingot:1>, null],
		[<enderio:item_basic_capacitor>, <nuclearcraft:alloy:3>, <enderio:item_basic_capacitor>],
		[null, <enderio:item_alloy_ingot:1>, null]
	])
	.addOutput(<enderio:item_basic_capacitor:1>)
	.setFluid(<liquid:lead>*576)
	.addTool(solderer, 1)
	.create();
recipes.remove(<enderio:item_capacitor_energetic_silver>);
RecipeBuilder.get("engineer")
	.setName("EIO_CapacitorT2Silver")
	.setShaped([
		[null, <enderio:item_alloy_endergy_ingot:5>, null],
		[<enderio:item_capacitor_silver>, <nuclearcraft:alloy:3>, <enderio:item_capacitor_silver>],
		[null, <enderio:item_alloy_endergy_ingot:5>, null]
	])
	.addOutput(<enderio:item_capacitor_energetic_silver>)
	.setFluid(<liquid:lead>*576)
	.addTool(solderer, 1)
	.create();

//machine frame
recipes.remove(frame);
Carpenter.addRecipe(frame, [
	[galv, <ore:blockGlassHardened>, galv],
	[<ore:blockGlassHardened>, <enderio:item_material:69>, <ore:blockGlassHardened>],
	[galv, <ore:blockGlassHardened>, galv]
], 60, <liquid:redstone>*5000);

//coils
recipes.remove(coilG);
RecipeBuilder.get("engineer")
	.setName("TE_CoilGold")
	.setShaped([
		[null, null, coil],
		[null, <enderio:item_basic_capacitor:1>, null],
		[coil, null, null]
	])
	.addOutput(coilG)
	.addTool(solderer, 1)
	.create();
recipes.remove(coilS);
RecipeBuilder.get("engineer")
	.setName("TE_CoilSilver")
	.setShaped([
		[null, null, coil],
		[null, <enderio:item_capacitor_energetic_silver>, null],
		[coil, null, null]
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
	.create();
	
//battery
recipes.remove(<magneticraft:battery_item_low>);
Carpenter.addRecipe(<magneticraft:battery_item_low>.withTag({}), [
	[<projectred-core:resource_item:10>, <contenttweaker:brass_ingot>, <projectred-core:resource_item:11>],
	[<thermalfoundation:material:324>, <nuclearcraft:dust:6>, <thermalfoundation:material:324>],
	[<thermalfoundation:material:324>, <nuclearcraft:dust:6>, <thermalfoundation:material:324>]
], 30, <liquid:redstone>*2000);

//battery box
recipes.remove(<magneticraft:battery>);
RecipeBuilder.get("engineer")
	.setName("MG_BatteryBox")
	.setShaped([
		[<magneticraft:battery_item_low>, <magneticraft:battery_item_low>, <magneticraft:battery_item_low>],
		[galv, <magneticraft:multiblock_parts:2>, galv],
		[galv, <thermalfoundation:material:352>, galv]
	])
	.addOutput(<magneticraft:battery>)
	.addTool(spanner, 1)
	.create();

//electric piston
recipes.remove(<magneticraft:electric_piston>);
RecipeBuilder.get("engineer")
	.setName("MG_Piston")
	.setShaped([
		[<minecraft:piston>, <enderio:item_alloy_ingot:1>, null],
		[<enderio:item_alloy_ingot:1>, <nuclearcraft:part:7>, <nuclearcraft:alloy:6>],
		[null, <nuclearcraft:alloy:6>, <magneticraft:battery_item_low>]
	])
	.addOutput(<magneticraft:electric_piston>)
	.addTool(driver, 1)
	.create();		
	
//saw blade
recipes.remove(<thermalfoundation:material:657>);
RecipeBuilder.get("blacksmith")
	.setName("TESawBlade")
	.setShaped([
		[<actuallyadditions:item_crystal:5>, tungsten, <actuallyadditions:item_crystal:5>],
		[tungsten, <actuallyadditions:item_crystal:3>, tungsten],
		[<actuallyadditions:item_crystal:5>, tungsten, <actuallyadditions:item_crystal:5>]
	])
	.addOutput(<thermalfoundation:material:657>)
	.addTool(hammer, 1)
	.create();
	
//diamond grinder
recipes.remove(<contenttweaker:diamond_grinder>);
RecipeBuilder.get("blacksmith")
	.setName("TEDiamondGrinder")
	.setShaped([
		[<actuallyadditions:item_crystal:2>, tungsten, <actuallyadditions:item_crystal:2>],
		[tungsten, <actuallyadditions:item_crystal:3>, tungsten],
		[<actuallyadditions:item_crystal:2>, tungsten, <actuallyadditions:item_crystal:2>]
	])
	.addOutput(<contenttweaker:diamond_grinder>)
	.addTool(hammer, 1)
	.create();
	
//redstone furnace
recipes.remove(<thermalexpansion:machine>);
RecipeBuilder.get("engineer")
	.setName("TE_RedstoneFurnaceBasic")
	.setShaped([
		[null, metalRed, null],
		[brick, frame, brick],
		[gearEnergy, coilG, gearEnergy]
	])
	.addOutput(<thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
	.addTool(driver, 1)
	.create();

//pulverizer
recipes.remove(<thermalexpansion:machine:1>);
RecipeBuilder.get("engineer")
	.setName("TE_PulverizerBasic")
	.setShaped([
		[null, <magneticraft:electric_piston>, null],
		[<contenttweaker:diamond_grinder>, frame, <contenttweaker:diamond_grinder>],
		[gearEnergy, coilG, gearEnergy]
	])
	.addOutput(<thermalexpansion:machine:1>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
	.addTool(driver, 1)
	.create();

//sawmill
recipes.remove(<thermalexpansion:machine:2>);
RecipeBuilder.get("engineer")
	.setName("TE_SawmillBasic")
	.setShaped([
		[null, <thermalfoundation:material:657>, null],
		[<contenttweaker:wooden_plate>, frame, <contenttweaker:wooden_plate>],
		[gearEnergy, coilG, gearEnergy]
	])
	.addOutput(<thermalexpansion:machine:2>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
	.addTool(driver, 1)
	.create();
	
//tungsten
RedstoneFurnace.addRecipe(tungsten, <magneticraft:dusts:5>, 4000);

//advanced plating
recipes.remove(<nuclearcraft:part:1>);

//hydraulic press
recipes.remove(<magneticraft:hydraulic_press>);
RecipeBuilder.get("designer")
	.setName("MG_Press")
	.setShaped([
		[metalRed, <magneticraft:electric_piston>, metalRed],
		[platingAdv, blueprint, platingAdv],
		[metalRed, platingAdv, metalRed]
	])
	.setFluid(<liquid:wood_gas>*1000)
	.addOutput(<magneticraft:hydraulic_press>)
	.addTool(pencil, 1)
	.create();

//compactor
recipes.remove(<thermalexpansion:machine:5>);
RecipeBuilder.get("engineer")
	.setName("TE_CompactorBasic")
	.setShaped([
		[null, <magneticraft:electric_piston>, null],
		[<magneticraft:light_plates:5>, frame, <magneticraft:light_plates:5>],
		[gearEnergy, coilG, gearEnergy]
	])
	.addOutput(<thermalexpansion:machine:5>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
	.addTool(driver, 1)
	.create();
	
//hsla steel
recipes.remove(<nuclearcraft:compound:9>);

//carbon
recipes.remove(<ic2:crafting:13>);
recipes.remove(<ic2:crafting:14>);
	
//mixer
val Mixer = IMachineRegistry.getMachine("mixer");
Mixer.addRecipe({"input1": <minecraft:redstone>, "input2": <minecraft:glowstone_dust>}, {"output": <nuclearcraft:compound:2>*2}, 4000, 50);
Mixer.addRecipe({"input1": <nuclearcraft:dust:8>, "input2": <nuclearcraft:dust:11>}, {"output": <nuclearcraft:compound:9>*2}, 4000, 50);

RecipeBuilder.get("engineer")
	.setName("ExU_Mixer")
	.setShaped([
		[tungsten, <nuclearcraft:part:8>, tungsten],
		[<ore:blockGlassHardened>, <extrautils2:machine>, <ore:blockGlassHardened>],
		[tungsten, <nuclearcraft:part:8>, tungsten]
	])
	.addOutput(<extrautils2:machine>.withTag({Type: "crafttweaker:mixer"}))
	.addTool(driver, 1)
	.create();
	
//machine case
recipes.remove(<teslacorelib:machine_case>);
RecipeBuilder.get("engineer")
	.setName("IF_MachineCase")
	.setShaped([
		[galv, <contenttweaker:wooden_plate>, galv],
		[<actuallyadditions:item_misc:8>, <nuclearcraft:part:8>, <actuallyadditions:item_misc:8>],
		[galv, <contenttweaker:wooden_plate>, galv]
	])
	.addOutput(<teslacorelib:machine_case>)
	.addTool(driver, 1)
	.create();
	
//latex processing unit
recipes.remove(<industrialforegoing:latex_processing_unit>);
RecipeBuilder.get("engineer")
	.setName("IF_LatexProcessingUnit")
	.setShaped([
		[tungsten, <minecraft:redstone>, tungsten],
		[<minecraft:furnace>, <teslacorelib:machine_case>, <minecraft:furnace>],
		[tungsten, gearEnergy, tungsten]
	])
	.addOutput(<industrialforegoing:latex_processing_unit>)
	.addTool(driver, 1)
	.create();

//induction smelter
recipes.remove(<thermalexpansion:machine:3>);
RecipeBuilder.get("engineer")
	.setName("TE_InductionSmelterBasic")
	.setShaped([
		[null, <nuclearcraft:alloy:15>, null],
		[<ic2:crafting:15>, frame, <ic2:crafting:15>],
		[gearEnergy, coilG, gearEnergy]
	])
	.addOutput(<thermalexpansion:machine:3>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
	.addTool(driver, 1)
	.create();

//fluid transposer
recipes.remove(<thermalexpansion:machine:8>);
RecipeBuilder.get("engineer")
	.setName("TE_FluidTransposerBasic")
	.setShaped([
		[null, <minecraft:bucket>, null],
		[<industrialforegoing:plastic>, frame, <industrialforegoing:plastic>],
		[gearEnergy, coilG, gearEnergy]
	])
	.addOutput(<thermalexpansion:machine:8>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
	.addTool(driver, 1)
	.create();

//magma crucible
recipes.remove(<thermalexpansion:machine:6>);
RecipeBuilder.get("engineer")
	.setName("TE_MagmaCrucibleBasic")
	.setShaped([
		[null, <ore:blockGlassHardened>, null],
		[<enderio:item_material:72>, frame, <enderio:item_material:72>],
		[gearEnergy, coilG, gearEnergy]
	])
	.addOutput(<thermalexpansion:machine:6>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}))
	.addTool(driver, 1)
	.create();

//pyrotheum
recipes.remove(<thermalfoundation:material:1024>);
RecipeBuilder.get("chemist")
	.setName("TE_Pyrotheum")
	.setShapeless([<thermalfoundation:material:1>, <ic2:dust:30>, <thermalfoundation:material:771>, <nuclearcraft:compound:2>])
	.setFluid(<liquid:pyrotheum>*1000)
	.addOutput(<thermalfoundation:material:1024>*2)
	.addTool(mortar, 1)
	.create();

//signalum
recipes.remove(<thermalfoundation:material:101>);