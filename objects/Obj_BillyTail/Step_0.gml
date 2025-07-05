/// @description Insert description here
// You can write your code in this editor

x = billy.x - (billy.xspeed/4) + ( billy.facing* (abs(billy.yspeed))*0.5 )

if billy.yspeed < 0 {
y = billy.y - (billy.yspeed/3)
} else {
	y = billy.y - (billy.yspeed*0.75)
}
if billy.sliding {
image_xscale = billy.facing * -sign(billy.sliding)
} else {
	image_xscale = billy.facing
}

image_speed = (abs(Obj_Billy.xspeed)/5) + ((Obj_Billy.yspeed)/7);

if billy.yspeed < 0 {
	if image_index 	< 7 image_index += 0.25
}
if billy.yspeed < -5 {
	image_index = 6
}



if image_index > 0.5 and billy.xspeed = 0 {
image_index += 0.25
}