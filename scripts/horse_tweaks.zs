//Importing stuff, self-explanatory
	
	import crafttweaker.item.IIngredient;
	import crafttweaker.item.IItemStack;
	import crafttweaker.item.IItemCondition;
	import crafttweaker.oredict.IOreDict;
	import crafttweaker.oredict.IOreDictEntry;

//Variables because reading this without them is a war crime
	
	//Saddles
		var saddleUber = saddle.withTag({HorseTweaksUpgrades: {FIRE_RESISTANCE: 1, LEAF_WALKER: 1, FEATHER_FALL: 1, EASY_JUMP: 1, THORNS: 1, SWIMMING: 1, FROST_WALKER: 1}});
		var saddleSwim = saddle.withTag({HorseTweaksUpgrades: {SWIMMING: 1}});
		var saddleJump = saddle.withTag({HorseTweaksUpgrades: {EASY_JUMP: 1}});
		var saddleFire = saddle.withTag({HorseTweaksUpgrades: {FIRE_RESISTANCE: 1}});
		var saddleFall = saddle.withTag({HorseTweaksUpgrades: {FEATHER_FALL: 1}});
		var saddleLeaf = saddle.withTag({HorseTweaksUpgrades: {LEAF_WALKER: 1}});
		var saddleThorns = saddle.withTag({HorseTweaksUpgrades: {THORNS: 1}});
		var saddleFrost = saddle.withTag({HorseTweaksUpgrades: {FROST_WALKER: 1}});
	
	//Enchanted Books
		var bookFrost = bookEnchanted.withTag({StoredEnchantments: [{lvl: 1, id: 9}]});
		var bookFeather = bookEnchanted.withTag({StoredEnchantments: [{lvl: 1, id: 2}]});
		var bookThorns = bookEnchanted.withTag({StoredEnchantments: [{lvl: 1, id: 7}]});

//Saddles (finally!)

	//Normal Saddle to save lines :)
		recipes.remove(saddle);
		recipes.addShaped(saddle, [[leather, leather, leather],[leather, ingotIron, leather], [ingotIron, null, ingotIron]]);

	//Combined Saddle (or as I like to call it, the UberSaddle)
		recipes.addShapeless(saddleUber, [saddleSwim, saddleJump, saddleThorns, saddleFrost, saddleLeaf, saddleFall, saddleFire, gemDiamond, gemEnder]);

	//Swimming Saddle (who needs boats?)
		recipes.addShaped(saddleSwim, [[leather, saddle, leather],[rawFish, boat, rawFish], [null, null, null]]);

	//Jump Assist Saddle
		recipes.addShaped(saddleJump, [[leather, saddle, leather],[dustAerotheum, pistonSticky, dustAerotheum], [null, null, null]]);

	//Fire Resistance Saddle
		recipes.addShaped(saddleFire, [[leather, saddle, leather],[dustPyrotheum, bookFrost, dustPyrotheum], [null, null, null]]);

	//Feather Falling Saddle
		recipes.addShaped(saddleFall, [[leather, saddle, leather],[dustAerotheum, bookFeather, dustAerotheum], [null, null, null]]);

	//Leaf Walker Saddle
		recipes.addShaped(saddleLeaf, [[leather, saddle, leather],[gemEnder, leaves, gemEnder], [null, null, null]]);

	//Thorns Saddle (not exactly the most comfortable ride)
		recipes.addShaped(saddleThorns, [[leather, saddle, leather],[dustPetrotheum, bookThorns, dustPetrotheum], [null, null, null]]);

	//Frost Walker Saddle (LET IT GOOOOOOOOOOO)
		recipes.addShaped(saddleFrost, [[leather, saddle, leather],[dustCryotheum, bookFrost, dustCryotheum], [null, null, null]]);
