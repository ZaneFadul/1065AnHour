/// @description Insert description here
// You can write your code in this editor
while(oTime.day == dayToAdd && oTime.time == timeToAdd){
	ds_queue_enqueue(global.queue, props);
	show_debug_message("CREATED");
	dayToAdd = -1; timeToAdd = -1;
	instance_destroy();
}