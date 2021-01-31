/// @description Insert description here
// You can write your code in this editor

exitLock = true;
alarm[0] = room_speed * 1;
buttons = ds_map_create();

for( i=0; i<3; i++){
	for( j=0; j<3; j++){
		buttons[(3*i)+(j+1)] = instance_create_depth(1310+j*160,240+i*110,-11,oVendingButton);
		buttons[(3*i)+(j+1)].number = (3*i)+(j+1);
	}
}
buttons[9] = instance_create_depth(1310+160,240+330,-11,oVendingButton);
buttons[9].number = 0;

nums = "";
depth = -11;