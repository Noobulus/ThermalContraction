//Importing stuff, self-explanatory
	
	import crafttweaker.item.IIngredient;
	import crafttweaker.item.IItemStack;
	import crafttweaker.item.IItemCondition;
	import crafttweaker.oredict.IOreDict;
	import crafttweaker.oredict.IOreDictEntry;

//Variables because reading this without them is a war crime
	
	//Saddles
		var saddleUber = saddle.withTag({HorseTweaksUpgrades: {FIRE_RESISTANCE: 1 as byte, LEAF_WALKER: 1 as byte, FEATHER_FALL: 1 as byte, EASY_JUMP: 1 as byte, THORNS: 1 as byte, SWIMMING: 1 as byte, FROST_WALKER: 1 as byte}});
		var saddleSwim = saddle.withTag({HorseTweaksUpgrades: {SWIMMING: 1 as byte}});
		var saddleJump = saddle.withTag({HorseTweaksUpgrades: {EASY_JUMP: 1 as byte}});
		var saddleFire = saddle.withTag({HorseTweaksUpgrades: {FIRE_RESISTANCE: 1 as byte}});
		var saddleFall = saddle.withTag({HorseTweaksUpgrades: {FEATHER_FALL: 1 as byte}});
		var saddleLeaf = saddle.withTag({HorseTweaksUpgrades: {LEAF_WALKER: 1 as byte}});
		var saddleThorns = saddle.withTag({HorseTweaksUpgrades: {THORNS: 1 as byte}});
		var saddleFrost = saddle.withTag({HorseTweaksUpgrades: {FROST_WALKER: 1 as byte}});
	
	//Enchanted Books
		var bookFrost = bookEnchanted.withTag({StoredEnchantments: [{lvl: 1 as short, id: 9 as short}]});
		var bookFeather = bookEnchanted.withTag({StoredEnchantments: [{lvl: 1 as short, id: 2 as short}]});
		var bookThorns = bookEnchanted.withTag({StoredEnchantments: [{lvl: 1 as short, id: 7 as short}]});

//Saddles (finally!)

	//Combined Saddle (or as I like to call it, the UberSaddle)
		recipes.remove(saddleUber);
		recipes.addShapeless(saddleUber, [saddleSwim, saddleJump, saddleThorns, saddleFrost, saddleLeaf, saddleFall, saddleFire, gemDiamond, gemEnder]);

	//Swimming Saddle (who needs boats?)
		recipes.remove(saddleSwim);
		recipes.addShaped(saddleSwim, [[leather, saddle, leather],[rawFish, boat, rawFish], [null, null, null]]);

	//Jump Assist Saddle
		recipes.remove(saddleJump);
		recipes.addShaped(saddleJump, [[leather, saddle, leather],[dustAerotheum, pistonSticky, dustAerotheum], [null, null, null]]);

	//Fire Resistance Saddle
		recipes.remove(saddleFire);
		recipes.addShaped(saddleFire, [[leather, saddle, leather],[dustPyrotheum, bookFrost, dustPyrotheum], [null, null, null]]);

	//Feather Falling Saddle
		recipes.remove(saddleFall);
		recipes.addShaped(saddleFall, [[leather, saddle, leather],[dustAerotheum, bookFeather, dustAerotheum], [null, null, null]]);

	//Leaf Walker Saddle
		recipes.remove(saddleLeaf);
		recipes.addShaped(saddleLeaf, [[leather, saddle, leather],[gemEnder, leaves, gemEnder], [null, null, null]]);

	//Thorns Saddle (not exactly the most comfortable ride)
		recipes.remove(saddleThorns);
		recipes.addShaped(saddleThorns, [[leather, saddle, leather],[dustPetrotheum, bookThorns, dustPetrotheum], [null, null, null]]);

	//Frost Walker Saddle (LET IT GOOOOOOOOOOO)
		recipes.remove(saddleFrost);
		recipes.addShaped(saddleFrost, [[leather, saddle, leather],[dustCryotheum, bookFrost, dustCryotheum], [null, null, null]]);
