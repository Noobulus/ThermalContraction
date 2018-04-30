//Importing stuff, self-explanatory
	
	import crafttweaker.item.IIngredient;
	import crafttweaker.item.IItemStack;
	import crafttweaker.item.IItemCondition;
	import crafttweaker.oredict.IOreDict;
	import crafttweaker.oredict.IOreDictEntry;

//Boat oreDict for Swimming Saddle recipe
	
	<ore:boatWood>.add(<minecraft:boat>);
	<ore:boatWood>.add(<minecraft:spruce_boat>);
	<ore:boatWood>.add(<minecraft:birch_boat>);
	<ore:boatWood>.add(<minecraft:jungle_boat>);
	<ore:boatWood>.add(<minecraft:acacia_boat>);
	<ore:boatWood>.add(<minecraft:dark_oak_boat>);
	<ore:boatWood>.add(<biomesoplenty:boat_sacred_oak>);
	<ore:boatWood>.add(<biomesoplenty:boat_cherry>);
	<ore:boatWood>.add(<biomesoplenty:boat_umbran>);
	<ore:boatWood>.add(<biomesoplenty:boat_fir>);
	<ore:boatWood>.add(<biomesoplenty:boat_ethereal>);
	<ore:boatWood>.add(<biomesoplenty:boat_magic>);
	<ore:boatWood>.add(<biomesoplenty:boat_mangrove>);
	<ore:boatWood>.add(<biomesoplenty:boat_palm>);
	<ore:boatWood>.add(<biomesoplenty:boat_redwood>);
	<ore:boatWood>.add(<biomesoplenty:boat_willow>);
	<ore:boatWood>.add(<biomesoplenty:boat_pine>);
	<ore:boatWood>.add(<biomesoplenty:boat_hellbark>);
	<ore:boatWood>.add(<biomesoplenty:boat_jacaranda>);
	<ore:boatWood>.add(<biomesoplenty:boat_mahogany>);
	<ore:boatWood>.add(<biomesoplenty:boat_ebony>);
	<ore:boatWood>.add(<biomesoplenty:boat_eucalyptus>);

//Variables because reading this without them is a war crime
	
	//Saddles
		var saddleNormal = <minecraft:saddle>;
		var saddleUber = <minecraft:saddle>.withTag({HorseTweaksUpgrades: {FIRE_RESISTANCE: 1 as byte, LEAF_WALKER: 1 as byte, FEATHER_FALL: 1 as byte, EASY_JUMP: 1 as byte, THORNS: 1 as byte, SWIMMING: 1 as byte, FROST_WALKER: 1 as byte}});
		var saddleSwim = <minecraft:saddle>.withTag({HorseTweaksUpgrades: {SWIMMING: 1 as byte}});
		var saddleJump = <minecraft:saddle>.withTag({HorseTweaksUpgrades: {EASY_JUMP: 1 as byte}});
		var saddleFire = <minecraft:saddle>.withTag({HorseTweaksUpgrades: {FIRE_RESISTANCE: 1 as byte}});
		var saddleFall = <minecraft:saddle>.withTag({HorseTweaksUpgrades: {FEATHER_FALL: 1 as byte}});
		var saddleLeaf = <minecraft:saddle>.withTag({HorseTweaksUpgrades: {LEAF_WALKER: 1 as byte}});
		var saddleThorns = <minecraft:saddle>.withTag({HorseTweaksUpgrades: {THORNS: 1 as byte}});
		var saddleFrost = <minecraft:saddle>.withTag({HorseTweaksUpgrades: {FROST_WALKER: 1 as byte}});
	
	//Enchanted Books
		var bookFrost = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 9 as short}]});
		var bookFeather = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 2 as short}]});
		var bookThorns = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 7 as short}]});
		
	//Elemental Dusts
		var dustPyro = <thermalfoundation:material:1024>;
		var dustCryo = <thermalfoundation:material:1025>;
		var dustAero = <thermalfoundation:material:1026>;
		var dustTecto = <thermalfoundation:material:1027>;
	
	//Other Materials
		var boat = <ore:boatWood>;
		var diamond = <minecraft:diamond>;
		var enderPearl = <minecraft:ender_pearl>;
		var fish = <minecraft:fish>;
		var leather = <minecraft:leather>;
		var leaves = <ore:treeLeaves>;
		var pistonSticky = <minecraft:sticky_piston>;

//Saddles (finally!)

	//Combined Saddle (or as I like to call it, the UberSaddle)
		recipes.remove(saddleUber);
		recipes.addShapeless(saddleUber, [saddleSwim, saddleJump, saddleThorns, saddleFrost, saddleLeaf, saddleFall, saddleFire, diamond, enderPearl]);

	//Swimming Saddle (who needs boats?)
		recipes.remove(saddleSwim);
		recipes.addShaped(saddleSwim, [[leather, saddleNormal, leather],[fish, boat, fish], [null, null, null]]);

	//Jump Assist Saddle
		recipes.remove(saddleJump);
		recipes.addShaped(saddleJump, [[leather, saddleNormal, leather],[dustAero, pistonSticky, dustAero], [null, null, null]]);

	//Fire Resistance Saddle
		recipes.remove(saddleFire);
		recipes.addShaped(saddleFire, [[leather, saddleNormal, leather],[dustPyro, bookFrost, dustPyro], [null, null, null]]);

	//Feather Falling Saddle
		recipes.remove(saddleFall);
		recipes.addShaped(saddleFall, [[leather, saddleNormal, leather],[dustAero, bookFeather, dustAero], [null, null, null]]);

	//Leaf Walker Saddle
		recipes.remove(saddleLeaf);
		recipes.addShaped(saddleLeaf, [[leather, saddleNormal, leather],[enderPearl, leaves, enderPearl], [null, null, null]]);

	//Thorns Saddle (not exactly the most comfortable ride)
		recipes.remove(saddleThorns);
		recipes.addShaped(saddleThorns, [[leather, saddleNormal, leather],[dustTecto, bookThorns, dustTecto], [null, null, null]]);

	//Frost Walker Saddle (LET IT GOOOOOOOOOOO)
		recipes.remove(saddleFrost);
		recipes.addShaped(saddleFrost, [[leather, saddleNormal, leather],[dustCryo, bookFrost, dustCryo], [null, null, null]]);
