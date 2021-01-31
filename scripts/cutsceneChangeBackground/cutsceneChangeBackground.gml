// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cutsceneChangeBackground(argument0, argument1){
	//argument0 background element ID, argument 1 new bg sprite
	layer_background_sprite(layer_background_get_id(argument0), argument1);
	
	cutsceneEndAction();
}