/// @description Insert description here
// You can write your code in this editor
if(inUse) sprite_index = stationIDsno[? stationID];
else sprite_index = stationIDsno[? stationID];


if (!inUse) {
	if(pump == pointer_null) pump = instance_create_depth(x + 100, y + 80, 0, oGasPump);
} else {
	if(pump != pointer_null) {
		show_debug_message("Now in use.");
		//instance_destroy(pump);
		//pump = pointer_null;
	}
}

//If car with low gas shows up, can use pump
var player_in_hitbox = false; //&& place_meeting(x + sprite_width, y + sprite_height, oPlayer);
var pump_nearby = noone;
var car_is_empty = false;
var car_nearby = instance_place(x, y, oCar);
var player_by_station = place_meeting(x,y,oPlayer);
car_is_nearby = car_nearby != noone;

if(pump != pointer_null) {
	player_in_hitbox = place_meeting(pump.x, pump.y, oPlayer);
	pump_nearby = instance_place(pump.x,pump.y, oGasTank);
}

if(pump_nearby != noone){
	car_is_empty = pump_nearby.car.currentTankCapacity < pump_nearby.car.maxTankCapacity;
}

if(player_in_hitbox && car_is_empty && global.keyInteract) {
	inUse = true;
	pump_nearby.car.state = "FILLING";
}

if(car_nearby != noone && player_by_station && global.keyInteract){
	
	if (car_nearby.state == "FULL"){
		inUse = false;
		with(car_nearby){
			state = "COMPLETE";	
		}
	}
}
