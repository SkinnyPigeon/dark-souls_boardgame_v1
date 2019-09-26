///@description count_nodes_to_target(character)
///@param character

var character = argument0;

if(character.enemy) {
	
}

var spr_index = object_get_sprite(character);
var spr_name = sprite_get_name(spr_index);
show_message(spr_name);