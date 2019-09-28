///@description check_for_battle(character, node);
///@param character
///@param node
var character = argument0;
var node = argument1;

var enemies_on_node = [];
var players_on_node = [];

var enemies = obj_logic.enemy_character_order;
var enemy_length = array_length_1d(enemies);

var players = obj_logic.player_character_order;
var player_length = array_length_1d(players);

for(var i = 0; i < enemy_length; i++) {
	if(enemies[i] != character) {
		if(enemies[i].node == node) {
			enemies_on_node[i] = enemies[i];
		}
	} 
}

for(var i = 0; i < player_length; i++) {
	if(players[i] != character) {
		if(players[i].node == node) {
			players_on_node[i] = players[i];
		}
	} 
}

var enemies_sharing_node_length = array_length_1d(enemies_on_node);
var players_sharing_node_length = array_length_1d(players_on_node);

if(character.enemy && players_sharing_node_length > 0) {
	show_message("Attacks which player?");
}

end_turn();