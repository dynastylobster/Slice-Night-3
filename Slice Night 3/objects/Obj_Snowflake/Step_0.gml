/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();
if onscreen {
age += age_speed/4
y += fallspeed
x+= xspeed + sin(age)*amplitude

} else {
	x+= xspeed
	y+= fallspeed
}

if instance_exists(Obj_Billy) {
if x > Obj_Billy.x+1000 then instance_destroy();	
if x < Obj_Billy.x-200 then instance_destroy();	
}
if y > room_height instance_destroy();