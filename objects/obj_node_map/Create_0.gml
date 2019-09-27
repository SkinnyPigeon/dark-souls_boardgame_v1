/// @description Creating DS Map

one_node_map = ds_map_create();
ds_map_add(one_node_map, 1, [2, 4, 6]);
ds_map_add(one_node_map, 2, [1, 3, 4, 5, 7]);
ds_map_add(one_node_map, 3, [2, 5, 8]);
ds_map_add(one_node_map, 4, [1, 2, 5, 6, 7, 9]);
ds_map_add(one_node_map, 5, [2, 3, 4, 7, 8, 10]);
ds_map_add(one_node_map, 6, [1, 4, 7, 9, 11]);
ds_map_add(one_node_map, 7, [2, 4, 5, 6, 8, 9, 10, 12]);
ds_map_add(one_node_map, 8, [3, 5, 7, 10, 13]);
ds_map_add(one_node_map, 9, [4, 6, 7, 10, 11, 12]);
ds_map_add(one_node_map, 10, [5, 7, 8, 9, 12, 13]);
ds_map_add(one_node_map, 11, [6, 9, 12]);
ds_map_add(one_node_map, 12, [7, 9, 10, 11, 13]);
ds_map_add(one_node_map, 13, [8, 10, 12]);


two_node_map = ds_map_create();
ds_map_add(two_node_map, 1, [2, 3, 4, 5, 6, 7, 9, 11]);
ds_map_add(two_node_map, 2, [1, 3, 4, 5, 6, 7, 8, 9, 10, 12]);
ds_map_add(two_node_map, 3, [1, 2, 4, 5, 7, 8, 10, 13]);
ds_map_add(two_node_map, 4, [1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12]);
ds_map_add(two_node_map, 5, [1, 2, 3, 4, 6, 7, 8, 9, 10, 12, 13]);
ds_map_add(two_node_map, 6, [1, 2, 4, 5, 7, 8, 9, 10, 11, 12, 13]);
ds_map_add(two_node_map, 7, [1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13]);
ds_map_add(two_node_map, 8, [2, 3, 4, 5, 6, 7, 9, 10, 12, 13]);
ds_map_add(two_node_map, 9, [1, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13]);
ds_map_add(two_node_map, 10, [2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13]);
ds_map_add(two_node_map, 11, [1, 4, 6, 7, 8, 9, 10, 12, 13]);
ds_map_add(two_node_map, 12, [2, 4, 5, 6, 7, 8, 9, 10, 11, 13]);
ds_map_add(two_node_map, 13, [3, 5, 7, 8, 9, 10, 11, 12, 13]);


node_location = ds_map_create();
ds_map_add(node_location, 1, [160, 160]);
var coords = node_location[? 1];
var coord_x = coords[0];
var coord_y = coords[1];

ds_map_add(node_location, 2, [coord_x + 256, coord_y]);
ds_map_add(node_location, 3, [coord_x + 512, coord_y]);
ds_map_add(node_location, 4, [coord_x + 128, coord_y + 128]);
ds_map_add(node_location, 5, [coord_x + 384, coord_y + 128]);
ds_map_add(node_location, 6, [coord_x, coord_y + 256]);
ds_map_add(node_location, 7, [coord_x + 256, coord_y + 256]);
ds_map_add(node_location, 8, [coord_x + 512, coord_y + 256]);
ds_map_add(node_location, 9, [coord_x + 128, coord_y + 384]);
ds_map_add(node_location, 10, [coord_x + 384, coord_y + 384]);
ds_map_add(node_location, 11, [coord_x, coord_y + 512]);
ds_map_add(node_location, 12, [coord_x + 256, coord_y + 512]);
ds_map_add(node_location, 13, [coord_x + 512, coord_y + 512]);
