/// @description Drawing characters
//display_x = x;
//display_y = y;

//var characters_array_length = array_length_1d(characters);
//if(characters_array_length > 0) {
//	for(var i = 0; i < characters_array_length; i++) {
//		var character = characters[i];
//		//var sprite = character.display_sprite;
//		var display_character = instance_create_layer(display_x, display_y, "ui", obj_fight_character);
//		//display_character.sprite_index = sprite;
//		display_character.name = character.name;
//		if(character.enemy) {
//			display_character.physical_armour = character.physical_armour;
//			display_character.magic_armour = character.magic_armour;
//			display_character.damage = character.damage;
//			display_character.damage_type = character.damage_type;
//			display_character.target = character.target;
//			display_character.movement = character.movement;
//			display_character.aoe = character.aoe;
//		} else if (!character.enemy) {
//			display_character.hearts = character.hearts;
//			display_character.stamina = character.stamina;
//			display_character.total_energy = character.total_energy;
//			display_character.black_dice = character.black_dice;
//			display_character.blue_dice = character.blue_dice;
//			display_character.orange_dice = character.orange_dice;
//			display_character.green_dice = character.green_dice;
//			display_character.aoe = character.aoe;
//			display_character.damage_type = character.damage_type;
//			display_character.display_sprite = character.display_sprite;
//			display_character.display_sprite_selected = character.display_sprite_selected;
//		}
//		display_x += 400;
//	}
//}