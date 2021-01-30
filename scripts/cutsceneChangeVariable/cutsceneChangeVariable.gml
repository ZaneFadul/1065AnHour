/// @description cutsceneChangeVariable
/// @param obj
/// @param var-as-string
/// @param value
function cutsceneChangeVariable(argument0, argument1, argument2) {

	with(argument0){
		variable_instance_set(id,argument1, argument2);
	}

	cutsceneEndAction();


}
