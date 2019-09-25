/// @description Check for mouse hover
if(position_meeting(mouse_x, mouse_y, self)) {
	selected = 1;
	sprite_index = spr_node_selected;
} else {
	sprite_index = spr_node;
}

