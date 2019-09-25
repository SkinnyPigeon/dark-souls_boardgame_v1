///@start_turn(character)
//@param character           

var character = argument0;
var char_x = character.x;
var char_y = character.y;

var one_space_array = [
	[char_x + 256, char_y],
	[char_x - 256, char_y],
	[char_x, char_y + 256],
	[char_x, char_y -256],
	[char_x + 128, char_y + 128],
	[char_x + 128, char_y -128],
	[char_x - 128, char_y + 128],
	[char_x - 128, char_y - 128]
]

for(var i = 0; i < array_length_1d(one_space_array); i++) {
	var coords = one_space_array[i];
	var coord_x = coords[0];
	var coord_y = coords[1];
	
	var node_instance = instance_position(coord_x, coord_y, obj_node)
	if(node_instance != noone) {
		node_instance.sprite_index = spr_node_selected_good;
		node_instance.selectable = 1;
	}
}

//if(character.enemy == 1) {
//	switch(
//}