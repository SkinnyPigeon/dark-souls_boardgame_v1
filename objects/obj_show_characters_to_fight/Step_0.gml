/// @description Insert description here
// You can write your code in this editor
var characters_array_length = array_length_1d(characters);

for(var i = 0; i < characters_array_length; i++) {
	var sprite = characters[i].display_sprite;
	
	draw_sprite(sprite, 0, display_x, display_y);
	display_x += 400;
}