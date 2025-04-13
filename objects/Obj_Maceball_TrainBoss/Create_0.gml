/// @description Insert description here
// You can write your code in this editor
grav = 0.125
yspeed = -3
xspeed = -2
if instance_exists(Obj_Train) {
	if Obj_Train.xspeed < 0 {
			xspeed += Obj_Train.xspeed
		}
	}
depth += 25;