///@description show_character(character)
///@param character

var character = argument0;
var character_image = "";
instance_create_layer(960, 192, "ui", obj_show_character);
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
	obj_show_character.character = character;
	obj_show_character.sprite_index = character_image;
	obj_show_character.enemy = true;
	obj_show_character.name = character_name;
	obj_show_character.physical_armour = character.physical_armour;
	obj_show_character.magic_armour = character.magic_armour;
	obj_show_character.damage = character.damage;
	obj_show_character.damage_type = character.damage_type;
	obj_show_character.target = character.target;
	obj_show_character.movement = character.movement;
	obj_show_character.aoe = character.aoe;
	
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
	obj_show_character.character = character;
	obj_show_character.sprite_index = character_image;
	obj_show_character.enemy = false;
	obj_show_character.name = character_name;
	obj_show_character.hearts = character.hearts;
	obj_show_character.stamina = character.stamina;
	obj_show_character.total_energy = character.total_energy;
	obj_show_character.black_dice = character.black_dice;
	obj_show_character.blue_dice = character.blue_dice;
	obj_show_character.orange_dice = character.orange_dice;
	obj_show_character.green_dice = character.green_dice;
	obj_show_character.aoe = character.aoe;
	obj_show_character.damage_type = character.damage_type;
	obj_show_character.display_sprite = character.display_sprite;
	obj_show_character.display_sprite_selected = character.display_sprite_selected;
}