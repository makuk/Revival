#priority 999
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;

val itemList = [
	"quartz_mix", "wooden_plate", "reinforced_stick", "boron_arsenide_dust", "arsenic_ingot", "alugentum_ingot", "galvanized_steel_ingot", "galvanized_steel_dust", "brass_ingot", "brass_dust",
	"machine_frame_basic", "machine_frame_hardened", "machine_frame_reinforced", "machine_frame_signalum", "machine_frame_resonant", "diamond_grinder",
	"electrical_steel_dust", "energetic_alloy_dust", "vibrant_alloy_dust", "redstone_alloy_dust", "conductive_iron_dust", "pulsating_iron_dust", "dark_steel_dust", "end_steel_dust", "iron_alloy_dust",
	"crude_steel_dust", "crystalline_alloy_dust", "melodic_alloy_dust", "stellar_alloy_dust", "crystalline_pink_slime_dust", "energetic_silver_dust", "vivid_alloy_dust",
	"red_metal", "orange_metal", "yellow_metal", "green_metal", "blue_metal", "indigo_metal", "purple_metal",
	"crushed_aluminium", "crushed_ardite", "crushed_boron", "crushed_cobalt", "crushed_iridium", "crushed_lithium", 
	"crushed_magnesium", "crushed_nickel", "crushed_osmium", "crushed_platinum", "crushed_thorium", "crushed_titanium", "crushed_tungsten",
	"purified_aluminium", "purified_ardite", "purified_boron", "purified_cobalt", "purified_iridium", "purified_lithium", 
	"purified_magnesium", "purified_nickel", "purified_osmium", "purified_platinum", "purified_thorium", "purified_titanium", "purified_tungsten",
	"rocky_chunk_boron", "rocky_chunk_lithium", "rocky_chunk_magnesium", "rocky_chunk_platinum", "rocky_chunk_iridium", "rocky_chunk_ardite", "rocky_chunk_thorium", "rocky_chunk_titanium", "rocky_chunk_uranium",
	"chunk_boron", "chunk_lithium", "chunk_magnesium", "chunk_platinum", "chunk_iridium", "chunk_ardite", "chunk_thorium", "chunk_titanium", "chunk_uranium"
] as string[];

for itemName in itemList {
	VanillaFactory.createItem(itemName).register();
}