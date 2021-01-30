/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oCutscene)) exit;

if(dayBreakSceneTwo){
	instance_create_layer(-1,-1,"Instances",oCutscene);
	oCutscene.cutscene = true;
	oCutscene.autoAdd = false;
	oCutscene.sceneInfo = [
		[cutsceneChangeVariable, oCutscene, "color", c_silver],
		[cutsceneBlack],
		[cutsceneWait,1],
		[cutsceneFadeIn]
	];
	layer_background_destroy(currentLayer);
	currentLayer = layer_background_create(backgroundLayer, timeOfDay[? 0]);
	layer_background_stretch(currentLayer, true);
	dayBreakSceneTwo = false;
	exit;
}

if(global.pause){
		instance_deactivate_all(true);
		for(var i = 0; i < array_length_1d(global.managers); i++){
			instance_activate_object(global.managers[i]);
		}
		audio_pause_all();

} else {
	instance_activate_all();
	audio_resume_all();
}

counter ++;
if(counter % room_speed == 0) {
	time += 1;
	
	//handle random customer logic
	var should_add_car = round(random_range(0,100)) > 90;
	if(should_add_car){
		global.queueSize += 1;
	}
}

//handle day changes
timeOfDayIndex = floor(time / 45);

if(timeOfDayIndex == 4){
	instance_create_layer(-1,-1,"Instances",oCutscene);
	oCutscene.cutscene = true;
	oCutscene.autoAdd = false;
	oCutscene.sceneInfo = [
		[cutsceneStopAllSound],
		[cutsceneFadeOut],
		[cutsceneWait, 2],
		[cutsceneChangeVariable, oCutscene, "depth", 0],
		[cutsceneChangeVariable, oTime, "timeOfDayIndex", 0],
		[cutsceneChangeVariable, oTime, "day", day + 1],
		[cutsceneChangeVariable, oTime, "counter", 0],
		[cutsceneChangeVariable, oTime, "time", 0],
		[cutsceneChangeVariable, oTime, "dayBreakSceneTwo", true],	
		[cutsceneWait,2],
		[cutsceneChangeVariable, oCutscene, "color", c_silver],
		[cutsceneBlack],
	];
	
}

if(counter % room_speed = 0 && timeOfDayIndex < 4 && layer_exists(backgroundLayer) && layer_background_get_index(currentLayer) != timeOfDay[? timeOfDayIndex]){
	layer_background_destroy(currentLayer);
	currentLayer = layer_background_create(backgroundLayer, timeOfDay[? timeOfDayIndex]);
	layer_background_stretch(currentLayer, true);
}
