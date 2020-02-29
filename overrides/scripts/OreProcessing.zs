#priority 999

##imports
import mods.actuallyadditions.Crusher;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
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

//black quartz
furnace.remove(<actuallyadditions:item_misc:5>, <actuallyadditions:block_misc:3>);
CrushingTable.addRecipe(<actuallyadditions:block_misc:3>, <actuallyadditions:item_dust:7>, true);
Resonator.add(<actuallyadditions:item_misc:5>, <actuallyadditions:item_dust:7>, 800);
Crusher.removeRecipe(<actuallyadditions:item_misc:5>);

Squeezer.removeRecipesWithOutput(<thermalfoundation:material:70>, 1.0, <thermalfoundation:material:70>, 0.75, null);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:72>, 1.0, <thermalfoundation:material:72>, 0.75, null);
Squeezer.removeRecipesWithOutput(<thermalfoundation:material:770>, null);
Squeezer.removeRecipesWithOutput(<enderio:item_material:26>, 1.0, <enderio:item_material:26>, 0.75, null);
Squeezer.removeRecipesWithOutput(<enderio:item_material:27>, 1.0, <enderio:item_material:27>, 0.75, null);
Squeezer.removeRecipesWithOutput(<enderio:item_material:30>, 1.0, <enderio:item_material:30>, 0.75, null);
Squeezer.removeRecipesWithOutput(<enderio:item_material:31>, 1.0, <enderio:item_material:31>, 0.75, null);
Squeezer.removeRecipesWithOutput(<magneticraft:dusts:4>, 1.0, <magneticraft:dusts:4>, 0.75, null);
Squeezer.removeRecipesWithOutput(<jaopca:item_dustardite>, 1.0, <jaopca:item_dustardite>, 0.75, null);