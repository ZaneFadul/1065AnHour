/// @description Insert description here
// You can write your code in this editor
depth = 1;
inUse = false;
pump = instance_create_depth(x + 120, y + 80, 0, oGasPump);

stationID = "L";
stationIDs = ds_map_create();
stationIDs[? "L"] = pumpleft;
stationIDs[? "R"] = pumpright;

stationIDsno = ds_map_create();
stationIDsno[? "L"] = pumpleft_no;
stationIDsno[? "R"] = pumpright2_no;

car_is_nearby = noone;
player_by_station = 0;

is_e = false;
bigE = 0;