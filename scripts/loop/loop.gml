///@description loop(loopMap, audioObj)
///@param loopMap
///@param audioObj
function loop(argument0) {
	if(!audio_is_playing(argument0) && !audio_is_playing(global.loop_map[? argument0])){
		global.currentSong = audio_play_sound(argument0, 10, 0);
	}

	if (audio_sound_get_track_position(global.currentSong) >= audio_sound_length(global.currentSong) - 0.04) {
		global.currentSong = audio_play_sound(global.loop_map[? argument0], 10, 0);
	}

}
