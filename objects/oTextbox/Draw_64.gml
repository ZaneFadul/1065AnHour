/// @description Insert description here
// You can write your code in this editor

draw_set_font(chatFont);
/*
if(instance_exists(oPlayer) && oPlayer.y > view_h/2) {
	draw_sprite(spr,0,view_w/2 + view_x,200 + view_y);
	draw_text(view_w/2 - boxWidth/2 + 130 + view_x, 200 + view_y,portrait);
}
else {
	draw_sprite(spr,0,view_w/2 + view_x,view_h - 200);
	draw_text(view_w/2 - boxWidth/2 + 130 + view_x, view_h - 200,portrait);
}*/

obj_to_follow = oGasStation;
with(oPlayer){
	if(instance_exists(oCar)) other.obj_to_follow = instance_place(x,y,oCar);
}

if(portrait == "Gale") obj_to_follow = oPlayer;
if(portrait == "Dakota") obj_to_follow = oDakota;

draw_text(obj_to_follow.x - sprite_get_width(obj_to_follow.sprite_index)/2, obj_to_follow.y - sprite_get_height(obj_to_follow.sprite_index)/2, portrait);

if(portrait == "Radio") draw_set_font(radioFont);

if(charCount < string_length(text[page])){
	spr = sTextbox;
	if(!fastText){
		charCount += 0.5;
	} else {
		charCount ++;
	}
	if((charCount-1)%2 == 0) audio_play_sound(audio,10,0);
} else {
	spr = sTextboxDone;
}

textPart = string_copy(text[page],1,charCount);
draw_text_ext(obj_to_follow.x - sprite_get_width(obj_to_follow.sprite_index)/2, obj_to_follow.y - sprite_get_height(obj_to_follow.sprite_index)/2 + 30, textPart, view_w/2 - boxWidth/2 + 300 + view_x, 2*boxWidth/3 - 20);