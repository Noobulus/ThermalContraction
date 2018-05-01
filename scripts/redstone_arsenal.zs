recipes.remove(quiverFlux);
recipes.addShaped(quiverFlux,
	[[arrow, arrow, null],
	[gemFlux, ingotElectrumFlux, stringFlux],
	[ingotElectrumFlux, gemFlux, stringFlux]]);

recipes.remove(bowFlux);
recipes.addShaped(bowFlux,
	[[null, ingotElectrumFlux, stringFlux],
	[rodObsidianFlux, null, stringFlux],
	[null, ingotElectrumFlux, stringFlux]]);

recipes.remove(fishingRodFlux);
recipes.addShaped(fishingRodFlux,
	[[null, null, ingotElectrumFlux],
	[null, ingotElectrumFlux, stringFlux],
	[rodObsidianFlux, null, stringFlux]]);