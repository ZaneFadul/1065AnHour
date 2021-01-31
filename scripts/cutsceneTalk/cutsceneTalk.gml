/// @description cutsceneTalk
/// @param obj
/// @param text
function cutsceneTalk(argument0, argument1) {

	if(!instance_exists(oTextbox)){
	myTextbox = instance_create_depth(x,y,-19,oTextbox);
	myTextbox.portrait = argument0;
	myTextbox.text = argument1;
	}

	if(myTextbox.done){
		cutsceneEndAction();
	}


}
