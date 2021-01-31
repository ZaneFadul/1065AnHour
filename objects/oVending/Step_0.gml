/// @description Insert description here
// You can write your code in this editor
player_by_station = place_meeting(x,y,oPlayer);

if(is_e == false && player_by_station){
	bigE = instance_create_depth(x,y-200,-5,oKey);
	is_e = true;
}
else if(!player_by_station && is_e){
	with(bigE){
		instance_destroy(self);	
	}
	is_e = false;
}

if(!audio_is_playing(sVendingCan) && player_by_station && global.keyInteract && !instance_exists(oVendingGUI)) {
	audio_play_sound(sVendingCan,100,false);
	instance_create_depth(0,0,-12, oVendingGUI);
}
