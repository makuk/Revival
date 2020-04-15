#priority 997
##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

##vars
val JEIHideArray = [
	<actuallyadditions:item_dust>, <appliedenergistics2:material:49>, <bloodmagic:component:19>, <enderio:item_material:24>, <ic2:dust:8>, <magneticraft:dusts>, <mekanism:dust>, <libvulpes:productdust:1>,
	<ic2:plate:3>, <thaumcraft:plate:1>, <libvulpes:productplate:1>,
	
	<actuallyadditions:item_dust:1>, <appliedenergistics2:material:51>, <bloodmagic:component:20>, <enderio:item_material:25>, <ic2:dust:7>, <magneticraft:dusts:1>, <mekanism:dust:1>, <libvulpes:productdust:2>,
	<ic2:plate:2>, <libvulpes:productplate:2>,
	
	<forestry:ingot_copper>, <ic2:ingot:2>, <magneticraft:ingots:2>, <mekanism:ingot:5>, <mysticalworld:copper_ingot>, <nuclearcraft:ingot>, <projectred-core:resource_item:100>, <libvulpes:productingot:4>,
	<forestry:resources:1>, <ic2:resource:1>, <magneticraft:ores>, <mekanism:oreblock:1>,<mysticalworld:copper_ore>, <nuclearcraft:ore>, <libvulpes:ore0:4>,
	<enderio:item_material:26>, <ic2:dust:4>, <magneticraft:dusts:2>, <mekanism:dust:3>, <mysticalworld:copper_dust>, <nuclearcraft:dust>, <libvulpes:productdust:4>,
	<forestry:resource_storage:1>, <ic2:resource:6>, <magneticraft:storage_blocks>, <mekanism:basicblock:12>, <mysticalworld:copper_block>, <nuclearcraft:ingot_block>, <libvulpes:metal0:4>,
	<magicbees:orepart:3>, <magneticraft:nuggets:2>, <mekanism:nugget:5>, <mysticalworld:copper_nugget>, <thaumcraft:nugget:1>, <libvulpes:productnugget:4>,
	<ic2:plate:1>, <libvulpes:productplate:4>, <forestry:gear_copper>, <mysticalworld:copper_dust_tiny>, 
	
	<forestry:ingot_tin>, <ic2:ingot:6>, <magneticraft:ingots:13>, <mekanism:ingot:6>, <nuclearcraft:ingot:1>, <projectred-core:resource_item:101>, <libvulpes:productingot:5>,
	<forestry:resources:2>, <ic2:resource:3>, <mekanism:oreblock:2>, <nuclearcraft:ore:1>, <libvulpes:ore0:5>,
	<enderio:item_material:27>, <ic2:dust:17>, <magneticraft:dusts:13>, <mekanism:dust:4>, <nuclearcraft:dust:1>, <libvulpes:productdust:5>,
	<forestry:resource_storage:2>, <ic2:resource:9>, <mekanism:basicblock:13>, <nuclearcraft:ingot_block:1>, <libvulpes:metal0:5>,
	<magicbees:orepart:4>, <magneticraft:nuggets:13>, <mekanism:nugget:6>, <thaumcraft:nugget:2>, <libvulpes:productnugget:5>,
	<ic2:plate:8>, <libvulpes:productplate:5>, <forestry:gear_tin>, 
	
	<bewitchment:silver_ingot>, <ic2:ingot:4>, <magneticraft:ingots:12>, <mysticalworld:silver_ingot>, <nuclearcraft:ingot:13>, <projectred-core:resource_item:102>, 
	<bewitchment:silver_ore>, <magneticraft:ores:1>,
	<ic2:dust:14>, <magneticraft:dusts:12>, <mekanism:dust:5>, <mysticalworld:silver_dust>, <nuclearcraft:dust:13>,
	<bewitchment:block_of_silver>, <ic2:resource:15>, <mysticalworld:silver_block>, <nuclearcraft:ingot_block:13>, 
	<bewitchment:silver_nugget>, <magneticraft:nuggets:12>, <mysticalworld:silver_nugget>, <thaumcraft:nugget:3>, 
	<bewitchment:silver_plate>, <mysticalworld:silver_dust_tiny>,
	
	<ic2:ingot:3>, <magneticraft:ingots:3>, <nuclearcraft:ingot:2>, 
	<ic2:resource:2>, <nuclearcraft:ore:2>, 
	<ic2:dust:10>, <magneticraft:dusts:3>, <mekanism:dust:6>, <nuclearcraft:dust:2>,
	<ic2:resource:7>, <magneticraft:storage_blocks:1>, <nuclearcraft:ingot_block:2>, 
	<magneticraft:nuggets:3>, <thaumcraft:nugget:4>,
	<ic2:plate:5>, <nuclearcraft:tiny_dust_lead>, 
	
	<magneticraft:ingots:7>, <nuclearcraft:ingot:12>, <libvulpes:productingot:9>,
	<libvulpes:ore0:9>, 
	<magneticraft:dusts:7>, <nuclearcraft:dust:12>, <libvulpes:productdust:9>,
	<nuclearcraft:ingot_block:12>, <libvulpes:metal0:9>,
	<libvulpes:productnugget:9>,
	<libvulpes:productplate:9>, 
	
	<magneticraft:ingots:10>, <magneticraft:nuggets:10>, <magneticraft:dusts:10>, 
	
	<libvulpes:productingot:10>, <libvulpes:ore0:10>, <libvulpes:productdust:10>, <libvulpes:metal0:10>, <libvulpes:productnugget:10>, <libvulpes:productplate:10>, 
	<ic2:misc_resource:2>, 
	
	<mekanism:otherdust:4>, <ic2:dust:11>,
	
	<magneticraft:ingots:9>, <magneticraft:nuggets:9>, <magneticraft:dusts:9>,
	
	<ic2:ingot:8>, <ic2:resource:10>, <ic2:resource:4>,
	
	<magneticraft:ores:2>, <magneticraft:storage_blocks:2>, <magneticraft:ingots:4>, <magneticraft:nuggets:4>,
	
	<magneticraft:ingots:11>, <magneticraft:nuggets:11>,
	
	<forestry:ingot_bronze>, <ic2:ingot:1>, <mekanism:ingot:2>, <nuclearcraft:alloy>, 
	<forestry:resource_storage:3>, <ic2:resource:5>, <mekanism:basicblock:1>,
	<magicbees:orepart:5>, <mekanism:nugget:2>, <ic2:dust>, <ic2:plate>, <forestry:gear_bronze>,
	
	<ic2:ingot:5>, <magneticraft:ingots:6>, <nuclearcraft:alloy:5>, <mekanism:ingot:4>, <tcomplement:materials:10>, <libvulpes:productingot:6>, 
	<magneticraft:dusts:6>, <mekanism:otherdust:1>, <libvulpes:productdust:6>,
	<ic2:resource:8>, <mekanism:basicblock:5>, <tcomplement:storage:1>, <libvulpes:metal0:6>,
	<magneticraft:nuggets:6>, <mekanism:nugget:4>, <tcomplement:materials:20>, <libvulpes:productnugget:6>,
	<ic2:plate:7>, <libvulpes:productplate:6>, <libvulpes:productgear:6>,
	
	<plustic:invarnugget>, <plustic:invaringot>, <plustic:invarblock>,
	
	<actuallyadditions:item_dust:6>, <bloodmagic:component:21>, <enderio:item_material:23>, <ic2:dust:2>, <threng:material:3>, <nuclearcraft:gem_dust:7>,
	
	<magneticraft:dusts:4>,
	
	<ic2:dust:5>, <mekanism:otherdust>, <nuclearcraft:gem_dust>,
	
	<enderio:item_material:32>, <ic2:dust:9>,
	
	<actuallyadditions:item_dust:5>, <nuclearcraft:gem_dust:2>, <enderio:item_material:33>
	
] as IItemStack[];

function removeInOreDict(oredict as IOreDictEntry) {
	for item in oredict.items {
		recipes.remove(item);
	}
}

function removeInFurnace(oredict as IOreDictEntry) {
	for item in oredict.items {
		furnace.remove(item);
	}
}

##recipes
//iron
removeInOreDict(<ore:dustIron>);
removeInOreDict(<ore:dustTinyIron>);
removeInOreDict(<ore:dustSmallIron>);
removeInOreDict(<ore:plateIron>);
removeInOreDict(<ore:gearIron>);
recipes.addShapeless("ORE_DustToTinyDustIron", <ic2:dust:21>*9, [<ore:dustIron>]);
recipes.addShaped("ORE_TinyDustToDustIron", <thermalfoundation:material>, [
	[<ore:dustTinyIron>, <ore:dustTinyIron>, <ore:dustTinyIron>],
	[<ore:dustTinyIron>, <ore:dustTinyIron>, <ore:dustTinyIron>],
	[<ore:dustTinyIron>, <ore:dustTinyIron>, <ore:dustTinyIron>]
]);
removeInFurnace(<ore:ingotIron>);

//gold
removeInOreDict(<ore:dustGold>);
removeInOreDict(<ore:dustTinyGold>);
removeInOreDict(<ore:dustSmallGold>);
removeInOreDict(<ore:plateGold>);
removeInOreDict(<ore:gearGold>);
recipes.addShapeless("ORE_DustToTinyDustGold", <ic2:dust:20>*9, [<ore:dustGold>]);
recipes.addShaped("ORE_TinyDustToDustGold", <thermalfoundation:material:1>, [
	[<ore:dustTinyGold>, <ore:dustTinyGold>, <ore:dustTinyGold>],
	[<ore:dustTinyGold>, <ore:dustTinyGold>, <ore:dustTinyGold>],
	[<ore:dustTinyGold>, <ore:dustTinyGold>, <ore:dustTinyGold>]
]);
removeInFurnace(<ore:ingotGold>);

//copper
removeInOreDict(<ore:blockCopper>);
removeInOreDict(<ore:ingotCopper>);
removeInOreDict(<ore:nuggetCopper>);
removeInOreDict(<ore:dustCopper>);
removeInOreDict(<ore:dustTinyCopper>);
removeInOreDict(<ore:dustSmallCopper>);
removeInOreDict(<ore:plateCopper>);
removeInOreDict(<ore:gearCopper>);
recipes.addShapeless("ORE_BlockToIngotCopper", <thermalfoundation:material:128>*9, [<ore:blockCopper>]);
recipes.addShaped("ORE_IngotToBlockCopper", <thermalfoundation:storage>, [
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]
]);
recipes.addShapeless("ORE_IngotToNuggetCopper", <thermalfoundation:material:192>*9, [<ore:ingotCopper>]);
recipes.addShaped("ORE_NuggetToIngotCopper", <thermalfoundation:material:128>, [
	[<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>],
	[<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>],
	[<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>]
]);
recipes.addShapeless("ORE_DustToTinyDustCopper", <ic2:dust:19>*9, [<ore:dustCopper>]);
recipes.addShaped("ORE_TinyDustToDustCopper", <thermalfoundation:material:64>, [
	[<ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyCopper>],
	[<ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyCopper>],
	[<ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyCopper>]
]);
removeInFurnace(<ore:ingotCopper>);

//tin
removeInOreDict(<ore:blockTin>);
removeInOreDict(<ore:ingotTin>);
removeInOreDict(<ore:nuggetTin>);
removeInOreDict(<ore:dustTin>);
removeInOreDict(<ore:dustTinyTin>);
removeInOreDict(<ore:dustSmallTin>);
removeInOreDict(<ore:plateTin>);
removeInOreDict(<ore:gearTin>);
recipes.addShapeless("ORE_BlockToIngotTin", <thermalfoundation:material:130>*9, [<ore:blockTin>]);
recipes.addShaped("ORE_IngotToBlockTin", <thermalfoundation:storage:1>, [
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]
]);
recipes.addShapeless("ORE_IngotToNuggetTin", <thermalfoundation:material:193>*9, [<ore:ingotTin>]);
recipes.addShaped("ORE_NuggetToIngotTin", <thermalfoundation:material:130>, [
	[<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>],
	[<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>],
	[<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>]
]);
recipes.addShapeless("ORE_DustToTinyDustTin", <ic2:dust:28>*9, [<ore:dustTin>]);
recipes.addShaped("ORE_TinyDustToDustTin", <thermalfoundation:material:65>, [
	[<ore:dustTinyTin>, <ore:dustTinyTin>, <ore:dustTinyTin>],
	[<ore:dustTinyTin>, <ore:dustTinyTin>, <ore:dustTinyTin>],
	[<ore:dustTinyTin>, <ore:dustTinyTin>, <ore:dustTinyTin>]
]);
removeInFurnace(<ore:ingotTin>);

//silver
removeInOreDict(<ore:blockSilver>);
removeInOreDict(<ore:ingotSilver>);
removeInOreDict(<ore:nuggetSilver>);
removeInOreDict(<ore:dustSilver>);
removeInOreDict(<ore:dustTinySilver>);
removeInOreDict(<ore:dustSmallSilver>);
removeInOreDict(<ore:plateSilver>);
removeInOreDict(<ore:gearSilver>);
recipes.addShapeless("ORE_BlockToIngotSilver", <thermalfoundation:material:130>*9, [<ore:blockSilver>]);
recipes.addShaped("ORE_IngotToBlockSilver", <thermalfoundation:storage:2>, [
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]
]);
recipes.addShapeless("ORE_IngotToNuggetSilver", <thermalfoundation:material:194>*9, [<ore:ingotSilver>]);
recipes.addShaped("ORE_NuggetToIngotSilver", <thermalfoundation:material:130>, [
	[<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>],
	[<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>],
	[<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>]
]);
recipes.addShapeless("ORE_DustToTinyDustSilver", <ic2:dust:26>*9, [<ore:dustSilver>]);
recipes.addShaped("ORE_TinyDustToDustSilver", <thermalfoundation:material:66>, [
	[<ore:dustTinySilver>, <ore:dustTinySilver>, <ore:dustTinySilver>],
	[<ore:dustTinySilver>, <ore:dustTinySilver>, <ore:dustTinySilver>],
	[<ore:dustTinySilver>, <ore:dustTinySilver>, <ore:dustTinySilver>]
]);
removeInFurnace(<ore:ingotSilver>);

//lead
removeInOreDict(<ore:blockLead>);
removeInOreDict(<ore:ingotLead>);
removeInOreDict(<ore:nuggetLead>);
removeInOreDict(<ore:dustLead>);
removeInOreDict(<ore:dustTinyLead>);
removeInOreDict(<ore:dustSmallLead>);
removeInOreDict(<ore:plateLead>);
removeInOreDict(<ore:gearLead>);
recipes.addShapeless("ORE_BlockToIngotLead", <thermalfoundation:material:131>*9, [<ore:blockLead>]);
recipes.addShaped("ORE_IngotToBlockLead", <thermalfoundation:storage:3>, [
	[<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
	[<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
	[<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]
]);
recipes.addShapeless("ORE_IngotToNuggetLead", <thermalfoundation:material:195>*9, [<ore:ingotLead>]);
recipes.addShaped("ORE_NuggetToIngotLead", <thermalfoundation:material:131>, [
	[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
	[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
	[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]
]);
recipes.addShapeless("ORE_DustToTinyDustLead", <ic2:dust:23>*9, [<ore:dustLead>]);
recipes.addShaped("ORE_TinyDustToDustLead", <thermalfoundation:material:67>, [
	[<ore:dustTinyLead>, <ore:dustTinyLead>, <ore:dustTinyLead>],
	[<ore:dustTinyLead>, <ore:dustTinyLead>, <ore:dustTinyLead>],
	[<ore:dustTinyLead>, <ore:dustTinyLead>, <ore:dustTinyLead>]
]);
removeInFurnace(<ore:ingotLead>);

//aluminium (or aluminum)
removeInOreDict(<ore:blockAluminum>);
removeInOreDict(<ore:ingotAluminum>);
removeInOreDict(<ore:nuggetAluminum>);
removeInOreDict(<ore:dustAluminum>);
removeInOreDict(<ore:dustTinyAluminum>);
removeInOreDict(<ore:dustSmallAluminum>);
removeInOreDict(<ore:plateAluminum>);
removeInOreDict(<ore:gearAluminum>);
recipes.addShapeless("ORE_BlockToIngotAluminium", <thermalfoundation:material:132>*9, [<ore:blockAluminum>]);
recipes.addShaped("ORE_IngotToBlockAluminium", <thermalfoundation:storage:4>, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);
recipes.addShapeless("ORE_IngotToNuggetAluminium", <thermalfoundation:material:196>*9, [<ore:ingotAluminum>]);
recipes.addShaped("ORE_NuggetToIngotAluminium", <thermalfoundation:material:132>, [
	[<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>],
	[<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>],
	[<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>]
]);
//recipes.addShapeless("ORE_DustToTinyDustAluminium", <contenttweaker:item_dusttinyaluminium>*9, [<ore:dustAluminum>]);
recipes.addShaped("ORE_TinyDustToDustAluminium", <thermalfoundation:material:68>, [
	[<ore:dustTinyAluminum>, <ore:dustTinyAluminum>, <ore:dustTinyAluminum>],
	[<ore:dustTinyAluminum>, <ore:dustTinyAluminum>, <ore:dustTinyAluminum>],
	[<ore:dustTinyAluminum>, <ore:dustTinyAluminum>, <ore:dustTinyAluminum>]
]);
removeInFurnace(<ore:ingotAluminum>);

//nickel
removeInOreDict(<ore:blockNickel>);
removeInOreDict(<ore:ingotNickel>);
removeInOreDict(<ore:nuggetNickel>);
removeInOreDict(<ore:dustNickel>);
removeInOreDict(<ore:dustTinyNickel>);
removeInOreDict(<ore:dustSmallNickel>);
removeInOreDict(<ore:plateNickel>);
removeInOreDict(<ore:gearNickel>);
recipes.addShapeless("ORE_BlockToIngotNickel", <thermalfoundation:material:133>*9, [<ore:blockNickel>]);
recipes.addShaped("ORE_IngotToBlockNickel", <thermalfoundation:storage:5>, [
	[<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>],
	[<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>],
	[<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]
]);
recipes.addShapeless("ORE_IngotToNuggetNickel", <thermalfoundation:material:197>*9, [<ore:ingotNickel>]);
recipes.addShaped("ORE_NuggetToIngotNickel", <thermalfoundation:material:133>, [
	[<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>],
	[<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>],
	[<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>]
]);
//recipes.addShapeless("ORE_DustToTinyDustNickel", <contenttweaker:item_dusttinynickel>*9, [<ore:dustNickel>]);
recipes.addShaped("ORE_TinyDustToDustNickel", <thermalfoundation:material:69>, [
	[<ore:dustTinyNickel>, <ore:dustTinyNickel>, <ore:dustTinyNickel>],
	[<ore:dustTinyNickel>, <ore:dustTinyNickel>, <ore:dustTinyNickel>],
	[<ore:dustTinyNickel>, <ore:dustTinyNickel>, <ore:dustTinyNickel>]
]);
removeInFurnace(<ore:ingotNickel>);

//platinum
removeInOreDict(<ore:blockPlatinum>);
removeInOreDict(<ore:ingotPlatinum>);
removeInOreDict(<ore:nuggetPlatinum>);
removeInOreDict(<ore:dustPlatinum>);
removeInOreDict(<ore:dustTinyPlatinum>);
removeInOreDict(<ore:dustSmallPlatinum>);
removeInOreDict(<ore:platePlatinum>);
removeInOreDict(<ore:gearPlatinum>);
recipes.addShapeless("ORE_BlockToIngotPlatinum", <thermalfoundation:material:134>*9, [<ore:blockPlatinum>]);
recipes.addShaped("ORE_IngotToBlockPlatinum", <thermalfoundation:storage:6>, [
	[<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>],
	[<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>],
	[<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>]
]);
recipes.addShapeless("ORE_IngotToNuggetPlatinum", <thermalfoundation:material:198>*9, [<ore:ingotPlatinum>]);
recipes.addShaped("ORE_NuggetToIngotPlatinum", <thermalfoundation:material:134>, [
	[<ore:nuggetPlatinum>, <ore:nuggetPlatinum>, <ore:nuggetPlatinum>],
	[<ore:nuggetPlatinum>, <ore:nuggetPlatinum>, <ore:nuggetPlatinum>],
	[<ore:nuggetPlatinum>, <ore:nuggetPlatinum>, <ore:nuggetPlatinum>]
]);
//recipes.addShapeless("ORE_DustToTinyDustPlatinum", <contenttweaker:item_dusttinyplatinum>*9, [<ore:dustPlatinum>]);
recipes.addShaped("ORE_TinyDustToDustPlatinum", <thermalfoundation:material:70>, [
	[<ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>],
	[<ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>],
	[<ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>]
]);
removeInFurnace(<ore:ingotPlatinum>);

//iridium
removeInOreDict(<ore:blockIridium>);
removeInOreDict(<ore:ingotIridium>);
removeInOreDict(<ore:nuggetIridium>);
removeInOreDict(<ore:dustIridium>);
removeInOreDict(<ore:dustTinyIridium>);
removeInOreDict(<ore:dustSmallIridium>);
removeInOreDict(<ore:plateIridium>);
removeInOreDict(<ore:gearIridium>);
recipes.addShapeless("ORE_BlockToIngotIridium", <thermalfoundation:material:135>*9, [<ore:blockIridium>]);
recipes.addShaped("ORE_IngotToBlockIridium", <thermalfoundation:storage:7>, [
	[<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>],
	[<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>],
	[<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>]
]);
recipes.addShapeless("ORE_IngotToNuggetIridium", <thermalfoundation:material:199>*9, [<ore:ingotIridium>]);
recipes.addShaped("ORE_NuggetToIngotIridium", <thermalfoundation:material:135>, [
	[<ore:nuggetIridium>, <ore:nuggetIridium>, <ore:nuggetIridium>],
	[<ore:nuggetIridium>, <ore:nuggetIridium>, <ore:nuggetIridium>],
	[<ore:nuggetIridium>, <ore:nuggetIridium>, <ore:nuggetIridium>]
]);
//recipes.addShapeless("ORE_DustToTinyDustIridium", <contenttweaker:item_dusttinyiridium>*9, [<ore:dustIridium>]);
recipes.addShaped("ORE_TinyDustToDustIridium", <thermalfoundation:material:71>, [
	[<ore:dustTinyIridium>, <ore:dustTinyIridium>, <ore:dustTinyIridium>],
	[<ore:dustTinyIridium>, <ore:dustTinyIridium>, <ore:dustTinyIridium>],
	[<ore:dustTinyIridium>, <ore:dustTinyIridium>, <ore:dustTinyIridium>]
]);
removeInFurnace(<ore:ingotIridium>);

//mithril
removeInOreDict(<ore:blockMithril>);
removeInOreDict(<ore:ingotMithril>);
removeInOreDict(<ore:nuggetMithril>);
removeInOreDict(<ore:dustMithril>);
removeInOreDict(<ore:dustTinyMithril>);
removeInOreDict(<ore:dustSmallMithril>);
removeInOreDict(<ore:plateMithril>);
removeInOreDict(<ore:gearMithril>);
recipes.addShapeless("ORE_BlockToIngotMithril", <thermalfoundation:material:136>*9, [<ore:blockMithril>]);
recipes.addShaped("ORE_IngotToBlockMithril", <thermalfoundation:storage:7>, [
	[<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>],
	[<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>],
	[<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>]
]);
recipes.addShapeless("ORE_IngotToNuggetMithril", <thermalfoundation:material:200>*9, [<ore:ingotMithril>]);
recipes.addShaped("ORE_NuggetToIngotMithril", <thermalfoundation:material:136>, [
	[<ore:nuggetMithril>, <ore:nuggetMithril>, <ore:nuggetMithril>],
	[<ore:nuggetMithril>, <ore:nuggetMithril>, <ore:nuggetMithril>],
	[<ore:nuggetMithril>, <ore:nuggetMithril>, <ore:nuggetMithril>]
]);
//recipes.addShapeless("ORE_DustToTinyDustMithril", <contenttweaker:item_dusttinymithril>*9, [<ore:dustMithril>]);
recipes.addShaped("ORE_TinyDustToDustMithril", <thermalfoundation:material:72>, [
	[<ore:dustTinyMithril>, <ore:dustTinyMithril>, <ore:dustTinyMithril>],
	[<ore:dustTinyMithril>, <ore:dustTinyMithril>, <ore:dustTinyMithril>],
	[<ore:dustTinyMithril>, <ore:dustTinyMithril>, <ore:dustTinyMithril>]
]);
removeInFurnace(<ore:ingotMithril>);

//boron
removeInOreDict(<ore:blockBoron>);
removeInOreDict(<ore:ingotBoron>);
removeInOreDict(<ore:nuggetBoron>);
removeInOreDict(<ore:dustBoron>);
removeInOreDict(<ore:dustTinyBoron>);
removeInOreDict(<ore:dustSmallBoron>);
removeInOreDict(<ore:plateBoron>);
removeInOreDict(<ore:gearBoron>);
recipes.addShapeless("ORE_BlockToIngotBoron", <nuclearcraft:ingot:5>*9, [<ore:blockBoron>]);
recipes.addShaped("ORE_IngotToBlockBoron", <nuclearcraft:ingot_block:5>, [
	[<ore:ingotBoron>, <ore:ingotBoron>, <ore:ingotBoron>],
	[<ore:ingotBoron>, <ore:ingotBoron>, <ore:ingotBoron>],
	[<ore:ingotBoron>, <ore:ingotBoron>, <ore:ingotBoron>]
]);
//recipes.addShapeless("ORE_IngotToNuggetBoron", <contenttweaker:item_nuggetboron>*9, [<ore:ingotBoron>]);
recipes.addShaped("ORE_NuggetToIngotBoron", <nuclearcraft:ingot:5>, [
	[<ore:nuggetBoron>, <ore:nuggetBoron>, <ore:nuggetBoron>],
	[<ore:nuggetBoron>, <ore:nuggetBoron>, <ore:nuggetBoron>],
	[<ore:nuggetBoron>, <ore:nuggetBoron>, <ore:nuggetBoron>]
]);
//recipes.addShapeless("ORE_DustToTinyDustBoron", <contenttweaker:item_dusttinyboron>*9, [<ore:dustBoron>]);
recipes.addShaped("ORE_TinyDustToDustBoron", <nuclearcraft:dust:5>, [
	[<ore:dustTinyBoron>, <ore:dustTinyBoron>, <ore:dustTinyBoron>],
	[<ore:dustTinyBoron>, <ore:dustTinyBoron>, <ore:dustTinyBoron>],
	[<ore:dustTinyBoron>, <ore:dustTinyBoron>, <ore:dustTinyBoron>]
]);
removeInFurnace(<ore:ingotBoron>);

//lithium
removeInOreDict(<ore:blockLithium>);
removeInOreDict(<ore:ingotLithium>);
removeInOreDict(<ore:nuggetLithium>);
removeInOreDict(<ore:dustLithium>);
removeInOreDict(<ore:dustTinyLithium>);
removeInOreDict(<ore:dustSmallLithium>);
removeInOreDict(<ore:plateLithium>);
removeInOreDict(<ore:gearLithium>);
recipes.addShapeless("ORE_BlockToIngotLithium", <nuclearcraft:ingot:6>*9, [<ore:blockLithium>]);
recipes.addShaped("ORE_IngotToBlockLithium", <nuclearcraft:ingot_block:6>, [
	[<ore:ingotLithium>, <ore:ingotLithium>, <ore:ingotLithium>],
	[<ore:ingotLithium>, <ore:ingotLithium>, <ore:ingotLithium>],
	[<ore:ingotLithium>, <ore:ingotLithium>, <ore:ingotLithium>]
]);
//recipes.addShapeless("ORE_IngotToNuggetLithium", <contenttweaker:item_nuggetlithium>*9, [<ore:ingotLithium>]);
recipes.addShaped("ORE_NuggetToIngotLithium", <nuclearcraft:ingot:6>, [
	[<ore:nuggetLithium>, <ore:nuggetLithium>, <ore:nuggetLithium>],
	[<ore:nuggetLithium>, <ore:nuggetLithium>, <ore:nuggetLithium>],
	[<ore:nuggetLithium>, <ore:nuggetLithium>, <ore:nuggetLithium>]
]);
recipes.addShapeless("ORE_DustToTinyDustLithium", <ic2:dust:24>*9, [<ore:dustLithium>]);
recipes.addShaped("ORE_TinyDustToDustLithium", <nuclearcraft:dust:6>, [
	[<ore:dustTinyLithium>, <ore:dustTinyLithium>, <ore:dustTinyLithium>],
	[<ore:dustTinyLithium>, <ore:dustTinyLithium>, <ore:dustTinyLithium>],
	[<ore:dustTinyLithium>, <ore:dustTinyLithium>, <ore:dustTinyLithium>]
]);
removeInFurnace(<ore:ingotLithium>);

//magnesium
removeInOreDict(<ore:blockMagnesium>);
removeInOreDict(<ore:ingotMagnesium>);
removeInOreDict(<ore:nuggetMagnesium>);
removeInOreDict(<ore:dustMagnesium>);
removeInOreDict(<ore:dustTinyMagnesium>);
removeInOreDict(<ore:dustSmallMagnesium>);
removeInOreDict(<ore:plateMagnesium>);
removeInOreDict(<ore:gearMagnesium>);
recipes.addShapeless("ORE_BlockToIngotMagnesium", <nuclearcraft:ingot:7>*9, [<ore:blockMagnesium>]);
recipes.addShaped("ORE_IngotToBlockMagnesium", <nuclearcraft:ingot_block:7>, [
	[<ore:ingotMagnesium>, <ore:ingotMagnesium>, <ore:ingotMagnesium>],
	[<ore:ingotMagnesium>, <ore:ingotMagnesium>, <ore:ingotMagnesium>],
	[<ore:ingotMagnesium>, <ore:ingotMagnesium>, <ore:ingotMagnesium>]
]);
//recipes.addShapeless("ORE_IngotToNuggetMagnesium", <contenttweaker:item_nuggetmagnesium>*9, [<ore:ingotMagnesium>]);
recipes.addShaped("ORE_NuggetToIngotMagnesium", <nuclearcraft:ingot:7>, [
	[<ore:nuggetMagnesium>, <ore:nuggetMagnesium>, <ore:nuggetMagnesium>],
	[<ore:nuggetMagnesium>, <ore:nuggetMagnesium>, <ore:nuggetMagnesium>],
	[<ore:nuggetMagnesium>, <ore:nuggetMagnesium>, <ore:nuggetMagnesium>]
]);
//recipes.addShapeless("ORE_DustToTinyDustMagnesium", <contenttweaker:item_dusttinymagnesium>*9, [<ore:dustMagnesium>]);
recipes.addShaped("ORE_TinyDustToDustMagnesium", <nuclearcraft:dust:7>, [
	[<ore:dustTinyMagnesium>, <ore:dustTinyMagnesium>, <ore:dustTinyMagnesium>],
	[<ore:dustTinyMagnesium>, <ore:dustTinyMagnesium>, <ore:dustTinyMagnesium>],
	[<ore:dustTinyMagnesium>, <ore:dustTinyMagnesium>, <ore:dustTinyMagnesium>]
]);
removeInFurnace(<ore:ingotMagnesium>);

//tungsten
removeInOreDict(<ore:blockTungsten>);
removeInOreDict(<ore:ingotTungsten>);
removeInOreDict(<ore:nuggetTungsten>);
removeInOreDict(<ore:dustTungsten>);
removeInOreDict(<ore:dustTinyTungsten>);
removeInOreDict(<ore:dustSmallTungsten>);
removeInOreDict(<ore:plateTungsten>);
removeInOreDict(<ore:gearTungsten>);
recipes.addShapeless("ORE_BlockToIngotTungsten", <magneticraft:ingots:5>*9, [<ore:blockTungsten>]);
recipes.addShaped("ORE_IngotToBlockTungsten", <magneticraft:storage_blocks:3>, [
	[<ore:ingotTungsten>, <ore:ingotTungsten>, <ore:ingotTungsten>],
	[<ore:ingotTungsten>, <ore:ingotTungsten>, <ore:ingotTungsten>],
	[<ore:ingotTungsten>, <ore:ingotTungsten>, <ore:ingotTungsten>]
]);
recipes.addShapeless("ORE_IngotToNuggetTungsten", <magneticraft:nuggets:5>*9, [<ore:ingotTungsten>]);
recipes.addShaped("ORE_NuggetToIngotTungsten", <magneticraft:ingots:5>, [
	[<ore:nuggetTungsten>, <ore:nuggetTungsten>, <ore:nuggetTungsten>],
	[<ore:nuggetTungsten>, <ore:nuggetTungsten>, <ore:nuggetTungsten>],
	[<ore:nuggetTungsten>, <ore:nuggetTungsten>, <ore:nuggetTungsten>]
]);
//recipes.addShapeless("ORE_DustToTinyDustTungsten", <contenttweaker:item_dusttinytungsten>*9, [<ore:dustTungsten>]);
recipes.addShaped("ORE_TinyDustToDustTungsten", <magneticraft:dusts:5>, [
	[<ore:dustTinyTungsten>, <ore:dustTinyTungsten>, <ore:dustTinyTungsten>],
	[<ore:dustTinyTungsten>, <ore:dustTinyTungsten>, <ore:dustTinyTungsten>],
	[<ore:dustTinyTungsten>, <ore:dustTinyTungsten>, <ore:dustTinyTungsten>]
]);
removeInFurnace(<ore:ingotTungsten>);

//cobalt
removeInOreDict(<ore:blockCobalt>);
removeInOreDict(<ore:ingotCobalt>);
removeInOreDict(<ore:nuggetCobalt>);
removeInOreDict(<ore:dustCobalt>);
removeInOreDict(<ore:dustTinyCobalt>);
removeInOreDict(<ore:dustSmallCobalt>);
removeInOreDict(<ore:plateCobalt>);
removeInOreDict(<ore:gearCobalt>);
recipes.addShapeless("ORE_BlockToIngotCobalt", <tconstruct:ingots>*9, [<ore:blockCobalt>]);
recipes.addShaped("ORE_IngotToBlockCobalt", <tconstruct:metal>, [
	[<ore:ingotCobalt>, <ore:ingotCobalt>, <ore:ingotCobalt>],
	[<ore:ingotCobalt>, <ore:ingotCobalt>, <ore:ingotCobalt>],
	[<ore:ingotCobalt>, <ore:ingotCobalt>, <ore:ingotCobalt>]
]);
recipes.addShapeless("ORE_IngotToNuggetCobalt", <tconstruct:nuggets>*9, [<ore:ingotCobalt>]);
recipes.addShaped("ORE_NuggetToIngotCobalt", <tconstruct:ingots>, [
	[<ore:nuggetCobalt>, <ore:nuggetCobalt>, <ore:nuggetCobalt>],
	[<ore:nuggetCobalt>, <ore:nuggetCobalt>, <ore:nuggetCobalt>],
	[<ore:nuggetCobalt>, <ore:nuggetCobalt>, <ore:nuggetCobalt>]
]);
//recipes.addShapeless("ORE_DustToTinyDustCobalt", <contenttweaker:item_dusttinycobalt>*9, [<ore:dustCobalt>]);
recipes.addShaped("ORE_TinyDustToDustCobalt", <enderio:item_material:31>, [
	[<ore:dustTinyCobalt>, <ore:dustTinyCobalt>, <ore:dustTinyCobalt>],
	[<ore:dustTinyCobalt>, <ore:dustTinyCobalt>, <ore:dustTinyCobalt>],
	[<ore:dustTinyCobalt>, <ore:dustTinyCobalt>, <ore:dustTinyCobalt>]
]);
removeInFurnace(<ore:ingotCobalt>);

//ardite
removeInOreDict(<ore:blockArdite>);
removeInOreDict(<ore:ingotArdite>);
removeInOreDict(<ore:nuggetArdite>);
removeInOreDict(<ore:dustArdite>);
removeInOreDict(<ore:dustTinyArdite>);
removeInOreDict(<ore:dustSmallArdite>);
removeInOreDict(<ore:plateArdite>);
removeInOreDict(<ore:gearArdite>);
recipes.addShapeless("ORE_BlockToIngotArdite", <tconstruct:ingots:1>*9, [<ore:blockArdite>]);
recipes.addShaped("ORE_IngotToBlockArdite", <tconstruct:metal:1>, [
	[<ore:ingotArdite>, <ore:ingotArdite>, <ore:ingotArdite>],
	[<ore:ingotArdite>, <ore:ingotArdite>, <ore:ingotArdite>],
	[<ore:ingotArdite>, <ore:ingotArdite>, <ore:ingotArdite>]
]);
recipes.addShapeless("ORE_IngotToNuggetArdite", <tconstruct:nuggets:1>*9, [<ore:ingotArdite>]);
recipes.addShaped("ORE_NuggetToIngotArdite", <tconstruct:ingots:1>, [
	[<ore:nuggetArdite>, <ore:nuggetArdite>, <ore:nuggetArdite>],
	[<ore:nuggetArdite>, <ore:nuggetArdite>, <ore:nuggetArdite>],
	[<ore:nuggetArdite>, <ore:nuggetArdite>, <ore:nuggetArdite>]
]);
//recipes.addShapeless("ORE_DustToTinyDustArdite", <contenttweaker:item_dusttinyardite>*9, [<ore:dustArdite>]);
recipes.addShaped("ORE_TinyDustToDustArdite", <enderio:item_material:31>, [
	[<ore:dustTinyArdite>, <ore:dustTinyArdite>, <ore:dustTinyArdite>],
	[<ore:dustTinyArdite>, <ore:dustTinyArdite>, <ore:dustTinyArdite>],
	[<ore:dustTinyArdite>, <ore:dustTinyArdite>, <ore:dustTinyArdite>]
]);
removeInFurnace(<ore:ingotArdite>);

//thorium
removeInOreDict(<ore:blockThorium>);
removeInOreDict(<ore:ingotThorium>);
removeInOreDict(<ore:nuggetThorium>);
removeInOreDict(<ore:dustThorium>);
removeInOreDict(<ore:dustTinyThorium>);
removeInOreDict(<ore:dustSmallThorium>);
removeInOreDict(<ore:plateThorium>);
removeInOreDict(<ore:gearThorium>);
recipes.addShapeless("ORE_BlockToIngotThorium", <nuclearcraft:ingot:3>*9, [<ore:blockThorium>]);
recipes.addShaped("ORE_IngotToBlockThorium", <nuclearcraft:ingot_block:3>, [
	[<ore:ingotThorium>, <ore:ingotThorium>, <ore:ingotThorium>],
	[<ore:ingotThorium>, <ore:ingotThorium>, <ore:ingotThorium>],
	[<ore:ingotThorium>, <ore:ingotThorium>, <ore:ingotThorium>]
]);
//recipes.addShapeless("ORE_IngotToNuggetThorium", <contenttweaker:item_nuggetthorium>*9, [<ore:ingotThorium>]);
recipes.addShaped("ORE_NuggetToIngotThorium", <nuclearcraft:ingot:3>, [
	[<ore:nuggetThorium>, <ore:nuggetThorium>, <ore:nuggetThorium>],
	[<ore:nuggetThorium>, <ore:nuggetThorium>, <ore:nuggetThorium>],
	[<ore:nuggetThorium>, <ore:nuggetThorium>, <ore:nuggetThorium>]
]);
//recipes.addShapeless("ORE_DustToTinyDustThorium", <contenttweaker:item_dusttinythorium>*9, [<ore:dustThorium>]);
recipes.addShaped("ORE_TinyDustToDustThorium", <nuclearcraft:dust:3>, [
	[<ore:dustTinyThorium>, <ore:dustTinyThorium>, <ore:dustTinyThorium>],
	[<ore:dustTinyThorium>, <ore:dustTinyThorium>, <ore:dustTinyThorium>],
	[<ore:dustTinyThorium>, <ore:dustTinyThorium>, <ore:dustTinyThorium>]
]);
removeInFurnace(<ore:ingotThorium>);

//uranium
removeInOreDict(<ore:blockUranium>);
removeInOreDict(<ore:ingotUranium>);
removeInOreDict(<ore:nuggetUranium>);
removeInOreDict(<ore:dustUranium>);
removeInOreDict(<ore:dustTinyUranium>);
removeInOreDict(<ore:dustSmallUranium>);
removeInOreDict(<ore:plateUranium>);
removeInOreDict(<ore:gearUranium>);
recipes.addShapeless("ORE_BlockToIngotUranium", <nuclearcraft:ingot:4>*9, [<ore:blockUranium>]);
recipes.addShaped("ORE_IngotToBlockUranium", <nuclearcraft:ingot_block:4>, [
	[<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>],
	[<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>],
	[<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>]
]);
//recipes.addShapeless("ORE_IngotToNuggetUranium", <contenttweaker:item_nuggeturanium>*9, [<ore:ingotUranium>]);
recipes.addShaped("ORE_NuggetToIngotUranium", <nuclearcraft:ingot:4>, [
	[<ore:nuggetUranium>, <ore:nuggetUranium>, <ore:nuggetUranium>],
	[<ore:nuggetUranium>, <ore:nuggetUranium>, <ore:nuggetUranium>],
	[<ore:nuggetUranium>, <ore:nuggetUranium>, <ore:nuggetUranium>]
]);
//recipes.addShapeless("ORE_DustToTinyDustUranium", <contenttweaker:item_dusttinyuranium>*9, [<ore:dustUranium>]);
recipes.addShaped("ORE_TinyDustToDustUranium", <nuclearcraft:dust:4>, [
	[<ore:dustTinyUranium>, <ore:dustTinyUranium>, <ore:dustTinyUranium>],
	[<ore:dustTinyUranium>, <ore:dustTinyUranium>, <ore:dustTinyUranium>],
	[<ore:dustTinyUranium>, <ore:dustTinyUranium>, <ore:dustTinyUranium>]
]);
removeInFurnace(<ore:ingotUranium>);

//titanium
removeInOreDict(<ore:blockTitanium>);
removeInOreDict(<ore:ingotTitanium>);
removeInOreDict(<ore:nuggetTitanium>);
removeInOreDict(<ore:dustTitanium>);
removeInOreDict(<ore:dustTinyTitanium>);
removeInOreDict(<ore:dustSmallTitanium>);
removeInOreDict(<ore:plateTitanium>);
removeInOreDict(<ore:gearTitanium>);
recipes.addShapeless("ORE_BlockToIngotTitanium", <libvulpes:productingot:7>*9, [<ore:blockTitanium>]);
recipes.addShaped("ORE_IngotToBlockTitanium", <libvulpes:metal0:7>, [
	[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>],
	[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>],
	[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>]
]);
recipes.addShapeless("ORE_IngotToNuggetTitanium", <libvulpes:productnugget:7>*9, [<ore:ingotTitanium>]);
recipes.addShaped("ORE_NuggetToIngotTitanium", <libvulpes:productingot:7>, [
	[<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>],
	[<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>],
	[<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>]
]);
//recipes.addShapeless("ORE_DustToTinyDustTitanium", <contenttweaker:item_dusttinytitanium>*9, [<ore:dustTitanium>]);
recipes.addShaped("ORE_TinyDustToDustTitanium", <libvulpes:productdust:7>, [
	[<ore:dustTinyTitanium>, <ore:dustTinyTitanium>, <ore:dustTinyTitanium>],
	[<ore:dustTinyTitanium>, <ore:dustTinyTitanium>, <ore:dustTinyTitanium>],
	[<ore:dustTinyTitanium>, <ore:dustTinyTitanium>, <ore:dustTinyTitanium>]
]);
removeInFurnace(<ore:ingotTitanium>);

//osmium
removeInOreDict(<ore:blockOsmium>);
removeInOreDict(<ore:ingotOsmium>);
removeInOreDict(<ore:nuggetOsmium>);
removeInOreDict(<ore:dustOsmium>);
removeInOreDict(<ore:dustTinyOsmium>);
removeInOreDict(<ore:dustSmallOsmium>);
removeInOreDict(<ore:plateOsmium>);
removeInOreDict(<ore:gearOsmium>);
recipes.addShapeless("ORE_BlockToIngotOsmium", <mekanism:ingot:1>*9, [<ore:blockOsmium>]);
recipes.addShaped("ORE_IngotToBlockOsmium", <mekanism:basicblock>, [
	[<ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>],
	[<ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>],
	[<ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>]
]);
recipes.addShapeless("ORE_IngotToNuggetOsmium", <mekanism:nugget:1>*9, [<ore:ingotOsmium>]);
recipes.addShaped("ORE_NuggetToIngotOsmium", <mekanism:ingot:1>, [
	[<ore:nuggetOsmium>, <ore:nuggetOsmium>, <ore:nuggetOsmium>],
	[<ore:nuggetOsmium>, <ore:nuggetOsmium>, <ore:nuggetOsmium>],
	[<ore:nuggetOsmium>, <ore:nuggetOsmium>, <ore:nuggetOsmium>]
]);
//recipes.addShapeless("ORE_DustToTinyDustOsmium", <contenttweaker:item_dusttinyosmium>*9, [<ore:dustOsmium>]);
recipes.addShaped("ORE_TinyDustToDustOsmium", <mekanism:dust:2>, [
	[<ore:dustTinyOsmium>, <ore:dustTinyOsmium>, <ore:dustTinyOsmium>],
	[<ore:dustTinyOsmium>, <ore:dustTinyOsmium>, <ore:dustTinyOsmium>],
	[<ore:dustTinyOsmium>, <ore:dustTinyOsmium>, <ore:dustTinyOsmium>]
]);
removeInFurnace(<ore:ingotOsmium>);

//zinc
removeInFurnace(<ore:ingotZinc>);

//bronze
removeInOreDict(<ore:blockBronze>);
removeInOreDict(<ore:ingotBronze>);
removeInOreDict(<ore:nuggetBronze>);
removeInOreDict(<ore:dustBronze>);
removeInOreDict(<ore:dustTinyBronze>);
removeInOreDict(<ore:plateBronze>);
removeInOreDict(<ore:gearBronze>);
recipes.addShapeless("ORE_BlockToIngotBronze", <thermalfoundation:material:163>*9, [<ore:blockBronze>]);
recipes.addShaped("ORE_IngotToBlockBronze", <thermalfoundation:storage_alloy:3>, [
	[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
	[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
	[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]
]);
recipes.addShapeless("ORE_IngotToNuggetBronze", <thermalfoundation:material:227>*9, [<ore:ingotBronze>]);
recipes.addShaped("ORE_NuggetToIngotBronze", <thermalfoundation:material:163>, [
	[<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>],
	[<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>],
	[<ore:nuggetBronze>, <ore:nuggetBronze>, <ore:nuggetBronze>]
]);
recipes.addShapeless("ORE_DustToTinyDustBronze", <ic2:dust:18>*9, [<ore:dustBronze>]);
recipes.addShaped("ORE_TinyDustToDustBronze", <thermalfoundation:material:99>, [
	[<ore:dustTinyBronze>, <ore:dustTinyBronze>, <ore:dustTinyBronze>],
	[<ore:dustTinyBronze>, <ore:dustTinyBronze>, <ore:dustTinyBronze>],
	[<ore:dustTinyBronze>, <ore:dustTinyBronze>, <ore:dustTinyBronze>]
]);

//steel
removeInOreDict(<ore:blockSteel>);
removeInOreDict(<ore:ingotSteel>);
removeInOreDict(<ore:nuggetSteel>);
removeInOreDict(<ore:dustSteel>);
removeInOreDict(<ore:plateSteel>);
removeInOreDict(<ore:gearSteel>);
recipes.addShapeless("ORE_BlockToIngotSteel", <thermalfoundation:material:160>*9, [<ore:blockSteel>]);
recipes.addShaped("ORE_IngotToBlockSteel", <thermalfoundation:storage_alloy>, [
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);
recipes.addShapeless("ORE_IngotToNuggetSteel", <thermalfoundation:material:224>*9, [<ore:ingotSteel>]);
recipes.addShaped("ORE_NuggetToIngotSteel", <thermalfoundation:material:160>, [
	[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
	[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
	[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>]
]);

//electrum
removeInOreDict(<ore:blockElectrum>);
removeInOreDict(<ore:ingotElectrum>);
removeInOreDict(<ore:nuggetElectrum>);
removeInOreDict(<ore:dustElectrum>);
removeInOreDict(<ore:plateElectrum>);
removeInOreDict(<ore:gearElectrum>);
recipes.addShapeless("ORE_BlockToIngotElectrum", <thermalfoundation:material:161>*9, [<ore:blockElectrum>]);
recipes.addShaped("ORE_IngotToBlockElectrum", <thermalfoundation:storage_alloy:1>, [
	[<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
	[<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
	[<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>]
]);
recipes.addShapeless("ORE_IngotToNuggetElectrum", <thermalfoundation:material:225>*9, [<ore:ingotElectrum>]);
recipes.addShaped("ORE_NuggetToIngotElectrum", <thermalfoundation:material:161>, [
	[<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>],
	[<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>],
	[<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>]
]);

//invar
removeInOreDict(<ore:blockInvar>);
removeInOreDict(<ore:ingotInvar>);
removeInOreDict(<ore:nuggetInvar>);
removeInOreDict(<ore:dustInvar>);
removeInOreDict(<ore:plateInvar>);
removeInOreDict(<ore:gearInvar>);
recipes.addShapeless("ORE_BlockToIngotInvar", <thermalfoundation:material:162>*9, [<ore:blockInvar>]);
recipes.addShaped("ORE_IngotToBlockInvar", <thermalfoundation:storage_alloy:2>, [
	[<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>],
	[<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>],
	[<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]
]);
recipes.addShapeless("ORE_IngotToNuggetInvar", <thermalfoundation:material:226>*9, [<ore:ingotInvar>]);
recipes.addShaped("ORE_NuggetToIngotInvar", <thermalfoundation:material:162>, [
	[<ore:nuggetInvar>, <ore:nuggetInvar>, <ore:nuggetInvar>],
	[<ore:nuggetInvar>, <ore:nuggetInvar>, <ore:nuggetInvar>],
	[<ore:nuggetInvar>, <ore:nuggetInvar>, <ore:nuggetInvar>]
]);

//constantan
removeInOreDict(<ore:blockConstantan>);
removeInOreDict(<ore:ingotConstantan>);
removeInOreDict(<ore:nuggetConstantan>);
removeInOreDict(<ore:dustConstantan>);
removeInOreDict(<ore:plateConstantan>);
removeInOreDict(<ore:gearConstantan>);
recipes.addShapeless("ORE_BlockToIngotConstantan", <thermalfoundation:material:164>*9, [<ore:blockConstantan>]);
recipes.addShaped("ORE_IngotToBlockConstantan", <thermalfoundation:storage_alloy:4>, [
	[<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>],
	[<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>],
	[<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]
]);
recipes.addShapeless("ORE_IngotToNuggetConstantan", <thermalfoundation:material:228>*9, [<ore:ingotConstantan>]);
recipes.addShaped("ORE_NuggetToIngotConstantan", <thermalfoundation:material:164>, [
	[<ore:nuggetConstantan>, <ore:nuggetConstantan>, <ore:nuggetConstantan>],
	[<ore:nuggetConstantan>, <ore:nuggetConstantan>, <ore:nuggetConstantan>],
	[<ore:nuggetConstantan>, <ore:nuggetConstantan>, <ore:nuggetConstantan>]
]);

for item in JEIHideArray {
	for oredict in item.ores {
		oredict.remove(item);
	}
	JEI.hide(item);
}


