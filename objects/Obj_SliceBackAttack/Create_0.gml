/// @description Insert description here
// You can write your code in this editor
done_slicing = false;
instance_create_depth(x,y,depth+25,Obj_EnemyHurtEffect);
if instance_exists(Obj_Billy) {
		direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y)
	}
	startdirection = direction 
	death = 0;
current_speed = 0;
alarm[0] = 5;