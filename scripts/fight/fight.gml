///@description fight(defender, attacker)
///@param defender
///@param attacker

var defender = argument0;
var attacker = argument1;

if(defender.selected) {
	if(attacker.enemy) {
		instance_create_layer(1504, 392, "ui", obj_roll)
		obj_roll.black_dice = defender.black_dice;
		obj_roll.blue_dice = defender.blue_dice;
		obj_roll.orange_dice = defender.orange_dice;
		obj_roll.attacker_damage = attacker.damage;
		obj_roll.attacker_damage_type = attacker.damage_type;
		obj_roll.defender = defender;
		obj_roll.attacker = attacker;
	} else {
		
	}
}
