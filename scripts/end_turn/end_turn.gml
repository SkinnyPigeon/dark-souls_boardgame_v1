///end_turn()

character_length = array_length_1d(obj_logic.room_character_order);
if(obj_logic.i + 1 == character_length) {
	obj_logic.i = 0;
} else {
	obj_logic.i += 1;
}