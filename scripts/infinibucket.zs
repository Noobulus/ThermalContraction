recipes.remove(bucketInfinite);
recipes.addShaped(bucketInfinite,
	[[null, bucket, null],
	[ingotElectrum, toolCasing, ingotElectrum],
	[ingotGold, reservoirResonant.withTag({ench: [{lvl: 4, id: 13}], RepairCost: 1, Fluid: {FluidName: "water", Amount: capacity * 750}}), ingotGold]]);