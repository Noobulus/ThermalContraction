//Importing!
	
	import crafttweaker.item.IIngredient;
	import crafttweaker.item.IItemStack;

//Variables because readability
	
	//Armor Plating
		var platingIron = <simplyjetpacks:metaitemmods:19>;
		var platingBronze = <simplyjetpacks:metaitemmods:20>;
		var platingInvar = <simplyjetpacks:metaitemmods:21>;
		var platingEnder = <simplyjetpacks:metaitemmods:22>;
	
	//Thermal Foundation Materials
		var ingotLead = <thermalfoundation:material:131>;
		var ingotElectrum = <thermalfoundation:material:161>;
		var ingotInvar = <thermalfoundation:material:162>;
		var ingotBronze = <thermalfoundation:material:163>;
		var ingotEnder = <thermalfoundation:material:167>;
		var coilConductance = <thermalfoundation:material:515>;
		var upgradeReinforced = <thermalfoundation:upgrade:33>;
		var upgradeResonant = <thermalfoundation:upgrade:35>;
	
	//Fluxpacks
		var fluxpackLeadstone = <simplyjetpacks:itemfluxpack:6>;
		var fluxpackReinforced = <simplyjetpacks:itemfluxpack:7>;
		var fluxpackResonant = <simplyjetpacks:itemfluxpack:8>;

//Armor Plating (only here because SJ2 got fucked)

	//Bronze Armor Plating
		mods.thermalexpansion.InductionSmelter.addRecipe(platingBronze, platingIron, ingotBronze * 10, 3200);

	//Invar Armor Plating
		mods.thermalexpansion.InductionSmelter.addRecipe(platingInvar, platingBronze, ingotInvar * 10, 4800);

	//Enderium Armor Plating
		mods.thermalexpansion.InductionSmelter.addRecipe(platingEnder, platingInvar, ingotEnder * 10, 6400);

//Fluxpacks

	//Reinforced Flux Pack
		recipes.removeByRecipeName("simplyjetpacks:upgraderecipe7"); //Removing by recipe name because un-armoring exists
		recipes.addShaped(fluxpackReinforced, [[null, upgradeReinforced, null],[ingotElectrum, fluxpackLeadstone, ingotElectrum], [ingotLead, coilConductance, ingotLead]]);

	//Resonant Flux Pack
		recipes.removeByRecipeName("simplyjetpacks:upgraderecipe8");
		recipes.addShaped(fluxpackResonant, [[null, upgradeResonant, null],[ingotEnder, fluxpackReinforced, ingotEnder], [ingotLead, coilConductance, ingotLead]]);
