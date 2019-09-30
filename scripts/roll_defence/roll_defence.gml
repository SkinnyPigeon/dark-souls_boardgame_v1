///@description roll_defence(black_dice, blue_dice, orange_dice, attacker_damage, attacker_damage_type, attacker, defender)
///@param black_dice
///@param blue_dice
///@param orange_dice
///@param attacker_damage
///@param attacker_damage_type
///@param attacker
///@param defender

var black_dice = argument0;
var blue_dice = argument1;
var orange_dice = argument2;
var attacker_damage = argument3;
var attacker_damage_type = argument4;
var attacker = argument5;
var defender = argument6;

var defence_total = 0;
var result = 0;

var dice = [black_dice, blue_dice, orange_dice];
var dice_length = array_length_1d(dice);
for(var i = 0; i < dice_length; i++) {
	for(var j = 0; j < dice[i]; j++) {
		var random_index = irandom(5);
		switch(dice[i]) {
			case(black_dice):
				result = obj_black_dice.values[random_index];
				defence_total += result;
				break;
		}
	}
}

show_message(defence_total);
