/// @description Insert description here
// You can write your code in this editor
event_inherited();
CheckOnscreen();

tear_x1 = x-6
tear_x2 = x+6

if !global.paused {
	
	angle+=4
	
		if onscreen and instance_exists(Obj_Billy) {
				xspeed = lengthdir_x(spd,point_direction(x,y,Obj_Billy.x,Obj_Billy.y))
				yspeed = lengthdir_y(spd,point_direction(x,y,Obj_Billy.x,Obj_Billy.y))	
			
			pivot_x += xspeed
			pivot_y += yspeed
			
			age += 0.5
			
			x = pivot_x+ lengthdir_x(sin(age/32)*length,angle)
			y = pivot_y+ lengthdir_y(-sin(age/32)*length,angle)
			}
	}