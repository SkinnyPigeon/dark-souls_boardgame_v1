///end_turn()
var character = "";
var enemy_character_length = array_length_1d(obj_logic.enemy_character_order);
var player_character_length = array_length_1d(obj_logic.player_character_order);
obj_node.sprite_index = spr_node;
obj_node.selectable = false;
if(instance_exists(obj_fight)) {
	instance_destroy(obj_fight)
}

if(instance_exists(obj_show_character)) {
	instance_destroy(obj_show_character)
}

if(obj_logic.turn == 1) {
	character = obj_logic.enemy_character_order[0];
	obj_logic.character = obj_logic.enemy_character_order[0];
	obj_logic.turn += 1;
	obj_logic.i += 1;
}

if(obj_logic.enemy_turn && enemy_character_length == 1) {
	obj_logic.enemy_turn = false;
	character = obj_logic.player_character_order[obj_logic.j];
	obj_logic.character = obj_logic.player_character_order[obj_logic.j];
	obj_logic.j += 1;
}

if(obj_logic.enemy_turn && enemy_character_length > 1) {
	if(obj_logic.i + 1 <= enemy_character_length) {
		character = obj_logic.enemy_character_order[obj_logic.i];
		obj_logic.character = obj_logic.enemy_character_order[obj_logic.i];
		obj_logic.i += 1;
	} else if(obj_logic.i + 1 > enemy_character_length) {
		obj_logic.i = 0;
		obj_logic.enemy_turn = false;
	}
}

if(!obj_logic.enemy_turn) {
	if(obj_logic.j + 1 <= player_character_length) {
		character = obj_logic.player_character_order[obj_logic.j];
		obj_logic.character = obj_logic.player_character_order[obj_logic.j];
		obj_logic.j += 1;
		obj_logic.enemy_turn = true;
	} else {
		character = obj_logic.player_character_order[0];
		obj_logic.character = obj_logic.player_character_order[0];
		obj_logic.j = 0;
		obj_logic.enemy_turn = true;
	}
}

start_turn(character)