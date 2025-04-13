/// @description Insert description here
// You can write your code in this editor
if active {
	
	if instance_exists(Obj_Billy) {
	Obj_Billy.x = x
Obj_Billy.y = y
Obj_Billy.image_alpha = 0
Obj_Billy.yspeed = 0
Obj_Billy.grounded = true
Obj_Billy.xspeed = 0
Obj_Billy.grav = 0
Obj_Billy.max_runspeed = 0
Obj_Billy.max_walkspeed = 0
Obj_Billy.image_index = 0
Obj_Billy.walking = false
Obj_Billy.running = false
Obj_Billy.facing = facing
Obj_Billy.image_xscale = image_xscale
if place_meeting(x,y+4,Obj_Rail) {
Obj_Billy.cam_y = lerp(Obj_Billy.cam_y,clamp(y-120,0,room_height-240),0.25)
}
Obj_Billy.dir = facing


if Obj_Billy.hit {
if image_speed = 0 {
	audio_play_sound(Snd_EnemyExplode,0,0,1,0,1.1);
	image_speed = 1
	} 
}	else {
	image_speed = 0	
	}
if Obj_Billy.dead then active = false

	}
	
if instance_exists(Obj_Billy) {
if Obj_Billy.dead {
	Obj_Billy.image_alpha = 1
	Obj_Billy.grav = 0.125
	}
}

}

if image_speed = 1 
{
	yspeed *= 0.8
	xspeed *= 0.8
	}

if image_speed = 0 image_index = 0

if instance_exists(Obj_TrainBossController) {
		image_speed = 1;
	}