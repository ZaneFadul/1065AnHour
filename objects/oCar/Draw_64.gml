/// @description Insert description here
// You can write your code in this editor
if(state = "FILLING"){
	var boost_ratio = currentTankCapacity/maxTankCapacity;

	draw_line_width_color(x+sprite_width/2,y-77, x+sprite_width/2,y+190,44, c_white,c_white);
	draw_line_width_color(x+sprite_width/2,y-70, x+sprite_width/2,y+180,28, c_gray,c_gray); //back of health bar
	draw_line_width_color(x+sprite_width/2,y+180-250*boost_ratio, x+sprite_width/2,y + 180,28, c_orange,c_orange); //front of health bar
}

if(currentTankCapacity == maxTankCapacity){
		draw_set_font(Font2);
		draw_text_ext_transformed_colour(x+sprite_width/2, y+sprite_height/2-200, "DONE", 5, 1000, 1, 1, 0, make_colour_rgb(255, 238, 204),make_colour_rgb(255, 238, 204),make_colour_rgb(255, 238, 204),make_colour_rgb(255, 238, 204),1);
}