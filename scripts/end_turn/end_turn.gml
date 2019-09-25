///end_turn()
var character = "";
var enemy_character_length = array_length_1d(obj_logic.enemy_character_order);
var player_character_length = array_length_1d(obj_logic.player_character_order);
obj_node.sprite_index = spr_node;

if(obj_logic.enemy_turn) {
	character = obj_logic.enemy_character_order[obj_logic.i];
} else {
	character = obj_logic.player_character_order[obj_logic.j];
	obj_logic.enemy_turn = true;
}

if(obj_logic.i + 1 == enemy_character_length) {
	obj_logic.i = 0;
	obj_logic.enemy_turn = false;
} else {
	obj_logic.i += 1;
}

if(obj_logic.j + 1 == player_character_length) {
	obj_logic.j = 0;
} else {
	obj_logic.j += 1;
}



start_turn(character)