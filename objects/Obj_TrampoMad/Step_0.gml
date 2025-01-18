/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
CheckOnscreen();
draw_x = x
age+= 0.5;

if grounded image_index = 0;

if alarm[0] < 45 and alarm[0] != -4 and grounded {
	image_index = 2
}

if place_meeting(x,y+abs(yspeed),[Obj_Wall, autoTileCol]) {
grounded = true;
}

if grounded {
		yspeed = 0;
	}
	


if !grounded {
		image_index = 1;
	}
	

if !global.paused {
		if !grounded {
		yspeed += grav
		}
		y+= yspeed
	
}

if yspeed < 0 {
if place_meeting(x,y-4,[Obj_Wall, autoTileCol]) {
		yspeed = 0;
	}
}
	
if instance_exists(Obj_Billy) and grounded {
		if Obj_Billy.x < x then facing = -1
		if Obj_Billy.x > x then facing = 1
	}

if !global.paused {
		if onscreen {
		if global.key_Z_pressed and grounded {
		alarm[0] = 20;	
		}
	}

	if place_meeting(x,y,[Obj_SliceDown,Obj_SliceSide,Obj_FlameSlice]) {
			if image_index = 0 {
		alarm[0] = 20;
		}
	}
	
	x+=xspeed
	if place_meeting(x+xspeed*2,y,[Obj_Wall, autoTileCol]) {
			xspeed *= -0.5
		}
	if grounded xspeed = 0;
	
}

if place_meeting(x,y+3,[Obj_Wall, autoTileCol]) and !place_meeting(x,y+1,[Obj_Wall, autoTileCol]) {
		if yspeed = 0 {
			y+= 1;	
		}
	}