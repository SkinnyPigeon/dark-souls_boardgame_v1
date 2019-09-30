///@description check_for_battle(character, node);
///@param character
///@param node
var character = argument0;
var node = argument1;

var enemies_on_node = [];
var enemy_index = 0;
var players_on_node = [];
var player_index = 0;

var enemies = obj_logic.enemy_character_order;
var enemy_length = array_length_1d(enemies);

var players = obj_logic.player_character_order;
var player_length = array_length_1d(players);

for(var i = 0; i < enemy_length; i++) {
	if(enemies[i] != character) {
		if(enemies[i].node == node) {
			enemies_on_node[enemy_index] = enemies[i];
			enemy_index += 1;
		}
	} 
}

for(var i = 0; i < player_length; i++) {
	if(players[i] != character) {
		if(players[i].node == node) {
			players_on_node[player_index] = players[i];
			player_index += 1;
		}
	} 
}

var enemies_sharing_node_length = array_length_1d(enemies_on_node);
var players_sharing_node_length = array_length_1d(players_on_node);

if(character.enemy && players_sharing_node_length > 0) {
	if(instance_exists(obj_fight)) {
		instance_destroy(obj_fight);
	}
	instance_create_layer(1504, 224, "ui", obj_fight);
	obj_fight.attacking_character = character;
	if(instance_exists(obj_show_characters_to_fight)) {
		instance_destroy(obj_show_characters_to_fight);
	}
	if(instance_exists(obj_fight_character)) {
		instance_destroy(obj_fight_character);
	}
	instance_create_layer(960, 766, "ui", obj_show_characters_to_fight);
	obj_show_characters_to_fight.characters = players_on_node;
}