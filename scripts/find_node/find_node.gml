///@description find_node(coord_x, coord_y);
///@param coord_x
///@param coord_y
var coord_x = argument0;
var coord_y = argument1;

var node = instance_position(coord_x, coord_y, obj_node);

var node_x = node.x;
var node_y = node.y;

for(var i = 1; i < ds_map_size(obj_node_map.node_location) + 1; i++) {
	var coords_to_check = obj_node_map.node_location[? i];
	var check_x = coords_to_check[0];
	var check_y = coords_to_check[1];
	
	if(check_x == node_x && check_y == node_y) {
		return i;
	}
}