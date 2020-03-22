#priority 999
import mods.dropt.Dropt;

Dropt.list("block_drops")

	.add(Dropt.rule()
		.matchBlocks(["minecraft:quartz_ore"])
		.addDrop(Dropt.drop()
			.items([<minecraft:quartz_ore>])
		)
	)
	
	.add(Dropt.rule()
		.matchBlocks(["appliedenergistics2:quartz_ore"])
		.addDrop(Dropt.drop()
			.items([<appliedenergistics2:quartz_ore>])
		)
	)
	
	.add(Dropt.rule()
		.matchBlocks(["appliedenergistics2:charged_quartz_ore"])
		.addDrop(Dropt.drop()
			.items([<appliedenergistics2:charged_quartz_ore>])
		)
	);