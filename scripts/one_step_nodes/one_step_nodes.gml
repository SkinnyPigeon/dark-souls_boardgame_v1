///@description recursive_count(current_node, target_node, node_count);
///@param current_node
///@param target_node
///@param node_count

var current_node = argument0;
var target_node = argument1;
var node_count = argument2;

var result_map = ds_map_create();
ds_map_add(result_map, "target_found", false)
ds_map_add(result_map, "found_node", 0);
ds_map_add(result_map, "success_nodes", []);

var success_node_choice = [];
success_node_choice[0] = 0;
var success_node_index = 1;

var current_option_nodes = obj_node_map.node_map[? current_node];
var target_option_nodes = obj_node_map.node_map[? target_node];

node_count += 1;

var current_option_length = array_length_1d(current_option_nodes);
var target_option_length = array_length_1d(target_option_nodes);

for(var i = 0; i < current_option_length; i++) {
	if(current_option_nodes[i] == target_node) {
		ds_map_replace(result_map, "target_found", true);
		ds_map_replace(result_map, "found_node", target_node);
	}
	for(var j = 0; j < target_option_length; j++) {
		if(current_option_nodes[i] == target_option_nodes[j]) {
			success_node_choice[success_node_index] = current_option_nodes[i];
			success_node_index += 1;
		}
	}
	ds_map_replace(result_map, "success_nodes", success_node_choice);
}

//show_message(result_map[? "success_nodes"]);
//THEY ARE FINE HERE
return result_map;