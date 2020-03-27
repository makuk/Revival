#priority 996

##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.artisanworktables.builder.RecipeBuilder;

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