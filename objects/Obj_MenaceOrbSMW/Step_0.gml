/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
CheckOnscreen();
event_inherited();
image_index = stomped;
if stomped and !global.paused {
		if stomptimer <45 if yspeed < 0 yspeed = 0
		stomptimer++
		if stomptimer = 45 {
			mask_index = Spr_Empty
			yspeed = -4
			grav = 0.25
			image_yscale = -1
		}
		if y > room_height {
		if 	!onscreen {
			y = starty
			mask_index = sprite_index;
			stomptimer = 0
			yspeed = 0
			image_yscale = 1
			grav = 0.125
			stomped = false 
		}
	}
}
drawy = floor(y)