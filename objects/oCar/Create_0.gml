/// @description Insert description here
// You can write your code in this editor
depth = -3;

//States [ LOW, FILLING, FULL, COMPLETE ]
state = "LOW";

maxTankCapacity = 100;
currentTankCapacity = 0
tank = instance_create_depth(x, y, -3, oGasTank);
tank.car = self;
wheel = instance_create_depth(x, y, -3, oSmallWheel);
sil = instance_create_depth(x, y, -4, oSil);

maxAccel = 10 ;
velOffset = 1;

colors = ds_map_create();
colors[? 1] = smcar1;
colors[? 2] = smcar2;
colors[? 3] = smcar3;
colors[? 4] = smcar4;

color = colors[? round(random_range(1,4))];

scale = 0.70;

var gas1 = instance_find(oGasStation,0);
var gas2 = instance_find(oGasStation,1);
if(gas1 != noone && !gas1.car_is_nearby) {
	while(!gas1.car_is_nearby){
		with(gas1) car_is_nearby = true;
	}
	x = view_x - sprite_get_width(smcar1);
	velOffset = 1;
}
else if(gas2 != noone && !gas2.car_is_nearby){
	while(!gas2.car_is_nearby){
		with(gas2) car_is_nearby = true;
	}
	x = view_w + sprite_get_width(smcar1);
	velOffset = -1;
} else {
	with(gas1) car_is_nearby = true;
	x = view_x - sprite_get_width(smcar1);
}

vel = maxAccel * velOffset;

counter = 0;
time = 0;

paidTips = false;