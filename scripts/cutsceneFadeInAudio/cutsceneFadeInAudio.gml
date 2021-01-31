// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cutsceneFadeInAudio(argument0){
	global.currentSong = argument0;
	if(audio_sound_get_gain(global.currentSong) < 1) {
		audio_sound_gain(global.currentSong ,audio_sound_get_gain(global.currentSong) + 0.02 ,0);
	} else {
		cutsceneEndAction();
	}
}