/// @description Creating DS Map

node_map = ds_map_create();
ds_map_add(node_map, 1, [2, 4, 6]);
ds_map_add(node_map, 2, [1, 3, 4, 5, 7]);
ds_map_add(node_map, 3, [2, 5, 8]);
ds_map_add(node_map, 4, [1, 2, 5, 6, 7, 9]);
ds_map_add(node_map, 5, [2, 3, 4, 7, 8, 10]);
ds_map_add(node_map, 6, [1, 4, 7, 9, 11]);
ds_map_add(node_map, 7, [2, 4, 5, 6, 8, 9, 10, 12]);
ds_map_add(node_map, 8, [3, 5, 7, 10, 13]);
ds_map_add(node_map, 9, [4, 6, 7, 10, 11, 12]);
ds_map_add(node_map, 10, [5, 7, 8, 9, 12, 13]);
ds_map_add(node_map, 11, [6, 9, 12]);
ds_map_add(node_map, 12, [7, 9, 10, 11, 13]);
ds_map_add(node_map, 13, [8, 10, 12]);

node_location = ds_map_create();
ds_map_add(node_location, 1, [96, 96]);
ds_map_add(node_location, 2, [352, 96]);
ds_map_add(node_location, 3, [608, 96]);
ds_map_add(node_location, 4, [224, 224]);
ds_map_add(node_location, 5, [480, 224]);
ds_map_add(node_location, 6, [96, 352]);
ds_map_add(node_location, 7, [352, 352]);
ds_map_add(node_location, 8, [608, 352]);
ds_map_add(node_location, 9, [224, 480]);
ds_map_add(node_location, 10, [480, 480]);
ds_map_add(node_location, 11, [96, 608]);
ds_map_add(node_location, 12, [352, 608]);
ds_map_add(node_location, 13, [608, 608]);
