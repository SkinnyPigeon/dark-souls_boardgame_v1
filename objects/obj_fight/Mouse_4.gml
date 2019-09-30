/// @description Fight
for(var i = 0; i < instance_number(obj_fight_character); i++) {
	characters[i] = instance_find(obj_fight_character, i);
	//var name = characters[i].name;
	//show_message(attacking_character.name);
	//show_message(name);
	fight(characters[i], attacking_character);
}

