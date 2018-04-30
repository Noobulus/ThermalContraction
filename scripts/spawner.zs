import crafttweaker.data.IData;
import crafttweaker.item.IItemDefinition;

recipes.addShapeless("spawner_combine", spawner,
	[spawner, simpleMorb.marked("mark")],
	function(out, ins, cInfo){
    	return spawner.withTag({"SpawnData": {"id": ins.mark.tag.id.asString()}});
	}, null);

recipes.addShapeless("spawner_combine_reusable", spawner,
	[spawner, reusableMorb.marked("mark_reusable").giveBack(reusableMorb)],
	function(out, ins, cInfo){
    	return spawner.withTag({"SpawnData": {"id": ins.mark_reusable.tag.id.asString()}});
	}, null);
	