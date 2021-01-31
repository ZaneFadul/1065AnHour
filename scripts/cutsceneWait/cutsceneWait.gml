/// cutsceneWait(seconds)
/// @description cutsceneWait(seconds)
/// @param seconds
function cutsceneWait(argument0) {

	timer++;
	if(timer >= argument0 * room_speed){
		timer = 0;
		cutsceneEndAction();
	}



}
