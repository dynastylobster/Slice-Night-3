/// @description Insert description here
// You can write your code in this editor
//instance_create_depth(x,y,depth+25,Obj_EnemyHurtEffect)

if instance_place(x,y,Obj_ParryBall) {
	parryball = instance_place(x,y,Obj_ParryBall)
} else {
	if instance_exists(Obj_Billy) {
	parryball = Obj_Billy	
	} else {
	parryball = self	
	}
}

if instance_exists(Obj_Billy) {
		facing = -sign(Obj_Billy.image_xscale)
	}

depth -=25

rotspeed = 5 * facing
age = 0;

dist = 16
dir = 0