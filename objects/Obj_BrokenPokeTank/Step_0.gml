/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(Obj_Billy) {
		if distance_to_object(Obj_Billy) < 100 {
			if y = starty and x = startx {
				instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
				instance_create_depth(x-3,y,depth,Obj_EnemyFlameSpark)
				instance_create_depth(x+3,y,depth,Obj_EnemyFlameSpark)
				instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
			}	
			direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y)	
			image_angle = direction-90
			speed = 1 * !global.paused
		}
	}