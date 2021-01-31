/// @description Insert description here
// You can write your code in this editor

if(!exitLock && global.keyInteract && alarm[1]<0){
		alarm[1] = room_speed * .2;
}

if(string_length(nums) > 6 && alarm[2]<0){
	nums = "WRONG"	
	alarm[2] = room_speed*2;
}