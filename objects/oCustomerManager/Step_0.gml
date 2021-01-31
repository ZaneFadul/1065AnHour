/// @description Insert description here
// You can write your code in this editor
var gas1 = instance_find(oGasStation,0);
var gas2 = instance_find(oGasStation,1);

if(gas1 != noone && gas2 != noone){
	allInUse = gas1.car_is_nearby && gas2.car_is_nearby; 
}

while(!allInUse && global.queueSize > 0){
	global.queueSize -= 1;
	instance_create_depth(view_x - sprite_get_width(smcar1), 650, -3, oCar);
}


