#priority 1

//Importing stuff, self-explanatory
	
	import crafttweaker.item.IIngredient;
	import crafttweaker.item.IItemStack;
	import crafttweaker.item.IItemCondition;
	import crafttweaker.oredict.IOreDict;
	import crafttweaker.oredict.IOreDictEntry;

//Variables because reading this without them is a war crime
	
	//Boats
		var boat = <ore:boatWood>;
		boat.add(<minecraft:boat>);
		boat.add(<minecraft:spruce_boat>);
		boat.add(<minecraft:birch_boat>);
		boat.add(<minecraft:jungle_boat>);
		boat.add(<minecraft:acacia_boat>);
		boat.add(<minecraft:dark_oak_boat>);
		boat.add(<biomesoplenty:boat_sacred_oak>);
		boat.add(<biomesoplenty:boat_cherry>);
		boat.add(<biomesoplenty:boat_umbran>);
		boat.add(<biomesoplenty:boat_fir>);
		boat.add(<biomesoplenty:boat_ethereal>);
		boat.add(<biomesoplenty:boat_magic>);
		boat.add(<biomesoplenty:boat_mangrove>);
		boat.add(<biomesoplenty:boat_palm>);
		boat.add(<biomesoplenty:boat_redwood>);
		boat.add(<biomesoplenty:boat_willow>);
		boat.add(<biomesoplenty:boat_pine>);
		boat.add(<biomesoplenty:boat_hellbark>);
		boat.add(<biomesoplenty:boat_jacaranda>);
		boat.add(<biomesoplenty:boat_mahogany>);
		boat.add(<biomesoplenty:boat_ebony>);
		boat.add(<biomesoplenty:boat_eucalyptus>);

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
	
	//Other Materials
		var fish = <minecraft:fish>;
		var leaves = <ore:treeLeaves>;
		var pistonSticky = <minecraft:sticky_piston>;

//Saddles (finally!)

	//Combined Saddle (or as I like to call it, the UberSaddle)
		recipes.remove(saddleUber);
		recipes.addShapeless(saddleUber, [saddleSwim, saddleJump, saddleThorns, saddleFrost, saddleLeaf, saddleFall, saddleFire, gemDiamond, gemEnder]);

	//Swimming Saddle (who needs boats?)
		recipes.remove(saddleSwim);
		recipes.addShaped(saddleSwim, [[leather, saddleNormal, leather],[fish, boat, fish], [null, null, null]]);

	//Jump Assist Saddle
		recipes.remove(saddleJump);
		recipes.addShaped(saddleJump, [[leather, saddleNormal, leather],[dustAerotheum, pistonSticky, dustAerotheum], [null, null, null]]);

	//Fire Resistance Saddle
		recipes.remove(saddleFire);
		recipes.addShaped(saddleFire, [[leather, saddleNormal, leather],[dustPyrotheum, bookFrost, dustPyrotheum], [null, null, null]]);

	//Feather Falling Saddle
		recipes.remove(saddleFall);
		recipes.addShaped(saddleFall, [[leather, saddleNormal, leather],[dustAerotheum, bookFeather, dustAerotheum], [null, null, null]]);

	//Leaf Walker Saddle
		recipes.remove(saddleLeaf);
		recipes.addShaped(saddleLeaf, [[leather, saddleNormal, leather],[gemEnder, leaves, gemEnder], [null, null, null]]);

	//Thorns Saddle (not exactly the most comfortable ride)
		recipes.remove(saddleThorns);
		recipes.addShaped(saddleThorns, [[leather, saddleNormal, leather],[dustPetrotheum, bookThorns, dustPetrotheum], [null, null, null]]);

	//Frost Walker Saddle (LET IT GOOOOOOOOOOO)
		recipes.remove(saddleFrost);
		recipes.addShaped(saddleFrost, [[leather, saddleNormal, leather],[dustCryotheum, bookFrost, dustCryotheum], [null, null, null]]);
