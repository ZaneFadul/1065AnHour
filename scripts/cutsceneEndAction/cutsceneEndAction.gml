/// @description ah
function cutsceneEndAction() {
	scene++;

	if(scene > array_length_1d(sceneInfo)-1){
		instance_destroy();
	}


}
