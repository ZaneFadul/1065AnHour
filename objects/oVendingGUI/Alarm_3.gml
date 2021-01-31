/// @description Insert description here
// You can write your code in this editor

//UNLOCKED
audio_play_sound(sVendingCan,100,false);
oVending.sprite_index = vendingopem;
audio_stop_sound(sVending);

instance_create_layer(-1,-1,"Instances",oCutscene);
oCutscene.cutscene = true;
oCutscene.autoAdd = false;
oCutscene.sceneInfo = [
	[cutsceneFadeOut],
	[cutsceneInstanceDestroy, oVendingButton],
	[cutsceneInstanceDestroy, oVendingGUI],
	[cutsceneBlack],
	[cutscenePlaySound,sUnlock],
	[cutsceneWait,1],
	[cutsceneFadeIn]	
];

oVending.state = "OPEN";

