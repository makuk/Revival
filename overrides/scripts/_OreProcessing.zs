#priority 998

##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.appliedenergistics2.Grinder as Grindstone;
import mods.enderio.SagMill;
import mods.extrautils2.Resonator;
import mods.magneticraft.CrushingTable;
import mods.magneticraft.Grinder as MGGrinder;
import mods.magneticraft.Sieve;
import mods.magneticraft.SluiceBox;
import mods.nuclearcraft.manufactory;
import mods.tcomplement.highoven.HighOven;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.thermalexpansion.Pulverizer;
import modtweaker.tconstruct.ITICMaterial;

##vars
val SmeltableArray = [
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
	<thermalfoundation:material:164>,	
	<astralsorcery:itemcraftingcomponent:1>,	
	<enderio:item_alloy_ingot:3>,
	<enderio:item_alloy_ingot:4>,
	<enderio:item_alloy_ingot:9>,
	<enderio:item_alloy_endergy_ingot>,	
	<magneticraft:ingots:14>,	
	<nuclearcraft:ingot:5>,
	<nuclearcraft:ingot:6>,
	<nuclearcraft:ingot:7>,
	<contenttweaker:brass_ingot>,
	<contenttweaker:galvanized_steel_ingot>
] as IItemStack[];

val SmeltableDustArray = [
	<thermalfoundation:material>,
	<thermalfoundation:material:1>,	
	<thermalfoundation:material:64>,
	<thermalfoundation:material:65>,
	<thermalfoundation:material:66>,
	<thermalfoundation:material:67>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:69>,	
	<thermalfoundation:material:96>,
	<thermalfoundation:material:97>,
	<thermalfoundation:material:98>,
	<thermalfoundation:material:99>,
	<thermalfoundation:material:100>,	
	<astralsorcery:itemcraftingcomponent:2>,	
	<contenttweaker:redstone_alloy_dust>,
	<contenttweaker:conductive_iron_dust>,
	<contenttweaker:iron_alloy_dust>,
	<contenttweaker:crude_steel_dust>,
	<magneticraft:dusts:14>,	
	<nuclearcraft:dust:5>,
	<nuclearcraft:dust:6>,
	<nuclearcraft:dust:7>,
	<contenttweaker:brass_dust>,
	<contenttweaker:galvanized_steel_dust>
] as IItemStack[];

val NotSmeltableArray = [
	<minecraft:glowstone>,
	<minecraft:bone>,
	<minecraft:prismarine_shard>,
	<minecraft:diamond>,
	<minecraft:dye:4>,
	<minecraft:emerald>,	
	<appliedenergistics2:material>,
	<actuallyadditions:item_misc:5>,
	<minecraft:quartz>,
	<appliedenergistics2:material:7>,
	<minecraft:ender_pearl>,
	<appliedenergistics2:sky_stone_block>,	
	<nuclearcraft:gem>,
	<nuclearcraft:gem:1>,
	<nuclearcraft:gem:2>,
	<nuclearcraft:gem:3>,
	<nuclearcraft:gem:4>,
	<nuclearcraft:gem:5>,	
	<minecraft:coal>,
	<minecraft:coal:1>,	
	<libvulpes:productgem>,
	<libvulpes:productingot:7>,	
	<thermalfoundation:material:134>,
	<thermalfoundation:material:135>,
	<thermalfoundation:material:136>,
	<thermalfoundation:material:165>,
	<thermalfoundation:material:166>,
	<thermalfoundation:material:167>,
	<redstonearsenal:material:32>,	
	<advancedrocketry:productingot>,
	<advancedrocketry:productingot:1>,	
	<tconstruct:ingots:1>,
	<tconstruct:ingots>,		
	<enderio:item_alloy_ingot>,
	<enderio:item_alloy_ingot:1>,
	<enderio:item_alloy_ingot:2>,
	<enderio:item_alloy_ingot:5>,
	<enderio:item_alloy_ingot:6>,
	<enderio:item_alloy_ingot:7>,
	<enderio:item_alloy_ingot:8>,	
	<enderio:item_alloy_endergy_ingot:1>,
	<enderio:item_alloy_endergy_ingot:2>,
	<enderio:item_alloy_endergy_ingot:3>,
	<enderio:item_alloy_endergy_ingot:4>,
	<enderio:item_alloy_endergy_ingot:5>,
	<enderio:item_alloy_endergy_ingot:6>,
	<enderio:item_material:19>,
	<enderio:item_material:15>,
	<enderio:item_material:14>,
	<enderio:item_material:16>,	
	<magneticraft:ingots:5>,
	<magneticraft:ingots:14>,	
	<mekanism:ingot:1>,	
	<nuclearcraft:ingot:3>,
	<nuclearcraft:ingot:4>,
	<nuclearcraft:ingot:8>,
	<nuclearcraft:ingot:9>,
	<nuclearcraft:ingot:10>,
	<nuclearcraft:ingot:11>,	
	<nuclearcraft:ingot_oxide>,
	<nuclearcraft:ingot_oxide:1>,
	<nuclearcraft:ingot_oxide:2>,
	<nuclearcraft:ingot_oxide:3>,
	<contenttweaker:arsenic_ingot>,
	<contenttweaker:alugentum_ingot>,	
	<libvulpes:productingot:3>
] as IItemStack[];

val NotSmeltableDustArray = [
	<minecraft:glowstone_dust>*4,
	<minecraft:dye:15>*6,
	<minecraft:prismarine_crystals>,
	<actuallyadditions:item_dust:2>,
	<actuallyadditions:item_dust:4>,
	<actuallyadditions:item_dust:3>,	
	<appliedenergistics2:material:2>,
	<actuallyadditions:item_dust:7>,
	<appliedenergistics2:material:3>,
	<appliedenergistics2:material:8>,
	<appliedenergistics2:material:46>,	
	<appliedenergistics2:material:45>,
	<nuclearcraft:gem_dust:1>,
	<nuclearcraft:gem_dust:4>,
	<nuclearcraft:gem_dust:5>,
	<nuclearcraft:gem_dust:8>,
	<nuclearcraft:gem_dust:9>,
	<contenttweaker:boron_arsenide_dust>,	
	<thermalfoundation:material:768>,
	<thermalfoundation:material:769>,	
	<libvulpes:productdust>,
	<libvulpes:productdust:7>,	
	<thermalfoundation:material:70>,
	<thermalfoundation:material:71>,
	<thermalfoundation:material:72>,
	<thermalfoundation:material:101>,
	<thermalfoundation:material:102>,
	<thermalfoundation:material:103>,
	<redstonearsenal:material>,	
	<advancedrocketry:productdust>,
	<advancedrocketry:productdust:1>,	
	<enderio:item_material:30>,
	<enderio:item_material:31>,		
	<contenttweaker:electrical_steel_dust>,
	<contenttweaker:energetic_alloy_dust>,
	<contenttweaker:vibrant_alloy_dust>,
	<contenttweaker:pulsating_iron_dust>,
	<contenttweaker:dark_steel_dust>,
	<enderio:item_material:74>,
	<contenttweaker:end_steel_dust>,	
	<contenttweaker:crystalline_alloy_dust>,
	<contenttweaker:melodic_alloy_dust>,
	<contenttweaker:stellar_alloy_dust>,
	<contenttweaker:crystalline_pink_slime_dust>,
	<contenttweaker:energetic_silver_dust>,
	<contenttweaker:vivid_alloy_dust>,	
	<enderio:item_material:34>,
	<enderio:item_material:35>,
	<enderio:item_material:36>,
	<enderio:item_material:37>,	
	<magneticraft:dusts:5>,
	<magneticraft:dusts:14>,	
	<mekanism:dust:2>,
	<nuclearcraft:dust:3>,
	<nuclearcraft:dust:4>,
	<nuclearcraft:dust:8>,
	<nuclearcraft:dust:9>,
	<nuclearcraft:dust:10>,
	<nuclearcraft:dust:11>,	
	<nuclearcraft:dust_oxide>,
	<nuclearcraft:dust_oxide:1>,
	<nuclearcraft:dust_oxide:2>,
	<nuclearcraft:dust_oxide:3>,
	<nuclearcraft:gem_dust:10>,
	<nuclearcraft:compound:10>,	
	<libvulpes:productdust:3>
] as IItemStack[];

val MetalOresArray = [
	<minecraft:iron_ore>,
	<minecraft:gold_ore>,
	<thermalfoundation:ore>,
	<thermalfoundation:ore:1>,
	<thermalfoundation:ore:2>,
	<thermalfoundation:ore:3>,
	<thermalfoundation:ore:4>,
	<thermalfoundation:ore:5>,
	<thermalfoundation:ore:6>,
	<thermalfoundation:ore:7>,
	<nuclearcraft:ore:3>,
	<nuclearcraft:ore:4>,
	<nuclearcraft:ore:5>,
	<nuclearcraft:ore:6>,
	<nuclearcraft:ore:7>,
	<magneticraft:ores:3>,
	<tconstruct:ore>,
	<tconstruct:ore:1>,
	<libvulpes:ore0:8>,
	<mekanism:oreblock>
] as IItemStack[];

val MetalDustArray = [
	<thermalfoundation:material>,
	<thermalfoundation:material:1>,
	<thermalfoundation:material:64>,
	<thermalfoundation:material:65>,
	<thermalfoundation:material:66>,
	<thermalfoundation:material:67>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:69>,
	<thermalfoundation:material:70>,
	<thermalfoundation:material:71>,
	<nuclearcraft:dust:3>,
	<nuclearcraft:dust:4>,
	<nuclearcraft:dust:5>,
	<nuclearcraft:dust:6>,
	<nuclearcraft:dust:7>,
	<magneticraft:dusts:5>,
	<enderio:item_material:31>,
	<enderio:item_material:30>,
	<libvulpes:productdust:7>,
	<mekanism:dust:2>
] as IItemStack[];

val MetalByproductPrimary = [
	<thermalfoundation:material:69>,
	<thermalfoundation:material:64>,
	<thermalfoundation:material:1>,
	<magneticraft:dusts:14>,
	<thermalfoundation:material:67>,
	<thermalfoundation:material:66>,
	<nuclearcraft:dust:7>,
	<thermalfoundation:material:70>,
	<thermalfoundation:material:71>,
	<thermalfoundation:material:70>,
	<nuclearcraft:dust:4>,
	<nuclearcraft:dust:3>,
	<nuclearcraft:dust:7>,
	<magneticraft:dusts:5>,
	<nuclearcraft:dust:5>,
	<nuclearcraft:dust:11>,
	<thermalfoundation:material>,
	<thermalfoundation:material:1>,
	<nuclearcraft:dust:10>,
	<thermalfoundation:material:71>
] as IItemStack[];

val MetalByproductSecondary = [
	<thermalfoundation:material:65>,
	<enderio:item_material:31>,
	<enderio:item_material:30>,
	<thermalfoundation:material>,
	<thermalfoundation:material:771>,
	<thermalfoundation:material:771>,
	<libvulpes:productdust:7>,
	<magneticraft:dusts:14>,
	<thermalfoundation:material:1>,
	<thermalfoundation:material:72>,
	<thermalfoundation:material:67>,
	<thermalfoundation:material:67>,
	<nuclearcraft:dust:9>,
	<nuclearcraft:dust:9>,
	<nuclearcraft:dust:6>,
	<nuclearcraft:dust:6>,
	<nuclearcraft:gem_dust:10>,
	<nuclearcraft:gem_dust:10>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:72>
] as IItemStack[];

val CrushedArray = [
	<ic2:crushed:2>,
	<ic2:crushed:1>,
	<ic2:crushed>,
	<ic2:crushed:5>,
	<ic2:crushed:4>,
	<ic2:crushed:3>,
	<contenttweaker:crushed_aluminium>,
	<contenttweaker:crushed_nickel>,
	<contenttweaker:crushed_platinum>,
	<contenttweaker:crushed_iridium>,
	<contenttweaker:crushed_thorium>,
	<ic2:crushed:6>,
	<contenttweaker:crushed_boron>,
	<contenttweaker:crushed_lithium>,
	<contenttweaker:crushed_magnesium>,
	<contenttweaker:crushed_tungsten>,
	<contenttweaker:crushed_cobalt>,
	<contenttweaker:crushed_ardite>,
	<contenttweaker:crushed_titanium>,
	<contenttweaker:crushed_osmium>
] as IItemStack[];

val PurifiedArray = [
	<ic2:purified:2>,
	<ic2:purified:1>,
	<ic2:purified>,
	<ic2:purified:5>,
	<ic2:purified:4>,
	<ic2:purified:3>,
	<contenttweaker:purified_aluminium>,
	<contenttweaker:purified_nickel>,
	<contenttweaker:purified_platinum>,
	<contenttweaker:purified_iridium>,
	<contenttweaker:purified_thorium>,
	<ic2:purified:6>,
	<contenttweaker:purified_boron>,
	<contenttweaker:purified_lithium>,
	<contenttweaker:purified_magnesium>,
	<contenttweaker:purified_tungsten>,
	<contenttweaker:purified_cobalt>,
	<contenttweaker:purified_ardite>,
	<contenttweaker:purified_titanium>,
	<contenttweaker:purified_osmium>
] as IItemStack[];

val RockyChunkArray = [
	<magneticraft:rocky_chunks>,
	<magneticraft:rocky_chunks:1>,
	<magneticraft:rocky_chunks:2>,
	<magneticraft:rocky_chunks:13>,
	<magneticraft:rocky_chunks:12>,
	<magneticraft:rocky_chunks:3>,
	<magneticraft:rocky_chunks:7>,
	<magneticraft:rocky_chunks:10>,
	<contenttweaker:rocky_chunk_platinum>,
	<contenttweaker:rocky_chunk_iridium>,
	<contenttweaker:rocky_chunk_thorium>,
	<contenttweaker:rocky_chunk_uranium>,
	<contenttweaker:rocky_chunk_boron>,
	<contenttweaker:rocky_chunk_lithium>,
	<contenttweaker:rocky_chunk_magnesium>,
	<magneticraft:rocky_chunks:5>,
	<magneticraft:rocky_chunks:4>,
	<contenttweaker:rocky_chunk_ardite>,
	<contenttweaker:rocky_chunk_titanium>,
	<magneticraft:rocky_chunks:11>
] as IItemStack[];

val ChunkArray = [
	<magneticraft:chunks>,
	<magneticraft:chunks:1>,
	<magneticraft:chunks:2>,
	<magneticraft:chunks:13>,
	<magneticraft:chunks:12>,
	<magneticraft:chunks:3>,
	<magneticraft:chunks:7>,
	<magneticraft:chunks:10>,
	<contenttweaker:chunk_platinum>,
	<contenttweaker:chunk_iridium>,
	<contenttweaker:chunk_thorium>,
	<contenttweaker:chunk_uranium>,
	<contenttweaker:chunk_boron>,
	<contenttweaker:chunk_lithium>,
	<contenttweaker:chunk_magnesium>,
	<magneticraft:chunks:5>,
	<magneticraft:chunks:4>,
	<contenttweaker:chunk_ardite>,
	<contenttweaker:chunk_titanium>,
	<magneticraft:chunks:11>
] as IItemStack[];

val GemOresArray = [
	<minecraft:coal_ore>,
	<minecraft:redstone_ore>,
	<minecraft:lapis_ore>,
	<minecraft:diamond_ore>,
	<minecraft:emerald_ore>,
	<minecraft:quartz_ore>,
	<actuallyadditions:block_misc:3>,
	<appliedenergistics2:quartz_ore>,
	<astralsorcery:blockcustomsandore>,
	<bewitchment:amethyst_ore>,
	<bewitchment:garnet_ore>,
	<bewitchment:opal_ore>,
	//<bewitchment:salt_ore>,
	<forestry:resources>,
	<magneticraft:ores:4>,
	<thaumcraft:ore_amber>,
	<thaumcraft:ore_cinnabar>,
	<thermalfoundation:ore_fluid>,
	<thermalfoundation:ore_fluid:1>,
	<thermalfoundation:ore_fluid:2>,
	<thermalfoundation:ore_fluid:3>,
	<thermalfoundation:ore_fluid:4>,
	<thermalfoundation:ore_fluid:5>
] as IItemStack[];

val GemResultArray = [
	<minecraft:coal>*3,
	<minecraft:redstone>*8,
	<minecraft:dye:4>*8,
	<minecraft:diamond>*2,
	<minecraft:emerald>*2,
	<appliedenergistics2:material:3>*2,
	<actuallyadditions:item_dust:7>*2,
	<appliedenergistics2:material:2>*2,
	<astralsorcery:itemcraftingcomponent>*4,
	<bewitchment:amethyst>*2,
	<bewitchment:garnet>*2,
	<bewitchment:opal>*2,
	<forestry:apatite>*12,
	<thermalfoundation:material:771>*4,
	<thaumcraft:amber>*2,
	<thermalfoundation:material:866>*2,
	<thermalfoundation:material:892>*2,
	<thermalfoundation:material:892>*2,
	<thermalfoundation:material:893>*2,
	<thermalfoundation:material:894>*2,
	<thermalfoundation:material:895>*2,
	<thermalfoundation:material:892>*2
] as IItemStack[];

function removeInGrindstone(oredict as IOreDictEntry) {
	for item in oredict.items {
		Grindstone.removeRecipe(item);
	}
}

function removeSmelting(liquid as ILiquidStack, item as IItemStack) {
	Melting.removeRecipe(liquid, item);
	HighOven.removeMeltingOverride(liquid, item);
}

function addSmelting(liquid as ILiquidStack, amount as int, item as IItemStack) {
	Melting.addRecipe(liquid*amount, item);
	HighOven.addMeltingOverride(liquid*amount, item);
}

##recipes
//tcon mining level
<ticmat:obsidian>.harvestLevelHead = 3;
<ticmat:palis_actadd_plustic>.harvestLevelHead = 3;
<ticmat:emeradic_actadd_plustic>.harvestLevelHead = 3;
<ticmat:diamatine_actadd_plustic>.harvestLevelHead = 3;
<ticmat:emerald_plustic>.harvestLevelHead = 3;

//black quartz
furnace.remove(<actuallyadditions:item_misc:5>);
Resonator.add(<actuallyadditions:item_misc:5>, <actuallyadditions:item_dust:7>, 1200);
manufactory.addRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:item_misc:5>);

//certus quartz
Resonator.add(<appliedenergistics2:material>, <appliedenergistics2:material:2>, 1200);

//nether quartz
Resonator.add(<minecraft:quartz>, <appliedenergistics2:material:3>, 1200);

//furnace
furnace.addRecipe(<minecraft:iron_ingot>, <ic2:crushed:2>);
furnace.addRecipe(<minecraft:gold_ingot>, <ic2:crushed:1>);
furnace.addRecipe(<thermalfoundation:material:128>, <ic2:crushed>);
furnace.addRecipe(<thermalfoundation:material:129>, <ic2:crushed:5>);
furnace.addRecipe(<thermalfoundation:material:130>, <ic2:crushed:4>);
furnace.addRecipe(<thermalfoundation:material:131>, <ic2:crushed:3>);
furnace.addRecipe(<thermalfoundation:material:132>, <contenttweaker:crushed_aluminium>);
furnace.addRecipe(<thermalfoundation:material:133>, <contenttweaker:crushed_nickel>);

/*
furnace.addRecipe(<minecraft:iron_ingot>, <ic2:purified:2>);
furnace.addRecipe(<minecraft:gold_ingot>, <ic2:purified:1>);
furnace.addRecipe(<thermalfoundation:material:128>, <ic2:purified>);
furnace.addRecipe(<thermalfoundation:material:129>, <ic2:purified:5>);
furnace.addRecipe(<thermalfoundation:material:130>, <ic2:purified:4>);
furnace.addRecipe(<thermalfoundation:material:131>, <ic2:purified:3>);
furnace.addRecipe(<thermalfoundation:material:132>, <contenttweaker:purified_aluminium>);
furnace.addRecipe(<thermalfoundation:material:133>, <contenttweaker:purified_nickel>);
furnace.addRecipe(<nuclearcraft:ingot:5>, <contenttweaker:purified_boron>);
furnace.addRecipe(<nuclearcraft:ingot:6>, <contenttweaker:purified_lithium>);
furnace.addRecipe(<nuclearcraft:ingot:7>, <contenttweaker:purified_magnesium>);

furnace.addRecipe(<minecraft:iron_ingot>*2, <magneticraft:chunks>);
furnace.addRecipe(<minecraft:gold_ingot>*2, <magneticraft:chunks:1>);
furnace.addRecipe(<thermalfoundation:material:128>*2, <magneticraft:chunks:2>);
furnace.addRecipe(<thermalfoundation:material:129>*2, <magneticraft:chunks:13>);
furnace.addRecipe(<thermalfoundation:material:130>*2, <magneticraft:chunks:12>);
furnace.addRecipe(<thermalfoundation:material:131>*2, <magneticraft:chunks:3>);
furnace.addRecipe(<thermalfoundation:material:132>*2, <magneticraft:chunks:7>);
furnace.addRecipe(<thermalfoundation:material:133>*2, <magneticraft:chunks:10>);
furnace.addRecipe(<nuclearcraft:ingot:5>*2, <contenttweaker:chunk_boron>);
furnace.addRecipe(<nuclearcraft:ingot:6>*2, <contenttweaker:chunk_lithium>);
furnace.addRecipe(<nuclearcraft:ingot:7>*2, <contenttweaker:chunk_magnesium>);*/

furnace.addRecipe(<minecraft:iron_ingot>, <thermalfoundation:material>);
furnace.addRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:1>);
furnace.addRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:64>);
furnace.addRecipe(<thermalfoundation:material:129>, <thermalfoundation:material:65>);
furnace.addRecipe(<thermalfoundation:material:130>, <thermalfoundation:material:66>);
furnace.addRecipe(<thermalfoundation:material:131>, <thermalfoundation:material:67>);
furnace.addRecipe(<thermalfoundation:material:132>, <thermalfoundation:material:68>);
furnace.addRecipe(<thermalfoundation:material:133>, <thermalfoundation:material:69>);
furnace.addRecipe(<nuclearcraft:ingot:5>, <nuclearcraft:dust:5>);
furnace.addRecipe(<nuclearcraft:ingot:6>, <nuclearcraft:dust:6>);
furnace.addRecipe(<nuclearcraft:ingot:7>, <nuclearcraft:dust:7>);

//ae2 grindstone
removeInGrindstone(<ore:oreIron>);
removeInGrindstone(<ore:oreGold>);
removeInGrindstone(<ore:oreCopper>);
removeInGrindstone(<ore:oreTin>);
removeInGrindstone(<ore:oreSilver>);
removeInGrindstone(<ore:oreLead>);
removeInGrindstone(<ore:oreAluminum>);
removeInGrindstone(<ore:oreNickel>);
removeInGrindstone(<ore:orePlatinum>);
removeInGrindstone(<ore:oreIridium>);
removeInGrindstone(<ore:oreBoron>);
removeInGrindstone(<ore:oreLithium>);
removeInGrindstone(<ore:oreMagnesium>);
removeInGrindstone(<ore:oreCobalt>);
removeInGrindstone(<ore:oreArdite>);
removeInGrindstone(<ore:oreOsmium>);
removeInGrindstone(<ore:oreCoal>);
removeInGrindstone(<ore:oreCertusQuartz>);
removeInGrindstone(<ore:oreQuartz>);

Grindstone.addRecipe(<ic2:crushed:2>, <minecraft:iron_ore>, 4);
Grindstone.addRecipe(<ic2:crushed:1>, <minecraft:gold_ore>, 6);
Grindstone.addRecipe(<ic2:crushed>, <thermalfoundation:ore>, 4);
Grindstone.addRecipe(<ic2:crushed:5>, <thermalfoundation:ore:1>, 4);
Grindstone.addRecipe(<ic2:crushed:4>, <thermalfoundation:ore:2>, 6);
Grindstone.addRecipe(<ic2:crushed:3>, <thermalfoundation:ore:3>, 4);
Grindstone.addRecipe(<contenttweaker:crushed_aluminium>, <thermalfoundation:ore:4>, 4);
Grindstone.addRecipe(<thermalfoundation:material:768>, <minecraft:coal_ore>, 4);

removeInGrindstone(<ore:ingotIron>);
removeInGrindstone(<ore:ingotGold>);
removeInGrindstone(<ore:ingotCopper>);
removeInGrindstone(<ore:ingotTin>);
removeInGrindstone(<ore:ingotSilver>);
removeInGrindstone(<ore:ingotLead>);
removeInGrindstone(<ore:ingotAluminum>);
removeInGrindstone(<ore:ingotNickel>);
removeInGrindstone(<ore:ingotBoron>);
removeInGrindstone(<ore:ingotLithium>);
removeInGrindstone(<ore:ingotMagnesium>);
removeInGrindstone(<ore:ingotCobalt>);
removeInGrindstone(<ore:ingotArdite>);
removeInGrindstone(<ore:ingotOsmium>);
removeInGrindstone(<ore:ingotSteel>);
removeInGrindstone(<ore:ingotElectrum>);
removeInGrindstone(<ore:ingotInvar>);
removeInGrindstone(<ore:ingotBronze>);
removeInGrindstone(<ore:ingotConstantan>);

Grindstone.removeRecipe(<mekanism:crystal>);
Grindstone.removeRecipe(<mekanism:crystal:1>);
Grindstone.removeRecipe(<mekanism:crystal:2>);
Grindstone.removeRecipe(<mekanism:crystal:3>);
Grindstone.removeRecipe(<mekanism:crystal:4>);
Grindstone.removeRecipe(<mekanism:crystal:5>);
Grindstone.removeRecipe(<mekanism:crystal:6>);

Grindstone.removeRecipe(<appliedenergistics2:material:1>);
Grindstone.removeRecipe(<minecraft:quartz>);
Grindstone.removeRecipe(<minecraft:coal>);
Grindstone.removeRecipe(<minecraft:obsidian>);

//smeltery - ore remove
removeSmelting(<liquid:iron>, <minecraft:iron_ore>);
removeSmelting(<liquid:gold>, <minecraft:gold_ore>);
removeSmelting(<liquid:copper>, <thermalfoundation:ore>);
removeSmelting(<liquid:tin>, <thermalfoundation:ore:1>);
removeSmelting(<liquid:silver>, <thermalfoundation:ore:2>);
removeSmelting(<liquid:lead>, <thermalfoundation:ore:3>);
removeSmelting(<liquid:aluminum>, <thermalfoundation:ore:4>);
removeSmelting(<liquid:nickel>, <thermalfoundation:ore:5>);
removeSmelting(<liquid:boron>, <nuclearcraft:ore:5>);
removeSmelting(<liquid:lithium>, <nuclearcraft:ore:6>);
removeSmelting(<liquid:magnesium>, <nuclearcraft:ore:7>);
removeSmelting(<liquid:cobalt>, <tconstruct:ore>);
removeSmelting(<liquid:ardite>, <tconstruct:ore:1>);
removeSmelting(<liquid:thorium>, <nuclearcraft:ore:3>);
removeSmelting(<liquid:uranium>, <nuclearcraft:ore:4>);
removeSmelting(<liquid:platinum>, <thermalfoundation:ore:6>);
removeSmelting(<liquid:iridium>, <thermalfoundation:ore:7>);
removeSmelting(<liquid:osmium>, <mekanism:oreblock:0>);
removeSmelting(<liquid:titanium>, <libvulpes:ore0:8>);

//smeltery - other ore process remove
removeSmelting(<liquid:iron>, <magneticraft:rocky_chunks>);
removeSmelting(<liquid:gold>, <magneticraft:rocky_chunks:1>);
removeSmelting(<liquid:copper>, <magneticraft:rocky_chunks:2>);
removeSmelting(<liquid:tin>, <magneticraft:rocky_chunks:13>);
removeSmelting(<liquid:silver>, <magneticraft:rocky_chunks:12>);
removeSmelting(<liquid:lead>, <magneticraft:rocky_chunks:3>);
removeSmelting(<liquid:nickel>, <magneticraft:rocky_chunks:10>);
removeSmelting(<liquid:osmium>, <magneticraft:rocky_chunks:11>);
removeSmelting(<liquid:cobalt>, <magneticraft:rocky_chunks:4>);
removeSmelting(<liquid:cobalt>, <magneticraft:chunks:4>);
removeSmelting(<liquid:cobalt>, <enderio:item_material:31>);
removeSmelting(<liquid:ardite>, <enderio:item_material:30>);
removeSmelting(<liquid:thorium>, <nuclearcraft:dust:3>);
removeSmelting(<liquid:uranium>, <nuclearcraft:dust:4>);
removeSmelting(<liquid:platinum>, <thermalfoundation:material:70>);
removeSmelting(<liquid:iridium>, <thermalfoundation:material:71>);
removeSmelting(<liquid:osmium>, <magneticraft:rocky_chunks:11>);
removeSmelting(<liquid:osmium>, <magneticraft:chunks:11>);
removeSmelting(<liquid:titanium>, <libvulpes:productdust:7>);

//smeltery - other ore process add
addSmelting(<liquid:iron>, 144, <ic2:crushed:2>);
addSmelting(<liquid:gold>, 144, <ic2:crushed:1>);
addSmelting(<liquid:copper>, 144, <ic2:crushed>);
addSmelting(<liquid:tin>, 144, <ic2:crushed:5>);
addSmelting(<liquid:silver>, 144, <ic2:crushed:4>);
addSmelting(<liquid:lead>, 144, <ic2:crushed:3>);
addSmelting(<liquid:aluminum>, 144, <contenttweaker:crushed_aluminium>);
addSmelting(<liquid:nickel>, 144, <contenttweaker:crushed_nickel>);
addSmelting(<liquid:boron>, 144, <contenttweaker:crushed_boron>);
addSmelting(<liquid:lithium>, 144, <contenttweaker:crushed_lithium>);
addSmelting(<liquid:magnesium>, 144, <contenttweaker:crushed_magnesium>);

addSmelting(<liquid:iron>, 144, <ic2:purified:2>);
addSmelting(<liquid:gold>, 144, <ic2:purified:1>);
addSmelting(<liquid:copper>, 144, <ic2:purified>);
addSmelting(<liquid:tin>, 144, <ic2:purified:5>);
addSmelting(<liquid:silver>, 144, <ic2:purified:4>);
addSmelting(<liquid:lead>, 144, <ic2:purified:3>);
addSmelting(<liquid:aluminum>, 144, <contenttweaker:purified_aluminium>);
addSmelting(<liquid:nickel>, 144, <contenttweaker:purified_nickel>);
addSmelting(<liquid:boron>, 144, <contenttweaker:purified_boron>);
addSmelting(<liquid:lithium>, 144, <contenttweaker:purified_lithium>);
addSmelting(<liquid:magnesium>, 144, <contenttweaker:purified_magnesium>);

addSmelting(<liquid:aluminum>, 288, <magneticraft:chunks:7>);
addSmelting(<liquid:boron>, 288, <contenttweaker:chunk_boron>);
addSmelting(<liquid:lithium>, 288, <contenttweaker:chunk_lithium>);
addSmelting(<liquid:magnesium>, 288, <contenttweaker:chunk_magnesium>);

//crushing table
CrushingTable.removeRecipe(<minecraft:iron_block>);
CrushingTable.removeRecipe(<minecraft:gold_block>);
CrushingTable.removeRecipe(<magneticraft:storage_blocks>);
CrushingTable.removeRecipe(<magneticraft:storage_blocks:1>);
CrushingTable.removeRecipe(<magneticraft:storage_blocks:3>);
CrushingTable.removeRecipe(<magneticraft:ingots:6>);
CrushingTable.removeRecipe(<tconstruct:ore>);
CrushingTable.removeRecipe(<magneticraft:ores:3>);
CrushingTable.removeRecipe(<magneticraft:ores:4>);
CrushingTable.removeRecipe(<thermalfoundation:ore:8>);
CrushingTable.removeRecipe(<mekanism:oreblock>);
CrushingTable.removeRecipe(<minecraft:blaze_rod>);
CrushingTable.removeRecipe(<minecraft:bone>);
CrushingTable.addRecipe(<minecraft:quartz_ore>, <appliedenergistics2:material:3>, true);
CrushingTable.addRecipe(<appliedenergistics2:quartz_ore>, <appliedenergistics2:material:2>, true);
CrushingTable.addRecipe(<actuallyadditions:block_misc:3>, <actuallyadditions:item_dust:7>, true);
CrushingTable.addRecipe(<minecraft:cobblestone>, <minecraft:gravel>, true);
CrushingTable.addRecipe(<minecraft:gravel>, <minecraft:sand>, true);
CrushingTable.addRecipe(<minecraft:sand>, <buildinggadgets:constructionblockpowder>, true);

//sluice box
SluiceBox.removeRecipe(<minecraft:sand>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks>, 1.0, <magneticraft:chunks>, 0.15, <minecraft:gravel>, true);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:1>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:1>, 1.0, <magneticraft:chunks:1>, 0.15, <minecraft:gravel>, true);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:2>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:2>, 1.0, <magneticraft:chunks:2>, 0.15, <minecraft:gravel>, true);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:13>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:13>, 1.0, <magneticraft:chunks:13>, 0.15, <minecraft:gravel>, true);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:12>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:12>, 1.0, <magneticraft:chunks:12>, 0.15, <minecraft:gravel>, true);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:3>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:3>, 1.0, <magneticraft:chunks:3>, 0.15, <minecraft:gravel>, true);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:7>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:7>, 1.0, <magneticraft:chunks:7>, 0.15, <minecraft:gravel>, true);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:10>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:10>, 1.0, <magneticraft:chunks:10>, 0.15, <minecraft:gravel>, true);

SluiceBox.removeRecipe(<magneticraft:rocky_chunks:4>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:5>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:8>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:9>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:11>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:14>);

//aa crusher
AACrusher.removeRecipe(<thermalfoundation:material>);
AACrusher.removeRecipe(<thermalfoundation:material:1>);
AACrusher.removeRecipe(<thermalfoundation:material:64>);
AACrusher.removeRecipe(<thermalfoundation:material:65>);
AACrusher.removeRecipe(<thermalfoundation:material:66>);
AACrusher.removeRecipe(<thermalfoundation:material:67>);
AACrusher.removeRecipe(<thermalfoundation:material:68>);
AACrusher.removeRecipe(<thermalfoundation:material:69>);
AACrusher.removeRecipe(<thermalfoundation:material:70>);
AACrusher.removeRecipe(<ic2:misc_resource:1>);
AACrusher.removeRecipe(<thermalfoundation:material:72>);
AACrusher.removeRecipe(<nuclearcraft:dust:3>);
AACrusher.removeRecipe(<nuclearcraft:dust:4>);
AACrusher.removeRecipe(<nuclearcraft:dust:5>);
AACrusher.removeRecipe(<nuclearcraft:dust:6>);
AACrusher.removeRecipe(<nuclearcraft:dust:7>);
AACrusher.removeRecipe(<magneticraft:dusts:5>);
AACrusher.removeRecipe(<enderio:item_material:31>);
AACrusher.removeRecipe(<magneticraft:dusts:4>);
AACrusher.removeRecipe(<enderio:item_material:30>);
AACrusher.removeRecipe(<libvulpes:productdust:7>);
AACrusher.removeRecipe(<mekanism:dust:2>);
AACrusher.removeRecipe(<draconicevolution:draconium_dust>);
AACrusher.removeRecipe(<minecraft:redstone>);
AACrusher.removeRecipe(<minecraft:dye:4>);
AACrusher.removeRecipe(<minecraft:glowstone_dust>);
AACrusher.removeRecipe(<minecraft:blaze_powder>);
AACrusher.removeRecipe(<minecraft:prismarine_crystals>);
AACrusher.removeRecipe(<ic2:dust:5>);
AACrusher.removeRecipe(<actuallyadditions:item_dust:3>);
AACrusher.removeRecipe(<ic2:dust:9>);
AACrusher.removeRecipe(<actuallyadditions:item_dust:7>);
AACrusher.removeRecipe(<thermalfoundation:material:96>);
AACrusher.removeRecipe(<thermalfoundation:material:97>);
AACrusher.removeRecipe(<thermalfoundation:material:98>);
AACrusher.removeRecipe(<thermalfoundation:material:99>);
AACrusher.removeRecipe(<thermalfoundation:material:100>);
AACrusher.removeRecipe(<thermalfoundation:material:101>);
AACrusher.removeRecipe(<thermalfoundation:material:102>);
AACrusher.removeRecipe(<thermalfoundation:material:103>);
AACrusher.removeRecipe(<thermalfoundation:material:71>);
AACrusher.removeRecipe(<advancedrocketry:productdust>);
AACrusher.removeRecipe(<advancedrocketry:productdust:1>);
AACrusher.removeRecipe(<libvulpes:productdust>);
AACrusher.removeRecipe(<libvulpes:productdust:3>);
AACrusher.removeRecipe(<nuclearcraft:dust:8>);
AACrusher.removeRecipe(<nuclearcraft:dust:9>);
AACrusher.removeRecipe(<nuclearcraft:dust:10>);
AACrusher.removeRecipe(<nuclearcraft:dust:11>);
AACrusher.removeRecipe(<nuclearcraft:dust_oxide>);
AACrusher.removeRecipe(<nuclearcraft:dust_oxide:1>);
AACrusher.removeRecipe(<nuclearcraft:dust_oxide:2>);
AACrusher.removeRecipe(<nuclearcraft:dust_oxide:3>);
AACrusher.removeRecipe(<nuclearcraft:gem_dust:1>);
AACrusher.removeRecipe(<nuclearcraft:gem_dust:4>);
AACrusher.removeRecipe(<nuclearcraft:gem_dust:5>);
AACrusher.removeRecipe(<nuclearcraft:gem_dust:8>);
AACrusher.removeRecipe(<nuclearcraft:gem_dust:9>);
AACrusher.removeRecipe(<redstonearsenal:material>);
AACrusher.removeRecipe(<mekanism:otherdust:5>);
AACrusher.removeRecipe(<minecraft:quartz>);
AACrusher.removeRecipe(<magneticraft:dusts:14>);
AACrusher.removeRecipe(<actuallyadditions:item_dust:6>);
AACrusher.removeRecipe(<minecraft:coal>);
AACrusher.removeRecipe(<ic2:dust:16>);
AACrusher.removeRecipe(<nuclearcraft:gem_dust:2>);
AACrusher.removeRecipe(<appliedenergistics2:material>);
AACrusher.removeRecipe(<appliedenergistics2:material:2>);
AACrusher.removeRecipe(<actuallyadditions:item_misc:5>);
AACrusher.removeRecipe(<libvulpes:productgem>);
AACrusher.removeRecipe(<astralsorcery:itemcraftingcomponent:2>);
AACrusher.removeRecipe(<enderio:item_material:74>);
AACrusher.removeRecipe(<minecraft:sand>);
AACrusher.removeRecipe(<minecraft:flint>);
AACrusher.removeRecipe(<minecraft:diamond>);
AACrusher.removeRecipe(<minecraft:emerald>);
AACrusher.removeRecipe(<actuallyadditions:item_dust:2>);
AACrusher.removeRecipe(<appliedenergistics2:material:3>);
AACrusher.removeRecipe(<actuallyadditions:item_dust:4>);
AACrusher.removeRecipe(<bewitchment:amethyst>);
AACrusher.removeRecipe(<bewitchment:garnet>);
AACrusher.removeRecipe(<bewitchment:opal>);
AACrusher.removeRecipe(<bewitchment:salt>);
AACrusher.removeRecipe(<forestry:apatite>);
AACrusher.removeRecipe(<thaumcraft:amber>);
AACrusher.removeRecipe(<astralsorcery:itemcraftingcomponent>);
AACrusher.removeRecipe(<contenttweaker:brass_dust>);

AACrusher.addRecipe(<minecraft:gravel>, <ore:cobblestone>, <minecraft:sand>, 15);
AACrusher.addRecipe(<minecraft:sand>, <minecraft:gravel>, <minecraft:flint>, 15);
AACrusher.addRecipe(<buildinggadgets:constructionblockpowder>, <minecraft:sand>, <ic2:dust:13>, 15);

//grinder
val gravel = <minecraft:gravel>;
MGGrinder.removeRecipe(<minecraft:iron_ingot>);
MGGrinder.removeRecipe(<minecraft:gold_ingot>);
MGGrinder.removeRecipe(<magneticraft:ingots:2>);
MGGrinder.removeRecipe(<magneticraft:ingots:3>);
MGGrinder.removeRecipe(<magneticraft:ingots:4>);
MGGrinder.removeRecipe(<magneticraft:ingots:5>);
MGGrinder.removeRecipe(<magneticraft:ingots:6>);
MGGrinder.removeRecipe(<magneticraft:ingots:7>);
MGGrinder.removeRecipe(<magneticraft:ingots:9>);
MGGrinder.removeRecipe(<magneticraft:ingots:10>);
MGGrinder.removeRecipe(<magneticraft:ingots:11>);
MGGrinder.removeRecipe(<magneticraft:ingots:12>);
MGGrinder.removeRecipe(<magneticraft:ingots:13>);
MGGrinder.removeRecipe(<magneticraft:ores:4>);
MGGrinder.removeRecipe(<minecraft:obsidian>);
MGGrinder.removeRecipe(<minecraft:coal>);
MGGrinder.removeRecipe(<minecraft:coal:1>);
MGGrinder.removeRecipe(<minecraft:coal_block>);
MGGrinder.removeRecipe(<minecraft:log>);
MGGrinder.removeRecipe(<minecraft:planks>);
MGGrinder.removeRecipe(<thermalfoundation:ore:8>);
MGGrinder.removeRecipe(<minecraft:blaze_rod>);
MGGrinder.removeRecipe(<minecraft:cobblestone>);

MGGrinder.addRecipe(<minecraft:log>, <thermalfoundation:material:800>*8, null, 0.0, 50.0, true);
MGGrinder.addRecipe(<minecraft:planks>, <thermalfoundation:material:800>*2, null, 0.0, 50.0, true);
MGGrinder.addRecipe(<minecraft:oak_stairs>, <thermalfoundation:material:800>*3, null, 0.0, 50.0, true);
MGGrinder.addRecipe(<minecraft:wooden_slab>, <thermalfoundation:material:800>, null, 0.0, 50.0, true);
MGGrinder.addRecipe(<minecraft:cobblestone>, <minecraft:gravel>, <minecraft:sand>, 0.15, 50.0, true);
MGGrinder.addRecipe(<minecraft:gravel>, <minecraft:sand>, <minecraft:flint>, 0.15, 50.0, true);
MGGrinder.addRecipe(<minecraft:sand>, <buildinggadgets:constructionblockpowder>, <ic2:dust:13>, 0.15, 50.0, true);
MGGrinder.addRecipe(<minecraft:clay>, <ic2:dust:1>*4, <ic2:dust:13>, 0.15, 50.0, true);
MGGrinder.addRecipe(<minecraft:glass>, <ic2:dust:13>, null, 0.0, 50.0, true);
MGGrinder.addRecipe(<minecraft:netherrack>, <ic2:dust:30>, <thermalfoundation:material:771>, 0.2, 50.0, true);
MGGrinder.addRecipe(<minecraft:wool>, <minecraft:string>*4, null, 0.0, 50.0, true);

//sieve
val _sd = <ic2:dust:15>;
Sieve.removeRecipe(<magneticraft:rocky_chunks>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:1>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:2>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:3>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:4>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:5>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:7>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:8>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:9>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:10>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:11>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:12>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:13>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:14>);

//sag mill
val SagMillInputArray = [
	<minecraft:coal>,
	<minecraft:coal_block>,
	<minecraft:coal:1>,
	<thermalfoundation:storage_resource>,
	<minecraft:diamond>,
	<minecraft:emerald>,
	<minecraft:prismarine_shard>,
	<minecraft:ender_pearl>,
	<appliedenergistics2:material:46>,
	<enderio:item_alloy_ingot:7>,
	<enderio:block_alloy:7>,
	<thermalfoundation:storage_alloy>,
	<thermalfoundation:storage_alloy:1>,
	<thermalfoundation:storage_alloy:2>,
	<thermalfoundation:storage_alloy:3>,
	<thermalfoundation:storage_alloy:5>,
	<thermalfoundation:storage_alloy:6>,
	<thermalfoundation:storage_alloy:7>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:161>,
	<thermalfoundation:material:162>,
	<thermalfoundation:material:163>,
	<thermalfoundation:material:165>,
	<thermalfoundation:material:166>,
	<thermalfoundation:material:167>,
	<minecraft:iron_ore>,
	<minecraft:iron_ingot>,
	<minecraft:iron_block>,
	<minecraft:gold_ore>,
	<minecraft:gold_ingot>,
	<minecraft:gold_block>,
	<thermalfoundation:ore>,
	<thermalfoundation:material:128>,
	<thermalfoundation:storage>,
	<thermalfoundation:ore:1>,
	<thermalfoundation:material:129>,
	<thermalfoundation:storage:1>,	
	<thermalfoundation:ore:2>,
	<thermalfoundation:material:130>,
	<thermalfoundation:storage:2>,	
	<thermalfoundation:ore:3>,
	<thermalfoundation:material:131>,
	<thermalfoundation:storage:3>,	
	<thermalfoundation:ore:4>,
	<thermalfoundation:material:132>,
	<thermalfoundation:storage:4>,	
	<thermalfoundation:ore:5>,
	<thermalfoundation:material:133>,
	<thermalfoundation:storage:5>,	
	<thermalfoundation:ore:6>,
	<thermalfoundation:material:134>,
	<thermalfoundation:storage:6>,	
	<thermalfoundation:ore:7>,
	<thermalfoundation:ore:8>,
	<thermalfoundation:material:136>,
	<thermalfoundation:storage:8>,	
	<mekanism:oreblock>,
	<mekanism:ingot:1>,
	<mekanism:basicblock>,
	<tconstruct:ore:1>,
	<tconstruct:ingots:1>,
	<tconstruct:metal:1>,
	<tconstruct:ore>,
	<tconstruct:ingots>,
	<tconstruct:metal>,
	<nuclearcraft:ore:3>,
	<nuclearcraft:ore:4>,
	<nuclearcraft:ingot:4>,
	<nuclearcraft:ingot_block:4>,
	<nuclearcraft:ore:5>,
	<nuclearcraft:ore:6>,
	<nuclearcraft:ore:7>,
	<nuclearcraft:ingot:7>,
	<nuclearcraft:ingot_block:7>,
	<libvulpes:ore0>,
	<libvulpes:ore0:8>,
	<libvulpes:productingot:7>,
	<libvulpes:metal0:7>,
	<magneticraft:ores:3>,
	<magneticraft:ingots:5>,
	<magneticraft:storage_blocks:3>,
	<draconicevolution:draconium_ore>,
	<draconicevolution:draconium_ore:1>,
	<draconicevolution:draconium_ore:2>,
	<draconicevolution:draconium_ingot>,
	<draconicevolution:draconium_block>,
	<nuclearcraft:ingot:11>,
	<nuclearcraft:ingot_block:11>,
	<magneticraft:ingots:14>,
	<minecraft:dye:4>,
	<minecraft:lapis_block>,
	<nuclearcraft:ingot:8>,
	<nuclearcraft:ingot_block:8>,
	<actuallyadditions:block_misc:3>,
	<minecraft:quartz>,
	<appliedenergistics2:material>,
	<appliedenergistics2:material:1>,
	<appliedenergistics2:material:7>,
	<bewitchment:amethyst_ore>,
	<bewitchment:garnet_ore>,
	<bewitchment:opal_ore>,
	<astralsorcery:blockcustomsandore>,
	<astralsorcery:blockcustomore:1>,
	<minecraft:coal_ore>,
	<minecraft:redstone_ore>,
	<minecraft:lapis_ore>,
	<minecraft:diamond_ore>,
	<minecraft:emerald_ore>,
	<minecraft:quartz_ore>,
	<appliedenergistics2:quartz_ore>,
	<appliedenergistics2:charged_quartz_ore>,
	<forestry:resources>,
	<magneticraft:ores:4>,
	<thaumcraft:ore_amber>,
	<thaumcraft:ore_quartz>,
	<thermalfoundation:ore_fluid>,
	<thermalfoundation:ore_fluid:1>,
	<thermalfoundation:ore_fluid:2>,
	<thermalfoundation:ore_fluid:3>,
	<thermalfoundation:ore_fluid:4>,
	<thermalfoundation:ore_fluid:5>,
	<minecraft:log>,
	<minecraft:planks>,
	<minecraft:oak_stairs>,
	<minecraft:wooden_slab>,
	<minecraft:stick>,
	<minecraft:glass>,
	<minecraft:cobblestone>,
	<minecraft:gravel>,
	<minecraft:sand>,
	<minecraft:clay>,
	<minecraft:netherrack>,
	<minecraft:obsidian>,
	<minecraft:glowstone>,
	<minecraft:bone>,
	<minecraft:wool>,
	<minecraft:quartz_block>,
	<minecraft:stone_slab:7>,
	<minecraft:quartz_stairs>,
	<minecraft:flower_pot>,
	<enderio:item_material:19>,
	<enderio:item_material:15>,
	<enderio:item_material:14>,
	<enderio:item_material:16>,
	<minecraft:blaze_rod>
] as IItemStack[];
	
for item in SagMillInputArray {
	SagMill.removeRecipe(item);
}
	
SagMill.addRecipe([<thermalfoundation:material:800>*8], [1.0], <ore:logWood>, "NONE", 4800);
SagMill.addRecipe([<thermalfoundation:material:800>*2], [1.0], <ore:plankWood>, "NONE", 2400);
SagMill.addRecipe([<thermalfoundation:material:800>*3], [1.0], <ore:stairWood>, "NONE", 2400);
SagMill.addRecipe([<thermalfoundation:material:800>], [1.0], <ore:slabWood>, "NONE", 2400);
SagMill.addRecipe([<ic2:dust:13>], [1.0], <ore:blockGlass>, "NONE", 2400);
SagMill.addRecipe([<minecraft:gravel>, <minecraft:sand>], [1.0, 0.15], <ore:cobblestone>, "CHANCE_ONLY", 4800);
SagMill.addRecipe([<minecraft:sand>, <minecraft:flint>], [1.0, 0.15], <ore:gravel>, "CHANCE_ONLY", 4800);
SagMill.addRecipe([<buildinggadgets:constructionblockpowder>, <ic2:dust:13>], [1.0, 0.15], <ore:sand>, "CHANCE_ONLY", 4800);
SagMill.addRecipe([<ic2:dust:1>*4, <ic2:dust:13>], [1.0, 0.15], <ore:blockClay>, "CHANCE_ONLY", 4800);
SagMill.addRecipe([<ic2:dust:30>, <thermalfoundation:material:771>], [1.0, 0.2], <minecraft:netherrack>, "CHANCE_ONLY", 4800);
SagMill.addRecipe([<minecraft:string>*4], [1.0], <ore:wool>, "NONE", 2400);
SagMill.addRecipe([<nuclearcraft:dust:8>*2], [1.0], <actuallyadditions:item_crystal:3>, "NONE", 4800);
SagMill.addRecipe([<minecraft:blaze_powder>*4, <thermalfoundation:material:771>], [1.0, 0.2], <minecraft:blaze_rod>, "CHANCE_ONLY", 2400);

//alloy smelter 

//pulverizer
val PulverizerInputArray = [
	<astralsorcery:blockcustomsandore>,
	<minecraft:emerald_ore>,
	<minecraft:ender_pearl>,
	<extrautils2:ingredients>,
	<minecraft:netherrack>,
	<enderio:item_alloy_ingot:7>,
	<minecraft:flower_pot>,
	<thermalfoundation:material:132>,
	<draconicevolution:draconium_ingot>,
	<magneticraft:ores:4>,
	<mekanism:ingot>,
	<thermalfoundation:ore:5>,
	<thermalfoundation:material:165>,
	<magneticraft:ores:3>,
	<libvulpes:ore0>,
	<thaumcraft:ore_amber>,
	<thermalfoundation:material:160>,
	<minecraft:blaze_rod>,
	<bewitchment:opal_ore>,
	<thermalfoundation:ore:2>,
	<astralsorcery:itemcraftingcomponent:1>,
	<mekanism:ingot:1>,
	<minecraft:diamond_ore>,
	<thermalfoundation:material:134>,
	<minecraft:coal_ore>,
	<draconicevolution:draconium_ore>,
	<thermalfoundation:material:131>,
	<libvulpes:productingot:7>,
	<actuallyadditions:block_misc:3>,
	<thermalfoundation:material:162>,
	<minecraft:quartz>,
	<minecraft:dye:4>,
	<minecraft:stone_slab:7>,
	<astralsorcery:blockcustomore:1>,
	<minecraft:lapis_ore>,
	<minecraft:glowstone>,
	<thermalfoundation:material:129>,
	<minecraft:clay>,
	<minecraft:iron_ore>,
	<libvulpes:productingot:3>,
	<thermalfoundation:ore:7>,
	<forestry:resources>,
	<thermalfoundation:material:166>,
	<thermalfoundation:material:161>,
	<thermalfoundation:material:2050>,
	<minecraft:noteblock>,
	<minecraft:coal>,
	<minecraft:quartz_block>,
	<minecraft:coal:1>,
	<minecraft:nether_brick>,
	<thermalfoundation:ore:8>,
	<thermalfoundation:ore:4>,
	<minecraft:magma>,
	<thermalfoundation:material:163>,
	<minecraft:fishing_rod>,
	<minecraft:gold_ore>,
	<minecraft:log>,
	<magneticraft:ingots:5>,
	<minecraft:diamond>,
	<minecraft:quartz_stairs>,
	<nuclearcraft:ore:3>,
	<minecraft:jukebox>,
	<appliedenergistics2:material>,
	<thermalfoundation:ore:6>,
	<ic2:misc_resource:1>,
	<advancedrocketry:productingot:1>,
	<thermalfoundation:material:130>,
	<minecraft:prismarine_shard>,
	<mekanism:oreblock>,
	<bewitchment:garnet_ore>,
	<thermalfoundation:ore:1>,
	<thermalfoundation:material:133>,
	<bewitchment:salt_ore>,
	<nuclearcraft:ore:6>,
	<thermalfoundation:material:128>,
	<minecraft:gold_ingot>,
	<minecraft:quartz_block:1>,
	<thermalfoundation:ore>,
	<appliedenergistics2:quartz_ore>,
	<magneticraft:ingots:14>,
	<libvulpes:productgem>,
	<minecraft:glass>,
	<thermalfoundation:material:136>,
	<minecraft:emerald>,
	<appliedenergistics2:sky_stone_block>,
	<minecraft:redstone_ore>,
	<minecraft:obsidian>,
	<thermalfoundation:ore:3>,
	<minecraft:gravel>,
	<minecraft:nether_brick_stairs>,
	<minecraft:bone>,
	<minecraft:planks>,
	<thermalfoundation:material:167>,
	<minecraft:stone_slab:4>,
	<minecraft:shield>,
	<minecraft:quartz_ore>,
	<minecraft:glass_bottle>,
	<appliedenergistics2:material:7>,
	<thermalfoundation:material:164>,
	<thermalfoundation:material:2052>,
	<minecraft:iron_ingot>,
	<actuallyadditions:item_misc:5>,
	<bewitchment:amethyst_ore>,
	<nuclearcraft:ore:4>,
	<libvulpes:ore0:8>,
	<minecraft:brick_stairs>,
	<redstonearsenal:material:32>,
	<advancedrocketry:productingot>,
	<minecraft:bow>,
	<minecraft:quartz_block:2>,
	<thermalfoundation:material:2048>,
	<minecraft:brick_block>,
	<minecraft:stone_slab:6>,	
	<nuclearcraft:ingot:3>,
	<nuclearcraft:ingot:4>,
	<nuclearcraft:ingot:5>,
	<nuclearcraft:ingot:6>,
	<nuclearcraft:ingot:7>,
	<nuclearcraft:ingot:8>,
	<nuclearcraft:ingot:9>,
	<nuclearcraft:ingot:10>,
	<nuclearcraft:ingot:11>,	
	<nuclearcraft:ingot_oxide>,
	<nuclearcraft:ingot_oxide:1>,
	<nuclearcraft:ingot_oxide:2>,
	<nuclearcraft:ingot_oxide:3>,
	<nuclearcraft:ore:5>,	
	<nuclearcraft:ore:7>,	
	<nuclearcraft:gem>,
	<nuclearcraft:gem:1>,
	<nuclearcraft:gem:2>,
	<nuclearcraft:gem:3>,
	<nuclearcraft:gem:4>,	
	<thaumcraft:cluster>,
	<thaumcraft:cluster:1>,
	<thaumcraft:cluster:2>,
	<thaumcraft:cluster:3>,
	<thaumcraft:cluster:4>,
	<thaumcraft:cluster:5>,
	<thaumcraft:cluster:6>,
	<thaumcraft:cluster:7>,	
	<thermalfoundation:ore_fluid>,
	<thermalfoundation:ore_fluid:1>,
	<thermalfoundation:ore_fluid:2>,
	<thermalfoundation:ore_fluid:3>,
	<thermalfoundation:ore_fluid:4>,	
	
	<appliedenergistics2:certus_quartz_pickaxe>,
	<appliedenergistics2:certus_quartz_sword>,
	<appliedenergistics2:certus_quartz_axe>,
	<appliedenergistics2:certus_quartz_spade>,
	<appliedenergistics2:certus_quartz_hoe>,
	<appliedenergistics2:certus_quartz_cutting_knife>,
	<appliedenergistics2:certus_quartz_wrench>,
	<appliedenergistics2:nether_quartz_pickaxe>,
	<appliedenergistics2:nether_quartz_sword>,
	<appliedenergistics2:nether_quartz_axe>,
	<appliedenergistics2:nether_quartz_spade>,
	<appliedenergistics2:nether_quartz_hoe>,
	<appliedenergistics2:nether_quartz_cutting_knife>,
	<appliedenergistics2:nether_quartz_wrench>,	
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_sword>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_hoe>,	
	<minecraft:diamond_pickaxe>,
	<minecraft:diamond_sword>,
	<minecraft:diamond_axe>,
	<minecraft:diamond_shovel>,
	<minecraft:diamond_hoe>,
	<minecraft:diamond_helmet>,
	<minecraft:diamond_chestplate>,
	<minecraft:diamond_leggings>,
	<minecraft:diamond_boots>,
	<minecraft:diamond_horse_armor>,
	<thermalfoundation:tool.hammer_diamond>,
	<thermalfoundation:tool.excavator_diamond>,
	<thermalfoundation:tool.fishing_rod_diamond>,
	<thermalfoundation:tool.sickle_diamond>,
	<thermalfoundation:tool.shield_diamond>,
	<thermalfoundation:tool.bow_diamond>,
	<thermalfoundation:tool.shears_diamond>,
	
	<minecraft:stained_hardened_clay>,
	<minecraft:stained_hardened_clay:1>,
	<minecraft:stained_hardened_clay:2>,
	<minecraft:stained_hardened_clay:3>,
	<minecraft:stained_hardened_clay:4>,
	<minecraft:stained_hardened_clay:5>,
	<minecraft:stained_hardened_clay:6>,
	<minecraft:stained_hardened_clay:7>,
	<minecraft:stained_hardened_clay:8>,
	<minecraft:stained_hardened_clay:9>,
	<minecraft:stained_hardened_clay:10>,
	<minecraft:stained_hardened_clay:11>,
	<minecraft:stained_hardened_clay:12>,
	<minecraft:stained_hardened_clay:13>,
	<minecraft:stained_hardened_clay:14>,
	<minecraft:stained_hardened_clay:15>,
	<minecraft:stained_glass>,
	<minecraft:stained_glass:1>,
	<minecraft:stained_glass:2>,
	<minecraft:stained_glass:3>,
	<minecraft:stained_glass:4>,
	<minecraft:stained_glass:5>,
	<minecraft:stained_glass:6>,
	<minecraft:stained_glass:7>,
	<minecraft:stained_glass:8>,
	<minecraft:stained_glass:9>,
	<minecraft:stained_glass:10>,
	<minecraft:stained_glass:11>,
	<minecraft:stained_glass:12>,
	<minecraft:stained_glass:13>,
	<minecraft:stained_glass:14>,
	<minecraft:stained_glass:15>
] as IItemStack[];

for item in PulverizerInputArray {
	Pulverizer.removeRecipe(item);
}

Pulverizer.addRecipe(<thermalfoundation:material:800>*8, <minecraft:log>, 4800);
Pulverizer.addRecipe(<thermalfoundation:material:800>*2, <minecraft:planks>, 2400);
Pulverizer.addRecipe(<thermalfoundation:material:800>*3, <minecraft:oak_stairs>, 2400);
Pulverizer.addRecipe(<thermalfoundation:material:800>, <minecraft:wooden_slab>, 2400);
Pulverizer.addRecipe(<ic2:dust:13>, <minecraft:glass>, 2400);
Pulverizer.addRecipe(<minecraft:gravel>, <minecraft:cobblestone>, 4800, <minecraft:sand>, 15);
Pulverizer.addRecipe(<minecraft:sand>, <minecraft:gravel>, 4800, <minecraft:flint>, 15);
Pulverizer.addRecipe(<buildinggadgets:constructionblockpowder>, <minecraft:sand>, 4800, <ic2:dust:13>, 15);
Pulverizer.addRecipe(<ic2:dust:1>*4, <minecraft:clay>, 4800, <ic2:dust:13>, 15);
Pulverizer.addRecipe(<ic2:dust:30>, <minecraft:netherrack>, 4800, <thermalfoundation:material:771>, 20);
Pulverizer.addRecipe(<nuclearcraft:dust:8>*2, <actuallyadditions:item_crystal:3>, 4800);
Pulverizer.addRecipe(<minecraft:blaze_powder>*4, <minecraft:blaze_rod>, 2400, <thermalfoundation:material:771>, 20);
Pulverizer.addRecipe(<thermalfoundation:material:770>*4, <minecraft:obsidian>, 10000);

//redstone furnace

//induction smelter

//macerator

//ore washing plant

//thermal centrifuge

//rock crusher

//loop
for i, item in SmeltableArray {
	val dust = SmeltableDustArray[i];
	furnace.addRecipe(item, dust);
	Grindstone.addRecipe(dust, item, 2);
	AACrusher.addRecipe(dust, item);
	MGGrinder.addRecipe(item, dust, null, 0.0, 50.0, false);
	SagMill.addRecipe([dust], [1.0], item, "NONE", 4800);
	Pulverizer.addRecipe(dust, item, 4800);
}

for i, item in NotSmeltableArray {
	val dust = NotSmeltableDustArray[i];
	Grindstone.addRecipe(dust, item, 2);
	AACrusher.addRecipe(dust, item);
	MGGrinder.addRecipe(item, dust, null, 0.0, 50.0, false);
	SagMill.addRecipe([dust], [1.0], item, "NONE", 4800);
	Pulverizer.addRecipe(dust, item, 4800);
}

for i, ore in MetalOresArray {
	val crushed = CrushedArray[i];
	val purified = PurifiedArray[i];
	val rockychunk = RockyChunkArray[i];
	val chunk = ChunkArray[i];
	val dust = MetalDustArray[i];
	val by1 = MetalByproductPrimary[i];
	val by2 = MetalByproductSecondary[i];
	
	//tier2
	AACrusher.addRecipe(crushed*2, ore);
	AACrusher.addRecipe(dust, crushed, <ic2:dust:15>, 10);
	
	//tier3-1
	MGGrinder.addRecipe(ore, rockychunk, <minecraft:gravel>, 0.15, 50.0, false);
	Sieve.addRecipe(rockychunk, chunk, 1.0, by1, 0.2, <ic2:dust:15>, 0.1, 100.0, true);
	AACrusher.addRecipe(dust*2, chunk);
	
	//tier3-2
	SagMill.addRecipe([crushed, by1], [1.0, 0.2], ore, "CHANCE_ONLY", 4800);
	Pulverizer.addRecipe(crushed, ore, 4800, by1, 20);
	SagMill.addRecipe([dust*2], [1.0], chunk, "NONE", 4800);
	Pulverizer.addRecipe(dust*2, chunk, 4800);
	SagMill.addRecipe([dust], [1.0], crushed, "NONE", 4800);
	Pulverizer.addRecipe(dust, crushed, 4800);
}

for i, ore in GemOresArray {
	val res = GemResultArray[i];
	AACrusher.addRecipe(res, ore);
	MGGrinder.addRecipe(ore, res, null, 0.0, 50.0, false);
	SagMill.addRecipe([res], [1.0], ore, "NONE", 4800);
	Pulverizer.addRecipe(res, ore, 4800);
}

//post-process
Grindstone.removeRecipe(<minecraft:diamond>);
Grindstone.removeRecipe(<minecraft:emerald>);
Grindstone.removeRecipe(<minecraft:blaze_rod>);