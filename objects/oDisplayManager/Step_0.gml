/// @description Insert description here
// You can write your code in this editor
if(view_w < 100){
	before = ideal_width;

	aspect_ratio = display_get_width()/display_get_height();
	ideal_width = round(ideal_height * aspect_ratio);

	if(ideal_width & 1){
		ideal_width++;
	}

	surface_resize(application_surface,ideal_width,ideal_height);
	window_set_size(ideal_width,ideal_height);	
}

if(ideal_width != before){
	surface_resize(application_surface,ideal_width,ideal_height);
	window_set_size(ideal_width,ideal_height);
	before = ideal_width;
}


view_x = room_width/2;
view_y = room_height/2;


view_x = clamp(view_x,0,room_width - view_w);
view_y = clamp(view_y,0,room_height - view_h);

