///@start_turn(character)
//@param character           

var character = argument0;
//var char_x = character.x;
//var char_y = character.y;

handle_movement(character)
show_character(character);
obj_store.character_taking_turn = character;