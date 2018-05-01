import crafttweaker.data.IData;
import crafttweaker.item.IItemDefinition;

mods.jei.JEI.addDescription(spawner, "Spawns the mob contained in the Morb used to craft it.");

recipes.addShapeless("spawner_combine", spawner,
	[spawner, morb.marked("mark")],
	function(out, ins, cInfo){
    	return spawner.withTag({"SpawnData": {"id": ins.mark.tag.id.asString()}});
	}, null);

recipes.addShapeless("spawner_combine_reusable", spawner,
	[spawner, morbReusable.marked("mark_reusable").giveBack(morbReusable)],
	function(out, ins, cInfo){
    	return spawner.withTag({"SpawnData": {"id": ins.mark_reusable.tag.id.asString()}});
	}, null);