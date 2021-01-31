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
	[cutsceneTalk, "Unhooded Stranger", ["Whos there?"]],
    [cutsceneTalk, "Gale", ["The guy you told to come down here"]],
	[cutsceneTalk, "Unhooded Stranger", ["Damn..."]],
    [cutsceneTalk, "Unhooded Stranger", ["I'm going to be honest, I didnt think you were smart enough to get down here."]],
    [cutsceneTalk, "Unhooded Stranger", ["You're a lot smarter than you look"]],
	[cutsceneTalk, "Gale", ["I'm going to ignore that"]],
    [cutsceneTalk, "Unhooded Stranger", ["Well I guess theres no turning back now then"]],
    [cutsceneTalk, "Gale", ["Wait this wasn't all just some elaborate prank?"]],
    [cutsceneTalk, "Unhooded Stranger", ["You had to have noticed it right?"]],
    [cutsceneTalk, "Unhooded Stranger", ["All they do is smile but everytime they look for someone, they never come back the same."]],
    [cutsceneTalk, "Unhooded Stranger", ["I would know... my friend Tylin turned into one of them."]],
    [cutsceneTalk, "Gale", ["No chance they're just happy?"]],
    [cutsceneTalk, "Unhooded Stranger", ["No there's something else going on here in Red Mesa."]],
    [cutsceneTalk, "Unhooded Stranger", ["I dont know what yet but that's what you're here to help me with, right ..."]],
	[cutsceneTalk, 1.5],
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
	[cutsceneTalk, "Unhooded Stranger", ["I never did get your name huh, what's you're name again?"]], 
    [cutsceneTalk, "Unhooded Stranger", ["I'm Dakota"]],
    [cutsceneTalk, "Gale", ["Gale."]],
    [cutsceneTalk, "Dakota", ["Right Gale, that's what you're here to help me with"]],
    [cutsceneTalk, "Dakota", ["Lets get along Gale."]],

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


