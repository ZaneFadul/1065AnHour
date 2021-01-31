/// @description Insert description here
// You can write your code in this editor

//backgroundLayer = layer_create(50,"Background");
//currentLayer = layer_background_create(backgroundLayer, BUNKERempty);
instance_create_layer(-1,-1,"Instances",oCutscene);
oCutscene.cutscene = true;
oCutscene.autoAdd = false;
oCutscene.sceneInfo = [
	[cutsceneBlack],
	[cutsceneChangeBackground,"Background", BUNKERempty],
	[cutsceneWait,.2],
	[cutsceneFadeIn],
	[cutsceneWait,1],
	[cutsceneFadeOut],
	[cutsceneBlack],
	[cutscenePlaySound,sDoor],
	[cutsceneWait,.5],
	[cutscenePlaySound,sLadder],
	[cutsceneWait,.8],
	[cutscenePlaySound,sLand],
	[cutsceneChangeBackground,"Background", BUNKER],
	[cutsceneFadeIn],
	[cutsceneWait,1.5],
	//dialogue
	
	//transition to intro
	[cutsceneFadeOut],
	[cutsceneBlack],
	[cutsceneWait,2],

	//hires
	[cutsceneChangeBackground,"Background", hiresdakota],
	[cutsceneFadeIn],
	[cutsceneFadeOutAudio, sNightCalmLoop],
	[cutsceneFadeOutAudio, sDay],
	[cutsceneWait,1],

	//credit title screen transition
	[cutsceneFadeOut],
	[cutsceneBlack],
	[cutsceneWait,1],
	[cutsceneChangeBackground,"Background", creditTitleScreenBG],
	[cutsceneInstanceCreate, 0,0,"Instances",oCreditTitle],
	[cutscenePlayMusic,sCredits],
	[cutsceneWait,3],
	[cutsceneFadeIn],
	[cutsceneWait,7],
	[cutsceneBlack],
	[cutsceneWait,1.5],
	[cutsceneChangeRoom,rCredits]
]


