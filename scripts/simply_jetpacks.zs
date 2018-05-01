//Importing!
	
	import crafttweaker.item.IIngredient;
	import crafttweaker.item.IItemStack;
	import mods.thermalexpansion.InductionSmelter;

//Variables because readability
	
	//Armor Plating
		var platingIron = <simplyjetpacks:metaitemmods:19>;
		var platingBronze = <simplyjetpacks:metaitemmods:20>;
		var platingInvar = <simplyjetpacks:metaitemmods:21>;
		var platingEnder = <simplyjetpacks:metaitemmods:22>;
	
	//Fluxpacks
		var fluxpackLeadstone = <simplyjetpacks:itemfluxpack:6>;
		var fluxpackReinforced = <simplyjetpacks:itemfluxpack:7>;
		var fluxpackResonant = <simplyjetpacks:itemfluxpack:8>;

//Armor Plating (only here because SJ2 got fucked)

	//Bronze Armor Plating
		InductionSmelter.addRecipe(platingBronze, platingIron, ingotBronze * 10, energy * 2);

	//Invar Armor Plating
		InductionSmelter.addRecipe(platingInvar, platingBronze, ingotInvar * 10, energy * 3);

	//Enderium Armor Plating
		InductionSmelter.addRecipe(platingEnder, platingInvar, ingotEnderium * 10, energy * 4);

//Fluxpacks

	//Reinforced Flux Pack
		recipes.removeByRecipeName("simplyjetpacks:upgraderecipe7"); //Removing by recipe name because un-armoring exists
		recipes.addShaped(fluxpackReinforced, [[null, conversionReinforced, null],[ingotElectrum, fluxpackLeadstone, ingotElectrum], [ingotLead, coilConductance, ingotLead]]);

	//Resonant Flux Pack
		recipes.removeByRecipeName("simplyjetpacks:upgraderecipe8");
		recipes.addShaped(fluxpackResonant, [[null, conversionResonant, null],[ingotEnderium, fluxpackReinforced, ingotEnderium], [ingotLead, coilConductance, ingotLead]]);
