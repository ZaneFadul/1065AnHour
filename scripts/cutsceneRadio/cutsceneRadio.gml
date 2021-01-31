/// @description cutsceneRadio
/// @param obj
/// @param text
function cutsceneRadio(argument0, argument1) {

	if(!instance_exists(oTextbox)){
	myTextbox = instance_create_depth(x,y,-19,oTextbox);
	myTextbox.character = argument0;
	myTextbox.text = argument1;
	}

	if(myTextbox.done){
		cutsceneEndAction();
	}


}
