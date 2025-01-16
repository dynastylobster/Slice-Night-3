/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function lerp_angle(_a, _b, _amount) {
    return (_a + (angle_difference(_b, _a) * _amount));
}


CheckOnscreen();

if !global.paused and !hit and instance_exists(Obj_UFOWaypoint) {
	waypoint = instance_nearest(x,y,Obj_UFOWaypoint)
		waypoint_x = waypoint.x 
		waypoint_y = waypoint.y
	}

if onscreen {
		speed = 1.75
	} else {
	 speed = 0	
	}
	

if global.paused speed = 0;

true_direction = point_direction(x,y,waypoint_x,waypoint_y)

if instance_exists(Obj_Billy) {
		
		if distance_to_object(Obj_Billy) > 128 or (global.paused) {
			alarm[0]++	
		}
		if global.paused {
			alarm[1]++	
		}
		
	}

if alarm[0] <= 30 {
		image_index = 1
	} else image_index = 0;
	
if !instance_exists(Obj_UFOWaypoint) {
		if instance_exists(Obj_Billy) {
		waypoint_y = Obj_Billy.y 
		waypoint_x = Obj_Billy.x
		speed = 0
		
		}
	}
	



	
if !hit {
		true_direction = point_direction(x,y,waypoint_x,waypoint_y)
	}

if instance_exists(Obj_UFOWaypoint) {
		waypoint = instance_nearest(x,y,Obj_UFOWaypoint)
	 true_direction = point_direction(x,y,waypoint_x,waypoint_y)
		}
		
if hit {
		if global.paused {speed = 0} else speed = 2
	if instance_exists(Obj_UFOWaypoint) and instance_exists(Obj_Billy) {
			direction = point_direction(Obj_Billy.x, Obj_Billy.y,x,y)
		} else {
			true_direction = point_direction(x,y,waypoint_x,waypoint_y)
		}
}

if instance_exists(Obj_UFOWaypoint) {
	waypoint = instance_nearest(x,y,Obj_UFOWaypoint)
		waypoint_x = waypoint.x 
		waypoint_y = waypoint.y
		true_direction = point_direction(x,y,waypoint_x,waypoint_y)
	}

direction = lerp_angle(direction,true_direction,0.125);