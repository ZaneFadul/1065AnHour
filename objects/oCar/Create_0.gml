/// @description Insert description here
// You can write your code in this editor
depth = -3;

//States [ LOW, FILLING, FULL, COMPLETE ]
state = "LOW";

maxTankCapacity = 100;
currentTankCapacity = 0
tank = instance_create_depth(x, y, -3, oGasTank);
tank.car = self;
wheel = instance_create_depth(x, y, -4, oSmallWheel);
sil = instance_create_depth(x, y, -4, oSil);

maxAccel = 10 ;
velOffset = 1;

colors = ds_map_create();
colors[? 1] = smcar1;
colors[? 2] = smcar2;
colors[? 3] = smcar3;
colors[? 4] = smcar4;

sils = ds_map_create();
sils[? 1] = s1;
sils[? 2] = s2dad;
sils[? 3] = s3;
sils[? 4] = s4;
sils[? 5] = s5;
sils[? 6] = s6;
sils[? 7] = s7;
sils[? 8] = s7n;

with(sil) sprite_index = other.sils[? round(random_range(1, 8))];

color = colors[? round(random_range(1,4))];


sprite_index = color;

scale = 0.70;

dialogue = pointer_null;
dialogueTrigger = instance_create_depth(x, y, -1000, oCutsceneTriggerT);
async = false;

var gas1 = instance_find(oGasStation,0);
var gas2 = instance_find(oGasStation,1);
if(gas1 != noone && !gas1.car_is_nearby) {
	while(!gas1.car_is_nearby){
		with(gas1) car_is_nearby = true;
	}
	x = view_x - sprite_get_width(color);
	velOffset = 1;
}
else if(gas2 != noone && !gas2.car_is_nearby){
	while(!gas2.car_is_nearby){
		with(gas2) car_is_nearby = true;
	}
	x = view_w + sprite_get_width(color);
	velOffset = -1;
} else {
	with(gas1) car_is_nearby = true;
	x = view_x - sprite_get_width(color);
}

vel = maxAccel * velOffset;

counter = 0;
time = 0;

paidTips = false;