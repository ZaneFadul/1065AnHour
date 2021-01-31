/// @description Insert description here
// You can write your code in this editor
if(oTime.day >= dayToAdd && oTime.time >= timeToAdd){
	ds_queue_enqueue(global.queue, props);
	instance_destroy();
}