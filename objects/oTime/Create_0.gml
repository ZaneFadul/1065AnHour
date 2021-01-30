/// @description Insert description here
// You can write your code in this editor

image_index = 0;
image_speed = 0;

global.managers = [oController, oGUI, oTextbox, oTime, oDisplayManager, oCameraTracker, oCutscene, oAudioManager, oPhysics];

timeOfDay = ds_map_create();
timeOfDay[? 0] = gamestill_nopump_dawn;
timeOfDay[? 1] = gamestill_nopump_noon;
timeOfDay[? 2] = gamestill_nopump_dusk;
timeOfDay[? 3] = gamestill_nopump_night;
timeOfDayIndex = 0;

backgroundLayer = layer_create(50,"Background");
currentLayer = layer_background_create(backgroundLayer, timeOfDay[? timeOfDayIndex]);
layer_background_stretch(currentLayer, true);
counter = 0;
time = 0;
day = 1;

dayBreakSceneTwo = false;