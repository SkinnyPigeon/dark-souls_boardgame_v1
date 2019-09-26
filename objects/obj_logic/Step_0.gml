/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_node_map) && ready > 0) {
	ready -= 1;
	start_turn(enemy_character_order[i]);
}