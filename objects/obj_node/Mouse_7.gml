/// @description End turn for debug
if(selectable && position_meeting(mouse_x, mouse_y, self)) {
	var character = obj_logic.character;
	character.x = mouse_x;
	character.y = mouse_y;
	var node = find_node(character.x, character.y);
	character.node = node;
	check_for_battle(character, node);
	//end_turn();
}
