#priority 996

##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.enderio.AlloySmelter;
import mods.magneticraft.HydraulicPress;
import mods.nuclearcraft.alloy_furnace;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Transposer;
import mods.tconstruct.Alloy;

##vars
val hammer = <ore:artisansHammer>;

val IngotsT1 = [
	<minecraft:iron_ingot>,
	<minecraft:gold_ingot>,
	<thermalfoundation:material:128>,
	<thermalfoundation:material:129>,
	<thermalfoundation:material:130>,
	<thermalfoundation:material:131>,
	<thermalfoundation:material:132>,
	<thermalfoundation:material:133>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:161>,
	<thermalfoundation:material:162>,
	<thermalfoundation:material:163>,
	<thermalfoundation:material:164>
] as IItemStack[];

val PlatesT1 = [
	<thermalfoundation:material:32>,
	<thermalfoundation:material:33>,
	<thermalfoundation:material:320>,
	<thermalfoundation:material:321>,
	<thermalfoundation:material:322>,
	<thermalfoundation:material:323>,
	<thermalfoundation:material:324>,
	<thermalfoundation:material:325>,
	<thermalfoundation:material:352>,
	<thermalfoundation:material:353>,
	<thermalfoundation:material:354>,
	<thermalfoundation:material:355>,
	<thermalfoundation:material:356>
] as IItemStack[];

val GearsT1 = [
	<thermalfoundation:material:24>,
	<thermalfoundation:material:25>,
	<thermalfoundation:material:256>,
	<thermalfoundation:material:257>,
	<thermalfoundation:material:258>,
	<thermalfoundation:material:259>,
	<thermalfoundation:material:260>,
	<thermalfoundation:material:261>,
	<thermalfoundation:material:288>,
	<thermalfoundation:material:289>,
	<thermalfoundation:material:290>,
	<thermalfoundation:material:291>,
	<thermalfoundation:material:292>
] as IItemStack[];

function AddAlloyRecipe(output as IItemStack, input1 as IItemStack, input2 as IItemStack, energy as int, nctime as double, ncpower as double) {
	alloy_furnace.addRecipe([input1, input2, output, nctime, ncpower, 0.0]);
	AlloySmelter.addRecipe(output, [input1, input2], energy);
	//InductionSmelter.addRecipe(output, input1, input2, energy);
}

##recipes
for i, ingot in IngotsT1 {
	val plate = PlatesT1[i];
	val gear = GearsT1[i];
	RecipeBuilder.get("blacksmith")
		.setName("IngotToPlateT1"+i)
		.setShapeless([ingot, ingot])
		.addOutput(plate)
		.addTool(hammer, 1)
		.create();
	RecipeBuilder.get("blacksmith")
		.setName("PlateToGearT1"+i)
		.setShaped([
			[null, plate, null],
			[plate, <thermalfoundation:material:160>, plate],
			[null, plate, null]
		])
		.addOutput(gear)
		.addTool(hammer, 1)
		.create();
}

//reinforced stick
RecipeBuilder.get("carpenter")
	.setName("CT_WoodenPlate")
	.setShaped([
		[null, <ore:plankWood>, null],
		[null, <ore:plankWood>, null],
		[null, null, null]
	])
	.setMirrored()
	.addOutput(<contenttweaker:wooden_plate>)
	.addTool(<ore:artisansHandsaw>, 1)
	.create();
RecipeBuilder.get("carpenter")
	.setName("CT_ReinforcedStick")
	.setShaped([
		[null, <contenttweaker:wooden_plate>, null],
		[null, <contenttweaker:wooden_plate>, null],
		[null, null, null]
	])
	.setMirrored()
	.addOutput(<contenttweaker:reinforced_stick>*2)
	.addTool(<ore:artisansHandsaw>, 1)
	.create();
	
//glass
<ore:blockGlassColorless>.add(<tconstruct:clear_glass>);

#machines
//tcon alloy
Alloy.removeRecipe(<liquid:osmiridium>);
Alloy.removeRecipe(<liquid:alumite>);
Alloy.removeRecipe(<liquid:signalum>);
Alloy.removeRecipe(<liquid:lumium>);
Alloy.removeRecipe(<liquid:enderium>);
Alloy.removeRecipe(<liquid:tough>);
Alloy.removeRecipe(<liquid:hard_carbon>);
Alloy.removeRecipe(<liquid:obsidian>);
Alloy.removeRecipe(<liquid:manyullyn>);
Alloy.removeRecipe(<liquid:brass>);
Alloy.removeRecipe(<liquid:energetic_alloy>);
Alloy.removeRecipe(<liquid:vibrant_alloy>);
Alloy.removeRecipe(<liquid:pulsating_iron>);
Alloy.removeRecipe(<liquid:dark_steel>);
Alloy.removeRecipe(<liquid:energetic_silver>);
Alloy.removeRecipe(<liquid:vivid_alloy>);

Alloy.addRecipe(<liquid:brass>*4, [<liquid:copper>*3, <liquid:zinc>]);

//alloy furnace
alloy_furnace.removeAllRecipes();

//alloy smelter
AlloySmelter.removeRecipe(<tconstruct:ingots:2>);
AlloySmelter.removeRecipe(<thermalfoundation:material:160>);
AlloySmelter.removeRecipe(<thermalfoundation:material:161>);
AlloySmelter.removeRecipe(<thermalfoundation:material:162>);
AlloySmelter.removeRecipe(<thermalfoundation:material:163>);
AlloySmelter.removeRecipe(<thermalfoundation:material:164>);
AlloySmelter.removeRecipe(<thermalfoundation:material:165>);
AlloySmelter.removeRecipe(<thermalfoundation:material:166>);
AlloySmelter.removeRecipe(<thermalfoundation:material:167>);
AlloySmelter.removeRecipe(<enderio:item_material:39>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:1>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:2>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:3>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:4>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:6>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:10>);
AlloySmelter.removeRecipe(<nuclearcraft:alloy:11>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:1>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:2>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:3>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:4>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:5>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:6>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:7>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:8>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:9>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:1>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:2>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:3>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:4>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:5>);
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:6>);
AlloySmelter.removeRecipe(<enderio:block_fused_quartz>);

//induction smelter
InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:101>);

InductionSmelter.removeRecipe(<minecraft:soul_sand>, <minecraft:gold_ingot>);
InductionSmelter.removeRecipe(<minecraft:soul_sand>, <thermalfoundation:material:1>);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <minecraft:redstone>);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <minecraft:redstone>);
InductionSmelter.removeRecipe(<thermalfoundation:material:160>, <thermalfoundation:material:770>*4);
InductionSmelter.removeRecipe(<thermalfoundation:material:96>, <thermalfoundation:material:770>*4);
InductionSmelter.removeRecipe(<thermalfoundation:material:160>, <appliedenergistics2:material:5>);
InductionSmelter.removeRecipe(<thermalfoundation:material:96>, <appliedenergistics2:material:5>);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <minecraft:ender_pearl>);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <minecraft:ender_pearl>);
InductionSmelter.removeRecipe(<enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>);
InductionSmelter.removeRecipe(<tconstruct:ingots:1>, <tconstruct:ingots>);

InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:768>*4);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:769>*4);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:802>);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:768>*4);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:769>*4);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:802>);

InductionSmelter.removeRecipe(<minecraft:iron_ingot>*2, <thermalfoundation:material:133>);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>*2, <thermalfoundation:material:69>);
InductionSmelter.removeRecipe(<thermalfoundation:material>*2, <thermalfoundation:material:133>);
InductionSmelter.removeRecipe(<thermalfoundation:material>*2, <thermalfoundation:material:69>);

InductionSmelter.removeRecipe(<thermalfoundation:material:132>*3, <thermalfoundation:material:128>);
InductionSmelter.removeRecipe(<thermalfoundation:material:132>*3, <thermalfoundation:material:64>);
InductionSmelter.removeRecipe(<thermalfoundation:material:68>*3, <thermalfoundation:material:128>);
InductionSmelter.removeRecipe(<thermalfoundation:material:68>*3, <thermalfoundation:material:64>);

InductionSmelter.removeRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:133>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:69>);
InductionSmelter.removeRecipe(<thermalfoundation:material:64>, <thermalfoundation:material:133>);
InductionSmelter.removeRecipe(<thermalfoundation:material:64>, <thermalfoundation:material:69>);

InductionSmelter.removeRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:130>);
InductionSmelter.removeRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:66>);
InductionSmelter.removeRecipe(<thermalfoundation:material:1>, <thermalfoundation:material:130>);
InductionSmelter.removeRecipe(<thermalfoundation:material:1>, <thermalfoundation:material:66>);

InductionSmelter.removeRecipe(<thermalfoundation:material:128>*3, <thermalfoundation:material:129>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>*3, <thermalfoundation:material:65>);
InductionSmelter.removeRecipe(<thermalfoundation:material:64>*3, <thermalfoundation:material:129>);
InductionSmelter.removeRecipe(<thermalfoundation:material:64>*3, <thermalfoundation:material:65>);

InductionSmelter.removeRecipe(<thermalfoundation:material:128>*3, <magneticraft:ingots:14>);
InductionSmelter.removeRecipe(<thermalfoundation:material:128>*3, <magneticraft:dusts:14>);
InductionSmelter.removeRecipe(<thermalfoundation:material:64>*3, <magneticraft:ingots:14>);
InductionSmelter.removeRecipe(<thermalfoundation:material:64>*3, <magneticraft:dusts:14>);

//hydraulic press
HydraulicPress.removeRecipe(<magneticraft:ingots:2>, 2);
HydraulicPress.removeRecipe(<magneticraft:ingots:3>, 2);
HydraulicPress.removeRecipe(<magneticraft:ingots:6>, 2);

HydraulicPress.removeRecipe(<minecraft:iron_ingot>, 1);
HydraulicPress.removeRecipe(<minecraft:gold_ingot>, 1);
HydraulicPress.removeRecipe(<magneticraft:ingots:2>, 1);
HydraulicPress.removeRecipe(<magneticraft:ingots:3>, 1);
HydraulicPress.removeRecipe(<magneticraft:ingots:5>, 1);
HydraulicPress.removeRecipe(<magneticraft:ingots:6>, 1);

HydraulicPress.removeRecipe(<magneticraft:ingots:2>, 0);
HydraulicPress.removeRecipe(<magneticraft:ingots:3>, 0);
HydraulicPress.removeRecipe(<magneticraft:ingots:6>, 0);
HydraulicPress.removeRecipe(<magneticraft:ingots:7>, 0);
HydraulicPress.removeRecipe(<magneticraft:ingots:9>, 0);
HydraulicPress.removeRecipe(<magneticraft:ingots:10>, 0);
HydraulicPress.removeRecipe(<magneticraft:ingots:12>, 0);
HydraulicPress.removeRecipe(<magneticraft:ingots:13>, 0);

HydraulicPress.addRecipe(<thermalfoundation:material:128>*4, <magneticraft:heavy_plates:2>, 100.0, 2, false);
HydraulicPress.addRecipe(<thermalfoundation:material:131>*4, <magneticraft:heavy_plates:3>, 50.0, 2, false);
HydraulicPress.addRecipe(<thermalfoundation:material:160>*4, <magneticraft:heavy_plates:6>, 140.0, 2, false);

HydraulicPress.addRecipe(<minecraft:iron_ingot>*2, <magneticraft:light_plates>, 120.0, 1, false);
HydraulicPress.addRecipe(<minecraft:gold_ingot>*2, <magneticraft:light_plates:1>, 50.0, 1, false);
HydraulicPress.addRecipe(<thermalfoundation:material:128>*2, <magneticraft:light_plates:2>, 100.0, 1, false);
HydraulicPress.addRecipe(<thermalfoundation:material:131>*2, <magneticraft:light_plates:3>, 50.0, 1, false);
HydraulicPress.addRecipe(<magneticraft:ingots:5>*2, <magneticraft:light_plates:5>, 250.0, 1, false);
HydraulicPress.addRecipe(<thermalfoundation:material:160>*2, <magneticraft:light_plates:6>, 140.0, 1, false);

HydraulicPress.addRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:320>, 80.0, 0, false);
HydraulicPress.addRecipe(<thermalfoundation:material:129>, <thermalfoundation:material:321>, 80.0, 0, false);
HydraulicPress.addRecipe(<thermalfoundation:material:130>, <thermalfoundation:material:322>, 80.0, 0, false);
HydraulicPress.addRecipe(<thermalfoundation:material:131>, <thermalfoundation:material:323>, 80.0, 0, false);
HydraulicPress.addRecipe(<thermalfoundation:material:132>, <thermalfoundation:material:324>, 80.0, 0, false);
HydraulicPress.addRecipe(<thermalfoundation:material:133>, <thermalfoundation:material:325>, 80.0, 0, false);
HydraulicPress.addRecipe(<thermalfoundation:material:136>, <thermalfoundation:material:328>, 80.0, 0, false);
HydraulicPress.addRecipe(<thermalfoundation:material:160>, <thermalfoundation:material:352>, 80.0, 0, false);

//compactor
Compactor.removeStorageRecipe(<advancedrocketry:misc:1>);

Compactor.addStorageRecipe(<ic2:crafting:15>, <ic2:crafting:14>, 10000);
Compactor.addStorageRecipe(<industrialforegoing:plastic>, <industrialforegoing:dryrubber>, 4000);

for plank in <ore:plankWood>.items {
	Compactor.addStorageRecipe(<contenttweaker:wooden_plate>, plank, 5000);
}

//fluid transposer
Transposer.addFillRecipe(<ic2:crafting:13>, <nuclearcraft:dust:8>, <liquid:xpjuice>*100, 2000);

//magma crucible
val CrucibleInputArray = [
	<tconstruct:ore>,
	<tconstruct:ore:1>,
	<minecraft:iron_ore>,
	<minecraft:gold_ore>,
	<minecraft:emerald_ore>,
	<thermalfoundation:ore>,
	<thermalfoundation:ore:1>,
	<thermalfoundation:ore:2>,
	<thermalfoundation:ore:3>,
	<thermalfoundation:ore:4>,
	<thermalfoundation:ore:5>,
	<thermalfoundation:ore:6>,
	<thermalfoundation:ore:7>,
	<thermalfoundation:material:1024>,
	<thermalfoundation:material:1025>,
	<thermalfoundation:material:1026>,
	<thermalfoundation:material:1027>
] as IItemStack[];

for item in CrucibleInputArray {
	Crucible.removeRecipe(item);
}

Crucible.addRecipe(<liquid:pyrotheum>*250, <minecraft:blaze_powder>, 20000);

#oredict
//brass
<ore:ingotBrass>.remove(<thaumcraft:ingot:2>);
<ore:ingotBrass>.add(<contenttweaker:brass_ingot>);
<ore:dustBrass>.add(<contenttweaker:brass_dust>);

//galvanized steel
<ore:ingotGalvanizedSteel>.add(<contenttweaker:galvanized_steel_ingot>);
<ore:dustGalvanizedSteel>.add(<contenttweaker:galvanized_steel_dust>);

#alloys
AddAlloyRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, <nuclearcraft:ingot:8>, 12000, 1.0, 3.0);
AddAlloyRecipe(<thermalfoundation:material:161>*2, <minecraft:gold_ingot>, <thermalfoundation:material:130>, 12000, 1.0, 3.0);
AddAlloyRecipe(<thermalfoundation:material:162>*3, <minecraft:iron_ingot>*2, <thermalfoundation:material:133>, 12000, 1.0, 3.0);
AddAlloyRecipe(<thermalfoundation:material:163>*4, <thermalfoundation:material:128>*3, <thermalfoundation:material:129>, 12000, 1.0, 3.0);
AddAlloyRecipe(<thermalfoundation:material:164>*2, <thermalfoundation:material:128>, <thermalfoundation:material:133>, 12000, 1.0, 3.0);
AddAlloyRecipe(<nuclearcraft:alloy:6>*2, <thermalfoundation:material:160>, <nuclearcraft:ingot:5>, 12000, 1.0, 3.0);
AddAlloyRecipe( <contenttweaker:brass_ingot>*4, <thermalfoundation:material:128>*3, <magneticraft:ingots:14>, 12000, 1.0, 3.0);
AddAlloyRecipe(<contenttweaker:galvanized_steel_ingot>*2, <thermalfoundation:material:160>, <magneticraft:ingots:14>, 12000, 1.0, 3.0);
AddAlloyRecipe(<enderio:item_alloy_ingot:1>, <minecraft:gold_ingot>, <nuclearcraft:compound:2>*2, 24000, 1.5, 4.0);
AddAlloyRecipe(<enderio:item_alloy_ingot:3>, <appliedenergistics2:material:5>, <minecraft:redstone>, 12000, 1.0, 3.0);
AddAlloyRecipe(<enderio:item_alloy_ingot:4>, <minecraft:iron_ingot>, <minecraft:redstone>, 12000, 1.0, 3.0);
AddAlloyRecipe(<enderio:item_alloy_endergy_ingot:5>, <thermalfoundation:material:130>, <nuclearcraft:compound:2>*2, 24000, 1.5, 4.0);
AddAlloyRecipe(<nuclearcraft:alloy:1>*4, <nuclearcraft:alloy:6>*3, <magneticraft:ingots:5>, 30000, 1.5, 5.0);
AddAlloyRecipe(<nuclearcraft:alloy:3>*3, <nuclearcraft:ingot:7>, <nuclearcraft:ingot:5>*2, 12000, 1.0, 3.0);
AddAlloyRecipe(<nuclearcraft:alloy:15>, <contenttweaker:galvanized_steel_ingot>, <nuclearcraft:compound:9>*2, 24000, 1.5, 4.0);
AddAlloyRecipe(<contenttweaker:alugentum_ingot>*3, <thermalfoundation:material:132>*2, <thermalfoundation:material:130>, 12000, 1.0, 3.0);
AddAlloyRecipe(<ic2:crafting:14>, <ic2:crafting:13>*4, <industrialforegoing:dryrubber>, 12000, 1.0, 3.0);

AddAlloyRecipe(<nuclearcraft:part>, <thermalfoundation:material:323>, <nuclearcraft:ingot:8>, 12000, 1.0, 3.0);
AddAlloyRecipe(<nuclearcraft:part:1>, <nuclearcraft:part>, <nuclearcraft:alloy:1>, 24000, 1.5, 4.0);

AddAlloyRecipe(<contenttweaker:red_metal>*2, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:4>, 20000, 1.25, 4.0);
AddAlloyRecipe(<contenttweaker:orange_metal>*2, <thermalfoundation:material:165>, <tconstruct:ingots:1>, 40000, 2.0, 5.0);

AlloySmelter.addRecipe(<thermalfoundation:material:160>, [<minecraft:iron_ingot>, <nuclearcraft:dust:8>], 20000);
AlloySmelter.addRecipe(<magneticraft:crafting:4>, [<actuallyadditions:item_crystal>, <thermalfoundation:material:160>, <actuallyadditions:item_crystal:1>], 20000);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:1>, [<minecraft:gold_ingot>, <minecraft:redstone>, <minecraft:glowstone_dust>], 30000);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:5>, [<thermalfoundation:material:130>, <minecraft:redstone>, <minecraft:glowstone_dust>], 30000);
AlloySmelter.addRecipe(<plustic:alumiteingot>*2, [<contenttweaker:alugentum_ingot>*2, <nuclearcraft:ingot:6>, <thermalfoundation:material:770>*4], 36000);
AlloySmelter.addRecipe(<nuclearcraft:alloy:7>*2, [<enderio:item_alloy_ingot:1>, <contenttweaker:red_metal>, <enderio:item_alloy_endergy_ingot:5>], 40000);

AlloySmelter.addRecipe(<minecraft:glass>, [<minecraft:sand>], 1000);
AlloySmelter.addRecipe(<enderio:block_fused_glass>, [<ore:blockGlassColorless>], 2000);
AlloySmelter.addRecipe(<enderio:block_fused_glass>, [<ic2:dust:13>], 3000);
AlloySmelter.addRecipe(<enderio:block_fused_quartz>, [<enderio:block_fused_glass>, <contenttweaker:quartz_mix>], 5000);
AlloySmelter.addRecipe(<enderio:block_fused_quartz>, [<enderio:block_fused_glass>, <appliedenergistics2:material:2>*2], 5000);
AlloySmelter.addRecipe(<enderio:block_fused_quartz>, [<enderio:block_fused_glass>, <appliedenergistics2:material:3>*2], 5000);
AlloySmelter.addRecipe(<enderio:block_fused_quartz>, [<enderio:block_fused_glass>, <actuallyadditions:item_dust:7>*2], 5000);

#smelting
RedstoneFurnace.addRecipe(<nuclearcraft:ingot:8>, <nuclearcraft:dust:8>, 2000);

InductionSmelter.addRecipe(<thermalfoundation:material:165>, <thermalfoundation:material:1024>, <nuclearcraft:alloy:7>, 20000);
InductionSmelter.addRecipe(<thermalfoundation:material:165>, <thermalfoundation:material:1024>, <thermalfoundation:material:101>, 15000);
InductionSmelter.addRecipe(<tconstruct:ingots>, <thermalfoundation:material:1024>, <enderio:item_material:31>, 15000);
InductionSmelter.addRecipe(<tconstruct:ingots:1>, <thermalfoundation:material:1024>, <enderio:item_material:30>, 15000);
