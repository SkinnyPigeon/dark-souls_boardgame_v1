///@description count_nodes_to_target(character)
///@param character

var character = argument0;

if(character.enemy) {
	var targets = obj_logic.player_character_order;
	var target_count = array_length_1d(targets);
	var target_array = ds_grid_create(target_count, 1)
	var possible_moves = [];
	for(var i = 0; i < target_count; i++) {
		var start_count = 0;
		var current_node = character.node;
		var target_node = targets[i].node;
		possible_moves[i] = one_step_nodes(current_node, target_node, start_count)
	}
}

