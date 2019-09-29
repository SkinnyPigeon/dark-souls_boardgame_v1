/// @description Drawing characters
display_x = x;
display_y = y;

var characters_array_length = array_length_1d(characters);
if(characters_array_length > 0) {
	for(var i = 0; i < characters_array_length; i++) {
		var sprite = characters[i].display_sprite;
	
		draw_sprite(sprite, 0, display_x, display_y);
		display_x += 400;
	}
}