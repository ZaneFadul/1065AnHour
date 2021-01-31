/// @description cutscene
/// @param x
/// @param y
/// @param layer_id
/// @param obj
function cutsceneInstanceCreate(argument0, argument1, argument2, argument3) {
	show_debug_message("Working?");
	instance_create_layer(argument0, argument1, argument2, argument3);
	cutsceneEndAction();



}
