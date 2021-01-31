/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "setup"){
	if(audio_group_is_loaded(bgm)){
		room_goto_next();
	} else {
		exit;
	}
}

if(!instance_exists(oTime)) exit;

if(oTime.timeOfDayIndex == 3){
	fadeOut(sDay);
	fadeIn(sNightCalm);
	loop(sNightCalm);
}