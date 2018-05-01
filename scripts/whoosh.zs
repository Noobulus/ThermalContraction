recipes.addShaped(toolTeleportation,
	[[nuggetDiamond, gemEnder, nuggetDiamond],
	[gemEnder, gemGelid, gemEnder],
	[nuggetDiamond, gemEnder, nuggetDiamond]]);

recipes.remove(transporterBasic);
recipes.addShaped(transporterBasic,
	[[null, toolTeleportation, null],
	[plateLead, toolCasing, plateLead],
	[gemEnder, ingotCopper, gemEnder]]);