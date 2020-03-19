#priority 998
##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

##vars
val JEIHideArray = [
	<actuallyadditions:item_dust>, <appliedenergistics2:material:49>, <bloodmagic:component:19>, <enderio:item_material:24>, <ic2:dust:8>, <magneticraft:dusts>, <mekanism:dust>, <libvulpes:productdust:1>,
	<ic2:plate:3>, <thaumcraft:plate:1>, <libvulpes:productplate:1>, <jaopca:item_dustsmalliron>,
	
	<actuallyadditions:item_dust:1>, <appliedenergistics2:material:51>, <bloodmagic:component:20>, <enderio:item_material:25>, <ic2:dust:7>, <magneticraft:dusts:1>, <mekanism:dust:1>, <libvulpes:productdust:2>,
	<ic2:plate:2>, <libvulpes:productplate:2>, <jaopca:item_dustsmallgold>,
	
	<forestry:ingot_copper>, <ic2:ingot:2>, <magneticraft:ingots:2>, <mekanism:ingot:5>, <mysticalworld:copper_ingot>, <nuclearcraft:ingot>, <projectred-core:resource_item:100>, <libvulpes:productingot:4>,
	<forestry:resources:1>, <ic2:resource:1>, <magneticraft:ores>, <mekanism:oreblock:1>,<mysticalworld:copper_ore>, <nuclearcraft:ore>, <libvulpes:ore0:4>,
	<enderio:item_material:26>, <ic2:dust:4>, <magneticraft:dusts:2>, <mekanism:dust:3>, <mysticalworld:copper_dust>, <nuclearcraft:dust>, <libvulpes:productdust:4>,
	<forestry:resource_storage:1>, <ic2:resource:6>, <magneticraft:storage_blocks>, <mekanism:basicblock:12>, <mysticalworld:copper_block>, <nuclearcraft:ingot_block>, <libvulpes:metal0:4>,
	<magicbees:orepart:3>, <magneticraft:nuggets:2>, <mekanism:nugget:5>, <mysticalworld:copper_nugget>, <thaumcraft:nugget:1>, <libvulpes:productnugget:4>,
	<ic2:plate:1>, <libvulpes:productplate:4>, <forestry:gear_copper>, <mysticalworld:copper_dust_tiny>, <jaopca:item_dustsmallcopper>,
	
	<forestry:ingot_tin>, <ic2:ingot:6>, <magneticraft:ingots:13>, <mekanism:ingot:6>, <nuclearcraft:ingot:1>, <projectred-core:resource_item:101>, <libvulpes:productingot:5>,
	<forestry:resources:2>, <ic2:resource:3>, <mekanism:oreblock:2>, <nuclearcraft:ore:1>, <libvulpes:ore0:5>,
	<enderio:item_material:27>, <ic2:dust:17>, <magneticraft:dusts:13>, <mekanism:dust:4>, <nuclearcraft:dust:1>, <libvulpes:productdust:5>,
	<forestry:resource_storage:2>, <ic2:resource:9>, <mekanism:basicblock:13>, <nuclearcraft:ingot_block:1>, <libvulpes:metal0:5>,
	<magicbees:orepart:4>, <magneticraft:nuggets:13>, <mekanism:nugget:6>, <thaumcraft:nugget:2>, <libvulpes:productnugget:5>,
	<ic2:plate:8>, <libvulpes:productplate:5>, <forestry:gear_tin>, <jaopca:item_dustsmalltin>,
	
	<bewitchment:silver_ingot>, <ic2:ingot:4>, <magneticraft:ingots:12>, <mysticalworld:silver_ingot>, <nuclearcraft:ingot:13>, <projectred-core:resource_item:102>, 
	<bewitchment:silver_ore>, <magneticraft:ores:1>,
	<ic2:dust:14>, <magneticraft:dusts:12>, <mekanism:dust:5>, <mysticalworld:silver_dust>, <nuclearcraft:dust:13>,
	<bewitchment:block_of_silver>, <ic2:resource:15>, <mysticalworld:silver_block>, <nuclearcraft:ingot_block:13>, 
	<bewitchment:silver_nugget>, <magneticraft:nuggets:12>, <mysticalworld:silver_nugget>, <thaumcraft:nugget:3>, 
	<bewitchment:silver_plate>, <jaopca:item_dustsmallsilver>,
	
	<ic2:ingot:3>, <magneticraft:ingots:3>, <nuclearcraft:ingot:2>, 
	<ic2:resource:2>, <nuclearcraft:ore:2>, 
	<ic2:dust:10>, <magneticraft:dusts:3>, <mekanism:dust:6>, <nuclearcraft:dust:2>,
	<ic2:resource:7>, <magneticraft:storage_blocks:1>, <nuclearcraft:ingot_block:2>, 
	<magneticraft:nuggets:3>, <thaumcraft:nugget:4>,
	<ic2:plate:5>, <nuclearcraft:tiny_dust_lead>, <jaopca:item_dustsmalllead>,
	
	<magneticraft:ingots:7>, <nuclearcraft:ingot:12>, <libvulpes:productingot:9>,
	<libvulpes:ore0:9>, 
	<magneticraft:dusts:7>, <nuclearcraft:dust:12>, <libvulpes:productdust:9>,
	<nuclearcraft:ingot_block:12>, <libvulpes:metal0:9>,
	<libvulpes:productnugget:9>,
	<libvulpes:productplate:9>, <jaopca:item_dustsmallaluminium>,
	
	<magneticraft:ingots:10>, <magneticraft:nuggets:10>, <magneticraft:dusts:10>, <jaopca:item_dustsmallplatinum>,
	
	<libvulpes:productingot:10>, <libvulpes:ore0:10>, <libvulpes:productdust:10>, <libvulpes:metal0:10>, <libvulpes:productnugget:10>, <libvulpes:productplate:10>, 
	<ic2:misc_resource:2>, <jaopca:item_dustsmalliridium>,
	
	<forestry:ingot_bronze>, <ic2:ingot:1>, <mekanism:ingot:2>, <nuclearcraft:alloy>, 
	<forestry:resource_storage:3>, <ic2:resource:5>, <mekanism:basicblock:1>,
	<magicbees:orepart:5>, <mekanism:nugget:2>, <ic2:dust>, <ic2:plate>, <forestry:gear_bronze>,
	
	<ic2:ingot:5>, <magneticraft:ingots:6>, <nuclearcraft:alloy:5>, <mekanism:ingot:4>, <tcomplement:materials:10>, <libvulpes:productingot:6>, 
	<magneticraft:dusts:6>, <mekanism:otherdust:1>, <libvulpes:productdust:6>,
	<ic2:resource:8>, <mekanism:basicblock:5>, <tcomplement:storage:1>, <libvulpes:metal0:6>,
	<magneticraft:nuggets:6>, <mekanism:nugget:4>, <tcomplement:materials:20>, <libvulpes:productnugget:6>,
	<ic2:plate:7>, <libvulpes:productplate:6>, <libvulpes:productgear:6>,
	
	<plustic:invarnugget>, <plustic:invaringot>, <plustic:invarblock>,
	
	<actuallyadditions:item_dust:6>, <bloodmagic:component:21>, <enderio:item_material:23>, <ic2:dust:2>, <threng:material:3>, <nuclearcraft:gem_dust:7>
	
] as IItemStack[];

##recipes
//iron
<thermalfoundation:material>.displayName = "Iron Dust";
recipes.remove(<ore:dustIron>);
recipes.remove(<ore:dustTinyIron>);
recipes.remove(<ore:dustSmallIron>);
recipes.remove(<ore:plateIron>);
recipes.remove(<ore:gearIron>);
recipes.addShapeless("ORE_DustToTinyDustIron", <ic2:dust:21>*9, [<ore:dustIron>]);
recipes.addShaped("ORE_TinyDustToDustIron", <thermalfoundation:material>, [
	[<ore:dustTinyIron>, <ore:dustTinyIron>, <ore:dustTinyIron>],
	[<ore:dustTinyIron>, <ore:dustTinyIron>, <ore:dustTinyIron>],
	[<ore:dustTinyIron>, <ore:dustTinyIron>, <ore:dustTinyIron>]
]);

//gold
<thermalfoundation:material:1>.displayName = "Gold Dust";
recipes.remove(<ore:dustGold>);
recipes.remove(<ore:dustTinyGold>);
recipes.remove(<ore:dustSmallGold>);
recipes.remove(<ore:plateGold>);
recipes.remove(<ore:gearGold>);
recipes.addShapeless("ORE_DustToTinyDustGold", <ic2:dust:20>*9, [<ore:dustGold>]);
recipes.addShaped("ORE_TinyDustToDustGold", <thermalfoundation:material:1>, [
	[<ore:dustTinyGold>, <ore:dustTinyGold>, <ore:dustTinyGold>],
	[<ore:dustTinyGold>, <ore:dustTinyGold>, <ore:dustTinyGold>],
	[<ore:dustTinyGold>, <ore:dustTinyGold>, <ore:dustTinyGold>]
]);

//copper
<thermalfoundation:material:64>.displayName = "Copper Dust";
<thermalfoundation:storage>.displayName = "Copper Block";
recipes.remove(<ore:blockCopper>);
recipes.remove(<ore:ingotCopper>);
recipes.remove(<ore:nuggetCopper>);
recipes.remove(<ore:dustCopper>);
recipes.remove(<ore:dustTinyCopper>);
recipes.remove(<ore:dustSmallCopper>);
recipes.remove(<ore:plateCopper>);
recipes.remove(<ore:gearCopper>);
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

//tin
<thermalfoundation:material:65>.displayName = "Tin Dust";
<thermalfoundation:storage:1>.displayName = "Tin Block";
recipes.remove(<ore:blockTin>);
recipes.remove(<ore:ingotTin>);
recipes.remove(<ore:nuggetTin>);
recipes.remove(<ore:dustTin>);
recipes.remove(<ore:dustTinyTin>);
recipes.remove(<ore:dustSmallTin>);
recipes.remove(<ore:plateTin>);
recipes.remove(<ore:gearTin>);
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
recipes.addShapeless("ORE_DustToTinyDustTin", <ic2:dust:19>*9, [<ore:dustTin>]);
recipes.addShaped("ORE_TinyDustToDustTin", <thermalfoundation:material:65>, [
	[<ore:dustTinyTin>, <ore:dustTinyTin>, <ore:dustTinyTin>],
	[<ore:dustTinyTin>, <ore:dustTinyTin>, <ore:dustTinyTin>],
	[<ore:dustTinyTin>, <ore:dustTinyTin>, <ore:dustTinyTin>]
]);

//silver
<thermalfoundation:material:66>.displayName = "Silver Dust";
<thermalfoundation:storage:2>.displayName = "Silver Block";
recipes.remove(<ore:blockSilver>);
recipes.remove(<ore:ingotSilver>);
recipes.remove(<ore:nuggetSilver>);
recipes.remove(<ore:dustSilver>);
recipes.remove(<ore:dustTinySilver>);
recipes.remove(<ore:dustSmallSilver>);
recipes.remove(<ore:plateSilver>);
recipes.remove(<ore:gearSilver>);
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

//lead
<thermalfoundation:material:67>.displayName = "Lead Dust";
<thermalfoundation:storage:3>.displayName = "Lead Block";
recipes.remove(<ore:blockLead>);
recipes.remove(<ore:ingotLead>);
recipes.remove(<ore:nuggetLead>);
recipes.remove(<ore:dustLead>);
recipes.remove(<ore:dustTinyLead>);
recipes.remove(<ore:dustSmallLead>);
recipes.remove(<ore:plateLead>);
recipes.remove(<ore:gearLead>);
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

//aluminium (or aluminum)
<thermalfoundation:material:68>.displayName = "Aluminum Dust";
<thermalfoundation:storage:4>.displayName = "Aluminum Block";
recipes.remove(<ore:blockAluminum>);
recipes.remove(<ore:ingotAluminum>);
recipes.remove(<ore:nuggetAluminum>);
recipes.remove(<ore:dustAluminum>);
recipes.remove(<ore:dustTinyAluminum>);
recipes.remove(<ore:dustSmallAluminum>);
recipes.remove(<ore:plateAluminum>);
recipes.remove(<ore:gearAluminum>);
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
recipes.addShapeless("ORE_DustToTinyDustAluminium", <jaopca:item_dusttinyaluminium>*9, [<ore:dustAluminum>]);
recipes.addShaped("ORE_TinyDustToDustAluminium", <thermalfoundation:material:68>, [
	[<ore:dustTinyAluminum>, <ore:dustTinyAluminum>, <ore:dustTinyAluminum>],
	[<ore:dustTinyAluminum>, <ore:dustTinyAluminum>, <ore:dustTinyAluminum>],
	[<ore:dustTinyAluminum>, <ore:dustTinyAluminum>, <ore:dustTinyAluminum>]
]);

//nickel
<thermalfoundation:material:69>.displayName = "Nickel Dust";
<thermalfoundation:storage:5>.displayName = "Nickel Block";
recipes.remove(<ore:blockNickel>);
recipes.remove(<ore:ingotNickel>);
recipes.remove(<ore:nuggetNickel>);
recipes.remove(<ore:dustNickel>);
recipes.remove(<ore:dustTinyNickel>);
recipes.remove(<ore:dustSmallNickel>);
recipes.remove(<ore:plateNickel>);
recipes.remove(<ore:gearNickel>);
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
recipes.addShapeless("ORE_DustToTinyDustNickel", <jaopca:item_dusttinynickel>*9, [<ore:dustNickel>]);
recipes.addShaped("ORE_TinyDustToDustNickel", <thermalfoundation:material:68>, [
	[<ore:dustTinyNickel>, <ore:dustTinyNickel>, <ore:dustTinyNickel>],
	[<ore:dustTinyNickel>, <ore:dustTinyNickel>, <ore:dustTinyNickel>],
	[<ore:dustTinyNickel>, <ore:dustTinyNickel>, <ore:dustTinyNickel>]
]);

//platinum
<thermalfoundation:material:70>.displayName = "Platinum Dust";
<thermalfoundation:storage:6>.displayName = "Platinum Block";
recipes.remove(<ore:blockPlatinum>);
recipes.remove(<ore:ingotPlatinum>);
recipes.remove(<ore:nuggetPlatinum>);
recipes.remove(<ore:dustPlatinum>);
recipes.remove(<ore:dustTinyPlatinum>);
recipes.remove(<ore:dustSmallPlatinum>);
recipes.remove(<ore:platePlatinum>);
recipes.remove(<ore:gearPlatinum>);
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
recipes.addShapeless("ORE_DustToTinyDustPlatinum", <jaopca:item_dusttinyplatinum>*9, [<ore:dustPlatinum>]);
recipes.addShaped("ORE_TinyDustToDustPlatinum", <thermalfoundation:material:69>, [
	[<ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>],
	[<ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>],
	[<ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>, <ore:dustTinyPlatinum>]
]);

//iridium
<thermalfoundation:material:71>.displayName = "Iridium Dust";
<thermalfoundation:storage:7>.displayName = "Iridium Block";
recipes.remove(<ore:blockIridium>);
recipes.remove(<ore:ingotIridium>);
recipes.remove(<ore:nuggetIridium>);
recipes.remove(<ore:dustIridium>);
recipes.remove(<ore:dustTinyIridium>);
recipes.remove(<ore:dustSmallIridium>);
recipes.remove(<ore:plateIridium>);
recipes.remove(<ore:gearIridium>);
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
recipes.addShapeless("ORE_DustToTinyDustIridium", <jaopca:item_dusttinyiridium>*9, [<ore:dustIridium>]);
recipes.addShaped("ORE_TinyDustToDustIridium", <thermalfoundation:material:71>, [
	[<ore:dustTinyIridium>, <ore:dustTinyIridium>, <ore:dustTinyIridium>],
	[<ore:dustTinyIridium>, <ore:dustTinyIridium>, <ore:dustTinyIridium>],
	[<ore:dustTinyIridium>, <ore:dustTinyIridium>, <ore:dustTinyIridium>]
]);

//bronze
<thermalfoundation:material:99>.displayName = "Bronze Dust";
<thermalfoundation:storage_alloy:3>.displayName = "Bronze Block";
recipes.remove(<ore:blockBronze>);
recipes.remove(<ore:ingotBronze>);
recipes.remove(<ore:nuggetBronze>);
recipes.remove(<ore:dustBronze>);
recipes.remove(<ore:dustTinyBronze>);
recipes.remove(<ore:plateBronze>);
recipes.remove(<ore:gearBronze>);
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
<thermalfoundation:material:96>.displayName = "Steel Dust";
<thermalfoundation:storage_alloy>.displayName = "Steel Block";
recipes.remove(<ore:blockSteel>);
recipes.remove(<ore:ingotSteel>);
recipes.remove(<ore:nuggetSteel>);
recipes.remove(<ore:dustSteel>);
recipes.remove(<ore:plateSteel>);
recipes.remove(<ore:gearSteel>);
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
<thermalfoundation:material:97>.displayName = "Electrum Dust";
<thermalfoundation:storage_alloy:1>.displayName = "Electrum Block";
recipes.remove(<ore:blockElectrum>);
recipes.remove(<ore:ingotElectrum>);
recipes.remove(<ore:nuggetElectrum>);
recipes.remove(<ore:dustElectrum>);
recipes.remove(<ore:plateElectrum>);
recipes.remove(<ore:gearElectrum>);

//invar
<thermalfoundation:material:98>.displayName = "Invar Dust";
<thermalfoundation:storage_alloy:2>.displayName = "Invar Block";
recipes.remove(<ore:blockInvar>);
recipes.remove(<ore:ingotInvar>);
recipes.remove(<ore:nuggetInvar>);
recipes.remove(<ore:dustInvar>);
recipes.remove(<ore:plateInvar>);
recipes.remove(<ore:gearInvar>);

//constantan
<thermalfoundation:material:100>.displayName = "Constantan Dust";
<thermalfoundation:storage_alloy:4>.displayName = "Constantan Block";
recipes.remove(<ore:blockConstantan>);
recipes.remove(<ore:ingotConstantan>);
recipes.remove(<ore:nuggetConstantan>);
recipes.remove(<ore:dustConstantan>);
recipes.remove(<ore:plateConstantan>);
recipes.remove(<ore:gearConstantan>);

//coal
<thermalfoundation:material:768>.displayName = "Coal Dust";


for item in JEIHideArray {
	for oredict in item.ores {
		oredict.remove(item);
	}
	//JEI.hide(item);
}
