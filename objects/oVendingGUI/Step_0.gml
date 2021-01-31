/// @description Insert description here
// You can write your code in this editor

if(!exitLock && global.keyInteract && alarm[1]<0){
		alarm[1] = room_speed * .2;
}

if(nums == "771251" && alarm[3]<0){
	nums = "UNLOCK"
	alarm[3] = room_speed*1.5;
	if(!audio_is_playing(sBeepCorrect)){
		audio_play_sound(sBeepCorrect,10,0);	
	}
}

if(nums != "771251" && string_length(nums) > 6 && alarm[2]<0){
	nums = "INVALID"	
	alarm[2] = room_speed*1.5;
	if(!audio_is_playing(sBeepWrong)){
		audio_play_sound(sBeepWrong,10,0);	
	}
	inputLock = true;
}
