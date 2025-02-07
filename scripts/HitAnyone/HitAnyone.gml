function HitAnyone() {
if (!array_contains(other.instancesHit, id)) {

var dam = other.damageType;
var damage = other.damageBase;

if (instance_exists(Obj_Billy)) {
	if (other.owner == Obj_Billy.id) {
		if (global.character == "Robot") {
			damage *= 1.6;
		}
		if (global.character == "Coyote") {
			if (dam == "Normal") { damage *= 0.75; }
			if (dam == "Down") { damage *= 0.75; }
			if (dam == "Flame") { damage *= 2; }
		}
	}
}

if (array_contains(resistances, "Immune To " + dam)) {
	damage *= 0;
}
if (array_contains(resistances, "Resists " + dam)) {
	damage /= 2;
}
if (array_contains(resistances, "Weak To " + dam)) {
	damage *= 2;
}

if (damage > 0) { instance_create_depth(x,y,depth,Obj_EnemyHurtEffect); }
self.hp -= damage;
array_push(other.instancesHit, id);
}
}