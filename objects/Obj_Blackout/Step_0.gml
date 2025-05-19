/// @description Insert description here
// You can write your code in this editor
timer--


if timer <= 0 {
	alpha+= 0.0125
}

if alpha >= 1 {
	with(Obj_ScorchGiant) {
			age = 0;
	}
	with (Obj_ScorchMoon1) {age = 0;}
	with (Obj_ScorchMoon2) {age = 0;}
	with (Obj_VoidWorld) {age = -60; sprite_index = Spr_VoidWorld;}
	with (Obj_BlackHoleMoon) {age = 0;}
	//Obj_ScorchMoon1,Obj_ScorchMoon2,Obj_VoidWorld,Obj_BlackHoleMoon
	timer = 10800
}

if timer > 0 and alpha > 0 {
		alpha-= 0.0125
}

//if timer > 0 and alpha <= 0 {
//	
//}