///@description
function fadeIn(argument0) {
	while(global.currentSong == pointer_null){
		global.currentSong = loop(argument0);
	}
	global.currentSong = argument0;
	if(audio_sound_get_gain(global.currentSong) < 1) {
		audio_sound_gain(global.currentSong ,audio_sound_get_gain(global.currentSong) + 0.02 ,0);
	}

}
