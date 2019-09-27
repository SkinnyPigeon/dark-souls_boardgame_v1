///@description handle_movement(character)
///@param character

var character = argument0;

if(character.enemy) {
	var targets = obj_logic.player_character_order;
	var target_count = array_length_1d(targets);
	var possible_moves = [];
	
	var selectable_nodes = [];
	var selectable_nodes_index = 0;
	for(var i = 0; i < target_count; i++) {
		var start_count = 0;
		var current_node = character.node;
		var target_node = targets[i].node;
		if(character.steps == 1) {
			possible_moves[i] = one_step_nodes(current_node, target_node, start_count)

		} else if(character.steps == 2) {
			possible_moves[i] = two_step_nodes(current_node, target_node, start_count)

		}
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
	var actual_target_length = array_length_1d(selectable_moves);
	var selectable_nodes_length = array_length_1d(selectable_nodes);
	if(actual_target_length > 0) {
		//var node_location = obj_node_map.node_location[? selectable_moves[0]];
		//show_message(node_location)
		for(var l = 0; l < actual_target_length; l++) {
			var node_location = obj_node_map.node_location[? selectable_moves[l]];
			var coord_x = node_location[0];
			var coord_y = node_location[1];
			
			var node = instance_position(coord_x, coord_y, obj_node);
			node.sprite_index = spr_node_selected_good;
		}
	} else if(selectable_nodes_length > 0) {
		//var node_location = obj_node_map.node_location[? selectable_nodes[0]];
		//show_message(node_location)
		for(var m = 0; m < selectable_nodes_length; m++) {
			var node_location = obj_node_map.node_location[? selectable_nodes[m]];
			var coord_x = node_location[0];
			var coord_y = node_location[1];
			
			var node = instance_position(coord_x, coord_y, obj_node);
			node.sprite_index = spr_node_selected_good;
		}
	}
}

