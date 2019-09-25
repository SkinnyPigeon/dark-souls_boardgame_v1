///@check_move_logic(node)
//@param node

var node = argument0;
var node_x = node.x;
var node_y = node.y;
var target = "";

var i = obj_logic.i;
var moving_character = obj_logic.room_character_order[i];
show_message(moving_character.name);
if(moving_character.enemy == 1) {
	target = moving_character.target;
	show_message(target.name)
} else {
	target = node;
}



end_turn();
