/// @description Insert description here
// You can write your code in this editor
if other.done_slicing = false {
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)

var dam = other.damageType;
var damage = 1;
if (array_length(resistances) > 1) {
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
damage *= 1;
}
if (global.character == "Coyote") {
damage /= 2;	
}

hp -= damage;

other.done_slicing = true;
}
