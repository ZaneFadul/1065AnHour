/// @description Insert description here
// You can write your code in this editor
tank.x = x + sprite_width/3; tank.y = y + sprite_height/2;
sil.x = x + 450 * velOffset; sil.y = y + 78;
wheel.x = x + velOffset;

if(state == "LOW" || state == "FULL") {
	counter ++;
	if(counter % room_speed == 0) time += 1;
}

if(state == "FILLING") currentTankCapacity += 1;

if(state == "FILLING" && currentTankCapacity >= maxTankCapacity) state = "FULL";

if(state == "COMPLETE"){

	if(!paidTips) {
		oPlayer.tips += maxTankCapacity / (5*time);
		paidTips = true;
	}
	
	if(vel < maxAccel) {
		vel -= 0.5 * velOffset;
	}
}

if(state != "COMPLETE" && place_meeting(x + 20 * velOffset, y, oGasStation)){
	if(vel != 0){
		vel -= 0.08 * velOffset;
	}
}

x += vel;

//show_debug_message(ds_queue_size(global.queue));

if(x >  2* view_w && state == "COMPLETE") instance_destroy();
if(x < view_x - sprite_width && state == "COMPLETE") instance_destroy();

wheel.image_xscale = scale * velOffset;
wheel.image_yscale = scale;

sil.image_xscale = scale * velOffset;
sil.image_yscale = scale;

if(vel > 0) {
	wheel.sprite_index = smallw; //this sprite doesnt move
	wheel.image_speed = 5 * vel;
} else {
	wheel.sprite_index = smallwmov; //this sprite moves??
}
image_xscale = scale * velOffset;
image_yscale = scale;