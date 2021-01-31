/// @description Insert description here
// You can write your code in this editor
var gas1 = instance_find(oGasStation,0);
var gas2 = instance_find(oGasStation,1);

if(gas1 != noone && gas2 != noone){
	allInUse = gas1.car_is_nearby && gas2.car_is_nearby; 
}

while(!allInUse && ds_queue_size(global.queue) > 0){
	carProps = ds_queue_dequeue(global.queue);
	var carWithProps = instance_create_depth(view_x - sprite_get_width(smcar1), 650, -3, oCar);
	if(array_length(carProps) != 0){
		carWithProps.forcedColor = carProps[0];
		carWithProps.silSpriteIndex = carProps[1];
		carWithProps.dialogue = carProps[2];
		carWithProps.async = carProps[3];
		exit
	}
}


