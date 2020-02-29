#priority 998

##imports
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.actuallyadditions.Crusher as AACrusher;
import mods.appliedenergistics2.Grinder;
import mods.extrautils2.Resonator;
import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.Squeezer;
import mods.magneticraft.CrushingTable;
import mods.magneticraft.SluiceBox;
import mods.tcomplement.highoven.HighOven;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

##vars

##recipes
#tier 1
//iron 
furnace.remove(<ore:ingotIron>, <minecraft:iron_ore>);
Melting.removeRecipe(<liquid:iron>, <minecraft:iron_ore>);
HighOven.removeMeltingOverride(<liquid:iron>, <minecraft:iron_ore>);
Melting.addRecipe(<liquid:iron>*144, <ic2:crushed:2>);
Grinder.removeRecipe(<minecraft:iron_ore>);
Grinder.addRecipe(<ic2:crushed:2>, <minecraft:iron_ore>, 4);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks>, 1.0, <magneticraft:chunks>, 0.15, <minecraft:cobblestone>, true);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material>, 1.0, <thermalfoundation:material>, 0.75, null);
furnace.remove(<ore:ingotIron>, <magneticraft:rocky_chunks>);
Melting.removeRecipe(<liquid:iron>, <magneticraft:rocky_chunks>);
HighOven.removeMeltingOverride(<liquid:iron>, <magneticraft:rocky_chunks>);
AACrusher.removeRecipe(<thermalfoundation:material>);
AACrusher.addRecipe(<ic2:crushed:2>*2, <minecraft:iron_ore>);
AACrusher.addRecipe(<thermalfoundation:material>, <minecraft:iron_ingot>);

//gold
furnace.remove(<ore:ingotGold>, <minecraft:gold_ore>);
Melting.removeRecipe(<liquid:gold>, <minecraft:gold_ore>);
HighOven.removeMeltingOverride(<liquid:gold>, <minecraft:gold_ore>);
Melting.addRecipe(<liquid:gold>*144, <ic2:crushed:1>);
Grinder.removeRecipe(<minecraft:gold_ore>);
Grinder.addRecipe(<ic2:crushed:1>, <minecraft:gold_ore>, 8);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:1>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:1>, 1.0, <magneticraft:chunks:1>, 0.15, <minecraft:cobblestone>, true);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:1>, 1.0, <thermalfoundation:material:1>, 0.75, null);
furnace.remove(<ore:ingotGold>, <magneticraft:rocky_chunks:1>);
Melting.removeRecipe(<liquid:gold>, <magneticraft:rocky_chunks:1>);
HighOven.removeMeltingOverride(<liquid:gold>, <magneticraft:rocky_chunks:1>);
AACrusher.removeRecipe(<thermalfoundation:material:1>);
AACrusher.addRecipe(<ic2:crushed:1>*2, <minecraft:gold_ore>);
AACrusher.addRecipe(<thermalfoundation:material:1>, <minecraft:gold_ingot>);

//copper
furnace.remove(<ore:ingotCopper>, <thermalfoundation:ore>);
Melting.removeRecipe(<liquid:copper>, <thermalfoundation:ore>);
HighOven.removeMeltingOverride(<liquid:copper>, <thermalfoundation:ore>);
Melting.addRecipe(<liquid:copper>*144, <ic2:crushed>);
Grinder.removeRecipe(<thermalfoundation:ore>);
Grinder.addRecipe(<ic2:crushed>, <thermalfoundation:ore>, 4);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:2>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:2>, 1.0, <magneticraft:chunks:2>, 0.15, <minecraft:cobblestone>, true);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:64>, 1.0, <thermalfoundation:material:64>, 0.75, null);
furnace.remove(<ore:ingotCopper>, <magneticraft:chunks:2>);
Melting.removeRecipe(<liquid:copper>, <magneticraft:chunks:2>);
HighOven.removeMeltingOverride(<liquid:copper>, <magneticraft:chunks:2>);
AACrusher.removeRecipe(<thermalfoundation:material:64>);
AACrusher.addRecipe(<ic2:crushed>*2, <thermalfoundation:ore>);
AACrusher.addRecipe(<thermalfoundation:material:64>, <thermalfoundation:material:128>);

//tin
furnace.remove(<ore:ingotTin>, <thermalfoundation:ore:1>);
Melting.removeRecipe(<liquid:tin>, <thermalfoundation:ore:1>);
HighOven.removeMeltingOverride(<liquid:tin>, <thermalfoundation:ore:1>);
Melting.addRecipe(<liquid:tin>*144, <ic2:crushed:5>);
Grinder.removeRecipe(<thermalfoundation:ore:1>);
Grinder.addRecipe(<ic2:crushed:5>, <thermalfoundation:ore:1>, 4);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:13>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:13>, 1.0, <magneticraft:chunks:13>, 0.15, <minecraft:cobblestone>, true);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:65>, 1.0, <thermalfoundation:material:65>, 0.75, null);
furnace.remove(<ore:ingotTin>, <magneticraft:rocky_chunks:13>);
Melting.removeRecipe(<liquid:tin>, <magneticraft:rocky_chunks:13>);
HighOven.removeMeltingOverride(<liquid:tin>, <magneticraft:rocky_chunks:13>);
AACrusher.removeRecipe(<thermalfoundation:material:65>);
AACrusher.addRecipe(<ic2:crushed:5>*2, <thermalfoundation:ore:1>);
AACrusher.addRecipe(<thermalfoundation:material:65>, <thermalfoundation:material:129>);

//silver
furnace.remove(<ore:ingotSilver>, <thermalfoundation:ore:2>);
Melting.removeRecipe(<liquid:silver>, <thermalfoundation:ore:2>);
HighOven.removeMeltingOverride(<liquid:silver>, <thermalfoundation:ore:2>);
Melting.addRecipe(<liquid:silver>*144, <ic2:crushed:4>);
Grinder.removeRecipe(<thermalfoundation:ore:2>);
Grinder.addRecipe(<ic2:crushed:4>, <thermalfoundation:ore:2>, 8);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:12>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:12>, 1.0, <magneticraft:chunks:12>, 0.15, <minecraft:cobblestone>, true);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:66>, 1.0, <thermalfoundation:material:66>, 0.75, null);
furnace.remove(<ore:ingotSilver>, <magneticraft:rocky_chunks:12>);
Melting.removeRecipe(<liquid:silver>, <magneticraft:rocky_chunks:12>);
HighOven.removeMeltingOverride(<liquid:silver>, <magneticraft:rocky_chunks:12>);
AACrusher.removeRecipe(<thermalfoundation:material:66>);
AACrusher.addRecipe(<ic2:crushed:4>*2, <thermalfoundation:ore:2>);
AACrusher.addRecipe(<thermalfoundation:material:66>, <thermalfoundation:material:130>);

//lead
furnace.remove(<ore:ingotLead>, <thermalfoundation:ore:3>);
Melting.removeRecipe(<liquid:lead>, <thermalfoundation:ore:3>);
HighOven.removeMeltingOverride(<liquid:lead>, <thermalfoundation:ore:3>);
Melting.addRecipe(<liquid:lead>*144, <ic2:crushed:3>);
Grinder.removeRecipe(<thermalfoundation:ore:3>);
Grinder.addRecipe(<ic2:crushed:3>, <thermalfoundation:ore:3>, 4);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:3>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:3>, 1.0, <magneticraft:chunks:3>, 0.15, <minecraft:cobblestone>, true);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:67>, 1.0, <thermalfoundation:material:67>, 0.75, null);
furnace.remove(<ore:ingotLead>, <magneticraft:rocky_chunks:3>);
Melting.removeRecipe(<liquid:lead>, <magneticraft:rocky_chunks:3>);
HighOven.removeMeltingOverride(<liquid:lead>, <magneticraft:rocky_chunks:3>);
AACrusher.removeRecipe(<thermalfoundation:material:67>);
AACrusher.addRecipe(<ic2:crushed:3>*2, <thermalfoundation:ore:3>);
AACrusher.addRecipe(<thermalfoundation:material:67>, <thermalfoundation:material:131>);

//aluminum
furnace.remove(<ore:ingotAluminum>, <thermalfoundation:ore:4>);
Melting.removeRecipe(<liquid:aluminum>, <thermalfoundation:ore:4>);
HighOven.removeMeltingOverride(<liquid:aluminum>, <thermalfoundation:ore:4>);
Melting.addRecipe(<liquid:aluminum>*144, <jaopca:item_crushedaluminium>);
Grinder.removeRecipe(<thermalfoundation:ore:4>);
Grinder.addRecipe(<jaopca:item_crushedaluminium>, <thermalfoundation:ore:4>, 4);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:7>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:7>, 1.0, <magneticraft:chunks:7>, 0.15, <minecraft:cobblestone>, true);
furnace.remove(<ore:ingotAluminum>, <magneticraft:rocky_chunks:7>);
AACrusher.removeRecipe(<thermalfoundation:material:68>);
AACrusher.addRecipe(<jaopca:item_crushedaluminium>*2, <thermalfoundation:ore:4>);
AACrusher.addRecipe(<thermalfoundation:material:68>, <thermalfoundation:material:132>);

#tier 2
//nickel
furnace.remove(<ore:ingotNickel>, <thermalfoundation:ore:5>);
Melting.removeRecipe(<liquid:nickel>, <thermalfoundation:ore:5>);
HighOven.removeMeltingOverride(<liquid:nickel>, <thermalfoundation:ore:5>);
Melting.addRecipe(<liquid:nickel>*144, <jaopca:item_crushednickel>);
Grinder.removeRecipe(<thermalfoundation:ore:5>);
SluiceBox.removeRecipe(<magneticraft:rocky_chunks:10>);
SluiceBox.addRecipe(<magneticraft:rocky_chunks:10>, 1.0, <magneticraft:chunks:10>, 0.15, <minecraft:cobblestone>, true);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:69>, 1.0, <thermalfoundation:material:69>, 0.75, null);
furnace.remove(<ore:ingotNickel>, <magneticraft:rocky_chunks:10>);
Melting.removeRecipe(<liquid:nickel>, <magneticraft:rocky_chunks:10>);
HighOven.removeMeltingOverride(<liquid:nickel>, <magneticraft:rocky_chunks:10>);
AACrusher.removeRecipe(<thermalfoundation:material:69>);
AACrusher.addRecipe(<jaopca:item_crushednickel>*2, <thermalfoundation:ore:5>);
AACrusher.addRecipe(<thermalfoundation:material:69>, <thermalfoundation:material:133>);

//black quartz
furnace.remove(<actuallyadditions:item_misc:5>);
CrushingTable.addRecipe(<actuallyadditions:block_misc:3>, <actuallyadditions:item_dust:7>, true);
Resonator.add(<actuallyadditions:item_misc:5>, <actuallyadditions:item_dust:7>, 800);
AACrusher.removeRecipe(<actuallyadditions:item_misc:5>);
AACrusher.addRecipe(<actuallyadditions:item_dust:7>*2, <actuallyadditions:block_misc:3>);
AACrusher.addRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:item_misc:5>);

//certus quartz
AACrusher.removeRecipe(<appliedenergistics2:material>);
Grinder.removeRecipe(<appliedenergistics2:quartz_ore>);
Resonator.add(<appliedenergistics2:material>, <appliedenergistics2:material:2>, 1200);
AACrusher.addRecipe(<appliedenergistics2:material:2>*2, <appliedenergistics2:quartz_ore>);
AACrusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>);

//nether quartz
AACrusher.removeRecipe(<minecraft:quartz>);
Grinder.removeRecipe(<minecraft:quartz_ore>);
Resonator.add(<minecraft:quartz>, <appliedenergistics2:material:3>, 1200);
AACrusher.addRecipe(<appliedenergistics2:material:3>*2, <minecraft:quartz_ore>);
AACrusher.addRecipe(<appliedenergistics2:material:3>, <minecraft:quartz>);

Squeezer.removeRecipesWithOutput(<thermalfoundation:material:70>, 1.0, <thermalfoundation:material:70>, 0.75, null);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:72>, 1.0, <thermalfoundation:material:72>, 0.75, null);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:770>, null);
Squeezer.removeRecipesWithOutput(<enderio:item_material:26>, 1.0, <enderio:item_material:26>, 0.75, null);
Squeezer.removeRecipesWithOutput(<enderio:item_material:27>, 1.0, <enderio:item_material:27>, 0.75, null);
Squeezer.removeRecipesWithOutput(<enderio:item_material:30>, 1.0, <enderio:item_material:30>, 0.75, null);
Squeezer.removeRecipesWithOutput(<enderio:item_material:31>, 1.0, <enderio:item_material:31>, 0.75, null);
Squeezer.removeRecipesWithOutput(<magneticraft:dusts:4>, 1.0, <magneticraft:dusts:4>, 0.75, null);
Squeezer.removeRecipesWithOutput(<jaopca:item_dustardite>, 1.0, <jaopca:item_dustardite>, 0.75, null);