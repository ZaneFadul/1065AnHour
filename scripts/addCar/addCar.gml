// @description addCar(colorID 1 -> 4, silhouetteID 1 -> 7, dialogueScript, async, day, time)
// @param colorID
// @param silhouetteID,
// @param dialogueScript
// @param async?
// @param day
// @param time

function addCar(argument0, argument1, argument2, argument3, argument4, argument5){
	var queueCopy = global.queue;
	var newArray = [];
	
	for(var i = 0; i < ds_queue_size(global.queue); i ++){
		newArray[i] = ds_queue_dequeue(queueCopy);
	}
	
	for(var i = 0; i < array_length(newArray); i ++){
		//var currInstance = instance_find(oAddCarNode, i);
		//show_debug_message(currInstance);
		if (newArray[i] != [argument0, argument1, argument2, argument3]){
			var carToAdd = instance_create_depth(-1, -1, 0, oAddCarNode);
			carToAdd.dayToAdd = argument4;
			carToAdd.timeToAdd = argument5;
			carToAdd.props = [argument0, argument1, argument2, argument3];
		}
	}
	
}