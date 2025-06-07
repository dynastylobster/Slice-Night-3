/// @description Insert description here
// You can write your code in this editor
true_x = x + sin(age/4)*8
age += 0.125

if hit age += 0.25

image_speed = xspeed * 0.75

if instance_exists(Obj_Billy) {
		targ_x = Obj_Billy.x
	}
	
if xspeed < 3 {
		if targ_x > x xspeed += 0.125
	}
if xspeed > -3 {
		if targ_x < x xspeed -= 0.125
	}

if x < 0 x = room_width
if x > room_width x = 0
if !global.paused {
x += xspeed
}

if !hit {
if hp = 0 instance_destroy();	
}