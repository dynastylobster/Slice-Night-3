/// @description Insert description here
// You can write your code in this editor
if other.done_slicing = false {


var dam = other.damageType;
var damage = 1.0;
if (array_length(resistances) > 0) {
			if global.character = "Coyote" {
				damage = 0.5;	
			}
	if (dam == "Normal") {
		if (array_contains(resistances, "Immune To Normal")) {
		damage *= 0;
	}
		if (array_contains(resistances, "Resists Normal")) {
		damage /= 2;
	}
		if (array_contains(resistances, "Weak To Normal")) {
		damage *= 2;
	}
	}
	
	if (dam == "Down") {
		if (array_contains(resistances, "Immune To Down")) {
		damage *= 0;
	}
		if (array_contains(resistances, "Resists Down")) {
		damage /= 2;
	}
		if (array_contains(resistances, "Weak To Down")) {
		damage *= 2;
	}
	}
	
	if (dam == "Flame") {
		damage = 0.5;
		if global.character = "Coyote" {
			damage = 1;	
		}
		if (array_contains(resistances, "Immune To Flame")) {
		damage *= 0;
	}
		if (array_contains(resistances, "Resists Flame")) {
		damage /= 2;
	}
		if (array_contains(resistances, "Weak To Flame")) {
		damage *= 2;
	}
	}

}

if (global.character == "Robot") {
damage *= 1.6;
}

if damage > 0 instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)

hp -= damage;

other.done_slicing = true;
}
