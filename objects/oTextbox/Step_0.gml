/// @description Insert description here
// You can write your code in this editor


if(done){
	instance_destroy();
}

if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || global.keyInteract){	
	if(page + 1 < array_length_1d(text)){
		
		if(charCount >= string_length(text[page])){
			page++;
			charCount = 0;
			fastText = 0;
		} else {
			fastText = 1;
		}
	} else {
		if(charCount >= string_length(text[page])){
			done = true;
			charCount = 0;
			fastText = 0;
		} else {
			fastText = 1;
		}
	}
}


image_xscale = 0.7;
image_yscale = 0.7;