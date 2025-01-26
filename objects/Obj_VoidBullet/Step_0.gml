/// @description Insert description here
// You can write your code in this editor
if (y > room_height) { instance_destroy(); }
if (instance_exists(Obj_VoidBoss)) {
if (Obj_VoidBoss.currentPhase != spawnedPhase) {
instance_destroy();
}
}

if !global.paused {
	if (yspeed < max_yspeed) {
		yspeed += grav;
	}
		var bonus = tempboost ? 1.2 : 1;
		y += yspeed;
		x += xspeed * random_range(0.5, 3) * bonus;
		
		var camx = camera_get_view_x(view_camera[0]);
		
		if (x < camx) {
		x = camx + 416;
		} else if (x > camx + 416) {
		x = camx;
		}
	tempboost = false;
	}
	