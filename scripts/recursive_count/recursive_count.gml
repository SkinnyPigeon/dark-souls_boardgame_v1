///@description recursive_count(current_node, target_node, node_count);
///@param current_node
///@param target_node
///@param node_count

var current_node = argument0;
var target_node = argument1;
var node_count = argument2;

var success_node_choice = "";

var current_option_nodes = obj_node_map.node_map[? current_node];
var target_option_nodes = obj_node_map.node_map[? target_node];

node_count += 1;

var current_option_length = array_length_1d(current_option_nodes);
var target_option_length = array_length_1d(target_option_nodes);

for(var i = 0; i < current_option_length; i++) {
	for(var j = 0; j < target_option_length; j++) {
		if(current_option_nodes[i] == target_option_nodes[j]) {
			
		}
	}
}