/// @description Insert description here
// You can write your code in this editor
if(!exitLock && global.keyInteract && alarm[1]<0){
		alarm[1] = room_speed * .2;
}

if mouse_check_button_pressed(mb_left) {
    if collision_point(mouse_x, mouse_y, id, false, false) { //Arguments are (x, y, obj, prec, notme)
        oVendingGUI.nums += string(number);
    }
}