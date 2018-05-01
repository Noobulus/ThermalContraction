//Importinnnnng-ah!
	
	import crafttweaker.item.IIngredient;
	import crafttweaker.item.IItemStack;
	import mods.thermalexpansion.InductionSmelter;
	import mods.thermalexpansion.Pulverizer;

	var energy = 6000;
		
//Wolf Armor (what else?)
	//Chainmail Wolf Armor
		recipes.remove(wolfArmorChain);
		recipes.addShaped(wolfArmorChain, [[ingotIron, null, null],[nuggetIron, leather, nuggetIron], [ingotIron, null, ingotIron]]);

	//Iron Wolf Armor
		recipes.remove(wolfArmorIron);
		recipes.addShaped(wolfArmorIron, [[ingotIron, null, null],[ingotIron, leather, ingotIron], [ingotIron, null, ingotIron]]);

	//Gold Wolf Armor
		recipes.remove(wolfArmorGold);
		recipes.addShaped(wolfArmorGold, [[ingotGold, null, null],[nuggetGold, leather, nuggetGold], [ingotGold, null, ingotGold]]);

	//Diamond Wolf Armor
		recipes.remove(wolfArmorDiamond);
		recipes.addShaped(wolfArmorDiamond, [[gemDiamond, null, null],[nuggetDiamond, leather, nuggetDiamond], [gemDiamond, null, gemDiamond]]);

//Armor Recyclingggg
	InductionSmelter.addRecipe(ingotIron * 2, wolfArmorChain, blockSand, energy, crystalSlag, 20);
	InductionSmelter.addRecipe(ingotIron * 2, wolfArmorIron, blockSand, energy, crystalSlag, 20);
	InductionSmelter.addRecipe(ingotGold * 2, wolfArmorGold, blockSand, energy, crystalSlag, 20);
	Pulverizer.addRecipe(gemDiamond * 2, wolfArmorDiamond, energy);