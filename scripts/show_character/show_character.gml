///@description show_character(character)
///@param character

var character = argument0;
var character_image = "";

if(character.enemy) {
	var character_name = character.name;
	switch(character_name) {
		case("Hollow Knight"):
			character_image = spr_hollow_knight_display;
			break;
		case("Hollow Archer"):
			character_image = spr_hollow_archer_display;
			break;
	}
	obj_show_character.sprite_index = character_image;
}

if(!character.enemy) {
	var character_name = character.name;
	switch(character_name) {
		case("Knight"):
			character_image = spr_knight_display;
			break;
		case("Herald"):
			character_image = spr_herald_display;
			break;
	}
	obj_show_character.sprite_index = character_image;
}