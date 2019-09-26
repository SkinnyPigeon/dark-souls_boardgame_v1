///@start_turn(character)
//@param character           

var character = argument0;
var char_x = character.x;
var char_y = character.y;

count_nodes_to_target(character)

//var one_space_array = [
//	[char_x + 256, char_y],
//	[char_x - 256, char_y],
//	[char_x, char_y + 256],
//	[char_x, char_y -256],
//	[char_x + 128, char_y + 128],
//	[char_x + 128, char_y -128],
//	[char_x - 128, char_y + 128],
//	[char_x - 128, char_y - 128]
//];

//var two_space_array = [];


//if(character.enemy && character.steps == 1) {
//	for(var i = 0; i < array_length_1d(one_space_array); i++) {
//		var coords = one_space_array[i];
//		var coord_x = coords[0];
//		var coord_y = coords[1];
	
//		var node_instance = instance_position(coord_x, coord_y, obj_node)
//		if(node_instance != noone) {
//			var target = character.target;
//			var movement = character.movement;
//			//var target_array = [];
//			//var target_i = 0;
//			if(target == "closest" && movement == "towards") {
//				for(var j = 0; j < array_length_1d(obj_logic.player_character_order); j++) {
//					var player = obj_logic.player_character_order[j];
//					if(point_distance(node_instance.x, node_instance.y, player.x, player.y) < point_distance(char_x, char_y, player.x, player.y)) {
//						node_instance.sprite_index = spr_node_selected_good;
//						node_instance.selectable = 1;
//					}
//				}
//			} else if(target == "closest" && movement == "away") {
//				for(var j = 0; j < array_length_1d(obj_logic.player_character_order); j++) {
//					var player = obj_logic.player_character_order[j];
//					if(point_distance(node_instance.x, node_instance.y, player.x, player.y) > point_distance(char_x, char_y, player.x, player.y)) {
//						node_instance.sprite_index = spr_node_selected_good;
//						node_instance.selectable = 1;
//					}
//				}
//			}
//		}
//	}
//}

//if(character.enemy == 1) {
//	switch(
//}