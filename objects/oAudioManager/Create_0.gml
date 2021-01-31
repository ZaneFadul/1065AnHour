/// @description Insert description here
// You can write your code in this editor
audio_group_load(bgm);
global.loop_map = ds_map_create();
global.loop_map[? sNightCalm] = sNightCalmLoop;
global.loop_map[? sNightLively] = sNightLivelyLoop;
global.loop_map[? sDay] = sDay;

global.currentSong = pointer_null;
global.secondarySong = pointer_null;

