/// @description cutscene
/// @param obj
function cutsceneInstanceDestroy(argument0) {

	if(instance_exists(argument0)){
		instance_destroy(argument0);
	}
	cutsceneEndAction();


}
