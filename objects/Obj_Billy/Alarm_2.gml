/// @description Insert description here
// You can write your code in this editor
		var sillyx = x+ random_range(-32,32)
		var sillyy = y+ random_range(-32,32)

if global.dash {
	if charge_timer >= 70 {
		instance_create_depth(sillyx,sillyy,depth,Obj_BillyChargeParticle)
	}	
	if dashing {
		sillyx = x+random_range(-12,12)
		sillyy = y+random_range(-12,12)
		instance_create_depth(sillyx,sillyy,depth,Obj_GoalBoxSparkle)
	}
}
alarm[2] = 5