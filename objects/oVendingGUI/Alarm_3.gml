/// @description Insert description here
// You can write your code in this editor

//UNLOCKED
audio_play_sound(sVendingCan,100,false);
oVending.sprite_index = vendingopem;
audio_stop_sound(sVending);

oVending.state = "OPEN";

if(!audio_is_playing(sUnlock)){
	audio_play_sound(sUnlock,10,0);	
}

instance_destroy(self);
