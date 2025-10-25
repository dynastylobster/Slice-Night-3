/// @description Insert description here
// You can write your code in this editor
if hp <= 25 {
	instance_create_depth(x+34,y,depth,Obj_ToxicHeartDrill)	
	instance_create_depth(x-33,y,depth,Obj_ToxicHeartDrill)
}

alarm[0] = choose(60,120,240,460)