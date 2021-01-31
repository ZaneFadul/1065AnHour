/// @description Insert description here
// You can write your code in this editor
while(oTime.day == dayToAdd && oTime.time == timeToAdd){
	ds_queue_enqueue(global.queue, props);
	dayToAdd = -1; timeToAdd = -1;
	instance_destroy();
}