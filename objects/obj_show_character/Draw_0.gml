/// @description Add the rest of the stuff in here
draw_self();
draw_set_halign(fa_left);
var name_text = "Name: " + string(name);
draw_text(x - 100, y + 180, name_text)
if(enemy) {
	var damage_text = "Damage: " + string(damage);
	var damage_type_text = "Damage Type: " + string(damage_type);
	var aoe_text = "";
	if(aoe) {
		aoe_text = "AOE: Yes";
	} else {
		aoe_text = "AOE: No";
	}
	draw_text(x - 100, y + 200, damage_text);
	draw_text(x - 100, y + 220, damage_type_text);
	draw_text(x - 100, y + 240, aoe_text);
	
	var target_text = "Target: " + string(target);
	var direction_text = "Movement: " + string(movement);
	
	draw_text(x - 100, y + 260, target_text);
	draw_text(x - 100, y + 280, direction_text);
}

if(!enemy) {
	var black_dice_text = "Black Dice: " + string(black_dice);
	var blue_dice_text = "Blue Dice: " + string(blue_dice);
	var orange_dice_text = "Orange Dice: " + string(orange_dice);
	var green_dice_text = "Dodge Dice: " + string(green_dice);

	draw_text(x - 100, y + 200, black_dice_text);
	draw_text(x - 100, y + 220, blue_dice_text);
	draw_text(x - 100, y + 240, orange_dice_text);
	draw_text(x - 100, y + 260, green_dice_text);
	
	var aoe_text = "";
	if(aoe) {
		aoe_text = "AOE: Yes";
	} else {
		aoe_text = "AOE: No";
	}
	
	var damage_type_text = "Damage Type: " + string(damage_type);
	
	draw_text(x - 100, y + 280, aoe_text);
	draw_text(x - 100, y + 300, damage_type_text);

	var energy_text = "Total Energy Remaining: " + string(total_energy);
	var hearts_text = "Damage Taken: " + string(hearts);
	var stamina_text = "Stamina Used: " + string(stamina);
	
	draw_text(x - 100, y + 320, energy_text);
	draw_text(x - 100, y + 340, hearts_text);
	draw_text(x - 100, y + 360, stamina_text);
}