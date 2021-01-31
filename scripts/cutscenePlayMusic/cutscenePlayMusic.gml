///@description cutScenePlaySound
///@param sound
function cutscenePlayMusic(argument0) {

	global.currentSong = argument0;
	if(audio_sound_get_gain(global.currentSong < 1)) audio_sound_gain(global.currentSong, 1, 0);
	loop(argument0);
	cutsceneEndAction();


}
