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
		with(carWithProps){
			var carTempProps = other.carProps;
			sprite_index = colors[? carTempProps[0]];
			with(sil) sprite_index = other.sils[? carTempProps[1]];
			dialogue = carTempProps[2];
			async = carTempProps[3];
		}
	}
	carProps = [];
}

addCar(4,2,pointer_null,0,1,5);

addCar(4,2,pointer_null,0,1,10);

addCar(4,2,pointer_null,0,2,15);
addCar(4,2,pointer_null,0,2,15);