/// @description Insert description here
// You can write your code in this editor

if !global.paused {
if !place_meeting(x,y+yspeed,Obj_Wall) {
y+= yspeed	
yspeed+=grav
}

if place_meeting(x,y-5,Obj_Wall) {
		yspeed = 1;
	}
if !place_meeting(x+xspeed,y,Obj_Wall) {
	x+= xspeed
	}
	
if place_meeting(x+8,y,Obj_Wall) {
	xspeed = -(abs(xspeed))/1.1
	x-=9
	}
if place_meeting(x-8,y,Obj_Wall) {
	xspeed = (abs(xspeed))/1.1
	x+= 9
	}
	
	if dribbling {
	if place_meeting(x,y+5,Obj_Wall) {
			audio_play_sound(Snd_land,0,0);
			yspeed = -jumpspeed 
			dribbling = false;
		}
	}
	
	if place_meeting(x,y+abs(yspeed)+3,Obj_Wall) {
		if yspeed >= 0 and !dribbling {
			yspeed = -(yspeed*0.5)
		}
		}
	
}

if place_meeting(x,y,Obj_SliceParent) {
		image_index = 1
		alarm[0] = 15
	}
	if instance_exists(Obj_JollyRammer) {
if (distance_to_object(Obj_JollyRammer) < 16) or place_meeting(x,y+12,Obj_JollyRammerPlatform)

{
	x = Obj_JollyRammer.x 
	y = Obj_JollyRammer.y
}

	}