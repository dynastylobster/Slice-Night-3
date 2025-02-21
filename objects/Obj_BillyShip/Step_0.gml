/// @description Insert description here
// You can write your code in this editor

if !global.paused and active {

if !place_meeting(x,y,Obj_BillyShipBullet) and image_speed = 0
{
	if global.key_Z_pressed {
	if instance_number(Obj_BillyShipBullet) <= 3 {
		instance_create_layer(x,y,layer,Obj_BillyShipBullet);
		}
	}
}

if !place_meeting(x+5,y,[Obj_Wall, autoTileCol]) {
if global.key_right	{
	xspeed +=0.25  
	}
}

if !place_meeting(x-5,y,[Obj_Wall, autoTileCol]) {
if global.key_left	{
	 xspeed -=0.25 
	}
}

if !place_meeting(x,y+5,[Obj_Wall, autoTileCol]) {
if global.key_down	{
	 yspeed +=0.25 
	}
}

if !place_meeting(x,y-5,[Obj_Wall, autoTileCol]) {
if global.key_up {
	 yspeed -=0.25
	}
}

if !place_meeting(x+xspeed*2,y,[Obj_Wall, autoTileCol]) {
x+= xspeed	
}
if !place_meeting(x,y+yspeed*2,[Obj_Wall, autoTileCol]) {
y+= yspeed
}


if !global.key_left and !global.key_right {
xspeed *= 0.9
}
if !global.key_up and !global.key_down {
yspeed *= 0.9
}

}
if active and instance_exists(Obj_Billy) {
if Obj_Billy.i_frames and !Obj_Billy.dead {
	image_alpha = sin(Obj_Billy.age)
	} else image_alpha = 1;
}


if place_meeting(x,y,Obj_BillyShipBullet) {
	if image_speed = 0 sprite_index = Spr_BillyShipShootV2
	} else sprite_index = Spr_BillyShipV2