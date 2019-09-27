///@description count_nodes_to_target(character)
///@param character

var character = argument0;

if(character.enemy) {
	var targets = obj_logic.player_character_order;
	var target_count = array_length_1d(targets);
	var target_array = ds_grid_create(target_count, 1);
	var possible_moves = [];
	
	var selectable_nodes = [];
	var selectable_nodes_index = 0;
	for(var i = 0; i < target_count; i++) {
		var start_count = 0;
		var current_node = character.node;
		var target_node = targets[i].node;
		possible_moves[i] = one_step_nodes(current_node, target_node, start_count)
	}
	var possible_move_length = array_length_1d(possible_moves);
	var selectable_moves = [];
	var has_target = false;
	for(var j = 0; j < possible_move_length; j++) {
		var results = possible_moves[j];
		var target_found = results[? "target_found"]
		var found_node = results[? "found_node"]
		if(target_found) {
			selectable_moves[j] = found_node;
			has_target = true;
		}
	}
	if(!has_target) {
		for(var k = 0; k < possible_move_length; k++) {
			var results = possible_moves[k];
			var success_nodes = results[? "success_nodes"];
			var success_nodes_length = array_length_1d(success_nodes);
			if(success_nodes_length > 1) {
				for(var l = 1; l < success_nodes_length; l++) {
					selectable_nodes[selectable_nodes_index] = success_nodes[l];
					selectable_nodes_index += 1;
				}
			}
		}
	}
	show_message(selectable_nodes)
}

