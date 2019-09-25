/// @description Check for mouse hover
if(position_meeting(mouse_x, mouse_y, self) && selected == 0 && obj_store.tile_selected == 0) {
	sprite_index = spr_node_selected;
} else if(selected == 0 && obj_store.tile_selected == 0){
	sprite_index = spr_node;
}

if(selected) {
	check_move_logic(self)
}