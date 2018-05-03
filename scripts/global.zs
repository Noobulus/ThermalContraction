#priority 256

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

/* Materials */
	/* Ingots */
		global ingotIron as IItemStack = <minecraft:iron_ingot>;
		global ingotGold as IItemStack = <minecraft:gold_ingot>;		
		global ingotCopper as IItemStack = <thermalfoundation:material:128>;
		global ingotTin as IItemStack = <thermalfoundation:material:129>;
		global ingotSilver as IItemStack = <thermalfoundation:material:130>;		
		global ingotLead as IItemStack = <thermalfoundation:material:131>;
		global ingotAluminum as IItemStack = <thermalfoundation:material:132>;
		global ingotNickel as IItemStack = <thermalfoundation:material:133>;
		global ingotPlatinum as IItemStack = <thermalfoundation:material:134>;
		global ingotIridium as IItemStack = <thermalfoundation:material:135>;
		global ingotMithril as IItemStack = <thermalfoundation:material:136>;								
		
		global ingotSteel as IItemStack = <thermalfoundation:material:160>;
		global ingotElectrum as IItemStack = <thermalfoundation:material:161>;
		global ingotInvar as IItemStack = <thermalfoundation:material:162>;
		global ingotBronze as IItemStack = <thermalfoundation:material:163>;
		global ingotConstantan as IItemStack = <thermalfoundation:material:164>;
		global ingotSignalum as IItemStack = <thermalfoundation:material:165>;
		global ingotLumium as IItemStack = <thermalfoundation:material:166>;
		global ingotEnderium as IItemStack = <thermalfoundation:material:167>;
		global ingotElectrumFlux as IItemStack = <redstonearsenal:material:32>;
		global ingotEnderiumGelid as IItemStack = <redstonerepository:material:16>;	

	/* Nuggets */
		global nuggetIron as IItemStack = <minecraft:iron_nugget>;
		global nuggetGold as IItemStack = <minecraft:gold_nugget>;

		global nuggetDiamond as IItemStack = <thermalfoundation:material:16>;
		global nuggetEmerald as IItemStack = <thermalfoundation:material:17>;

		global nuggetElectrumFlux as IItemStack = <redstonearsenal:material:64>;

	/* Plates */
		global plateLead as IItemStack = <thermalfoundation:material:323>;
	
	/* Dusts */
		global dustPyrotheum as IItemStack = <thermalfoundation:material:1024>;
		global dustCryotheum as IItemStack = <thermalfoundation:material:1025>;
		global dustAerotheum as IItemStack = <thermalfoundation:material:1026>;
		global dustPetrotheum as IItemStack = <thermalfoundation:material:1027>;

	/* Gems */
		global gemDiamond as IItemStack = <minecraft:diamond>;
		global gemEnder as IItemStack = <minecraft:ender_pearl>;

		global gemFlux as IItemStack = <redstonearsenal:material:160>;
		global gemGelid as IItemStack = <redstonerepository:material:80>;

		global crystalSlag as IItemStack = <thermalfoundation:material:864>;

	/* Parts */
		global redstoneServo as IItemStack = <thermalfoundation:material:512>;
		global coilReception as IItemStack = <thermalfoundation:material:513>;
		global coilTransmission as IItemStack = <thermalfoundation:material:514>;
		global coilConductance as IItemStack = <thermalfoundation:material:515>;
		
		global toolCasing as IItemStack = <thermalfoundation:material:640>;
		global toolDrill as IItemStack = <thermalfoundation:material:656>;
		global toolSaw as IItemStack = <thermalfoundation:material:657>;
		global toolTeleportation as IItemStack = <contenttweaker:teleportation_core>;

	/* Other */
		/* Items */
			global arrow as IItemStack = <minecraft:arrow>;
			global leather as IItemStack = <minecraft:leather>;
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
				global boat as IOreDictEntry = <ore:boatWood>;
			global stringFlux as IItemStack = <redstonerepository:material:128>;
			global rodObsidianFlux as IItemStack = <redstonearsenal:material:193>;

		/* Blocks */
			global sand as IOreDictEntry = <ore:sand>;
			global blockSand as IItemStack = <minecraft:sand>;
			global leaves as IOreDictEntry = <ore:treeLeaves>;
			global spawner as IItemStack = <minecraft:mob_spawner>;
			global piston as IItemStack = <minecraft:piston>;
			global pistonSticky as IItemStack = <minecraft:sticky_piston>;			

/* Utilities */
	/* Tools */
		global transporterBasic as IItemStack = <whoosh:transporter>;

		global reservoirResonant as IItemStack = <thermalexpansion:reservoir:4>;

		global quiverFlux as IItemStack = <redstonearsenal:util.quiver_flux>;
		global bowFlux as IItemStack = <redstonearsenal:tool.bow_flux>;
		global fishingRodFlux as IItemStack = <redstonearsenal:tool.fishing_rod_flux>;

		global bucket as IItemStack = <minecraft:bucket>;
		global bucketInfinite as IItemStack = <infinibucket:infini_bucket>;

	/* Armor */
		global saddle as IItemStack = <minecraft:saddle>;

		global wolfArmorLeather as IItemStack = <wolfarmor:leather_wolf_armor>;		
		global wolfArmorChain as IItemStack = <wolfarmor:chainmail_wolf_armor>;
		global wolfArmorIron as IItemStack = <wolfarmor:iron_wolf_armor>;
		global wolfArmorGold as IItemStack = <wolfarmor:gold_wolf_armor>;
		global wolfArmorDiamond as IItemStack = <wolfarmor:diamond_wolf_armor>;

		global fluxpackLeadstone as IItemStack = <simplyjetpacks:itemfluxpack:6>;
		global fluxpackReinforced as IItemStack = <simplyjetpacks:itemfluxpack:7>;
		global fluxpackResonant as IItemStack = <simplyjetpacks:itemfluxpack:8>;		

	/* Upgrades */
		global upgradeHardened as IItemStack = <thermalfoundation:upgrade:0>;
		global upgradeReinforced as IItemStack = <thermalfoundation:upgrade:1>;
		global upgradeSignalum as IItemStack = <thermalfoundation:upgrade:2>;
		global upgradeResonant as IItemStack = <thermalfoundation:upgrade:3>;
		global conversionReinforced as IItemStack = <thermalfoundation:upgrade:33>;
		global conversionSignalum as IItemStack = <thermalfoundation:upgrade:34>;
		global conversionResonant as IItemStack = <thermalfoundation:upgrade:35>;

		global platingIron as IItemStack = <simplyjetpacks:metaitemmods:19>;
		global platingBronze as IItemStack = <simplyjetpacks:metaitemmods:20>;
		global platingInvar as IItemStack = <simplyjetpacks:metaitemmods:21>;
		global platingEnderium as IItemStack = <simplyjetpacks:metaitemmods:22>;

	/* Food */
		<ore:rawFish>.add(<minecraft:fish:*>);
		global rawFish as IOreDictEntry = <ore:rawFish>;
		<ore:cookedFish>.add(<minecraft:cooked_fish:*>);
		global cookedFish as IOreDictEntry = <ore:cookedFish>;

	/* Miscellaneous */
		global morb as IItemStack = <thermalexpansion:morb>;
		global morbReusable as IItemStack = <thermalexpansion:morb:1>;
		global book as IItemStack = <minecraft:book>;
		global bookEnchanted as IItemStack = <minecraft:enchanted_book>;

/* Other */
	global energy as int = 1600;
	global capacity as int = 1000;

	/* Fluids */
		global water as ILiquidStack = <minecraft:water>;
		global lava as IItemStack = <minecraft:lava>;