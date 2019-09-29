/// @description Add the rest of the stuff in here
draw_self();
draw_set_halign(fa_left);
var name_text = "Name: " + string(name);
draw_text(x - 100, y + 180, name_text)
if(enemy) {
	var damage_text = "Damage: " + string(damage);
	var damage_type_text = "Damage Type: " + string(damage_type);
	
	draw_text(x - 100, y + 200, damage_text);
	draw_text(x - 100, y + 220, damage_type_text);
	
	var target_text = "Target: " + string(target);
	var direction_text = "Movement: " + string(movement);
	
	draw_text(x - 100, y + 240, target_text);
	draw_text(x - 100, y + 260, direction_text);
}