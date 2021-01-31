// @description addCar(colorID 1 -> 4, silhouetteID 1 -> 7, dialogueScript, async, day, time)
// @param colorID
// @param silhouetteID,
// @param dialogueScript
// @param async?
// @param day
// @param time

function addCar(argument0, argument1, argument2, argument3, argument4, argument5){
	for(var i = 0; i < instance_number(oAddCarNode); i ++){
		var currInstance = instance_find(oAddCarNode, i);
		show_debug_message(currInstance);
		
		if (currInstance.props == [argument0, argument1, argument2, argument3] &&
		currInstance.dayToAdd == argument4 &&
		currInstance.timeToAdd == argument5){
			return;
		} else {
			var carToAdd = instance_create_depth(-1, -1, 0, oAddCarNode);
			carToAdd.dayToAdd = argument4;
			carToAdd.timeToAdd = argument5;
			carToAdd.props = [argument0, argument1, argument2, argument3];
		}
	}
}