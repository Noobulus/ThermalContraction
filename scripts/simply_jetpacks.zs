//Importing!
	
	import crafttweaker.item.IIngredient;
	import crafttweaker.item.IItemStack;
	import mods.thermalexpansion.InductionSmelter;

//Armor Plating (only here because SJ2 got fucked)

	//Bronze Armor Plating
		InductionSmelter.addRecipe(platingBronze, platingIron, ingotBronze * 10, energy * 2);

	//Invar Armor Plating
		InductionSmelter.addRecipe(platingInvar, platingBronze, ingotInvar * 10, energy * 3);

	//Enderium Armor Plating
		InductionSmelter.addRecipe(platingEnderium, platingInvar, ingotEnderium * 10, energy * 4);

//Fluxpacks

	//Reinforced Flux Pack
		recipes.removeByRecipeName("simplyjetpacks:upgraderecipe7"); //Removing by recipe name because un-armoring exists
		recipes.addShaped(fluxpackReinforced, [[null, conversionReinforced, null],[ingotElectrum, fluxpackLeadstone, ingotElectrum], [ingotLead, coilConductance, ingotLead]]);

	//Resonant Flux Pack
		recipes.removeByRecipeName("simplyjetpacks:upgraderecipe8");
		recipes.addShaped(fluxpackResonant, [[null, conversionResonant, null],[ingotEnderium, fluxpackReinforced, ingotEnderium], [ingotLead, coilConductance, ingotLead]]);
