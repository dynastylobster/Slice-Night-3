/// @description Insert description here
// You can write your code in this editor

if !global.paused {
if !place_meeting(x,y+yspeed,[Obj_Wall, autoTileCol]) {
y+= yspeed	
yspeed+=grav
}

if place_meeting(x,y-5,[Obj_Wall, autoTileCol]) {
		yspeed = 1;
	}
if !place_meeting(x+xspeed,y,[Obj_Wall, autoTileCol]) {
	x+= xspeed
	}
	
if place_meeting(x+8,y,[Obj_Wall, autoTileCol]) {
	xspeed = -(abs(xspeed))/1.1
	x-=9
	}
if place_meeting(x-8,y,[Obj_Wall, autoTileCol]) {
	xspeed = (abs(xspeed))/1.1
	x+= 9
	}
	
	if dribbling {
	if place_meeting(x,y+5,[Obj_Wall, autoTileCol]) {
			audio_play_sound(Snd_Land,0,0);
			yspeed = -jumpspeed 
			dribbling = false;
		}
	}
	
	if place_meeting(x,y+abs(yspeed)+3,[Obj_Wall, autoTileCol]) {
		if yspeed >= 0 and !dribbling {
			yspeed = -(yspeed*0.5)
		}
		}
	
}

if place_meeting(x,y,Obj_SliceParent) {
		image_index = 1
		alarm[0] = 15
	}