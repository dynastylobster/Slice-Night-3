/// @description Insert description here
// You can write your code in this editor

CheckOnscreen();

if !global.paused {
		
y+=yspeed
if yspeed < max_fallspeed {
yspeed += grav
}
x+= xspeed

}


if place_meeting(x,y+4,Obj_Billy) {
	Obj_Billy.y += 2
	}
while place_meeting(x,y-0.5,Obj_Billy) {
Obj_Billy.y -= 1
}
	
if y > starty and !onscreen {
instance_destroy();
}