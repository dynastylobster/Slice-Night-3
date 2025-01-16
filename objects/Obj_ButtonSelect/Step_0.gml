/// @description Insert description here
// You can write your code in this editor


if instance_exists(Obj_ClickRoom) {


if cooldown > 0 cooldown--

if cooldown = 0 {

if global.key_up {
		y = instance_nearest(x-32,y-27,Obj_ClickRoom).y+8
		cooldown = 8
	}
if global.key_down {
		y = instance_nearest(x-32,y+27,Obj_ClickRoom).y+8
		cooldown = 8
	}
if global.key_left {
		x = instance_nearest(x-90,y,Obj_ClickRoom).x+32
		cooldown = 8
	}
if global.key_right {
		x = instance_nearest(x+67,y,Obj_ClickRoom).x+32
		cooldown = 8
	}
	

	
}

if !place_meeting(x,y,Obj_ClickRoom) {
y = instance_nearest(x,y,Obj_ClickRoom).y+8
x = instance_nearest(x,y,Obj_ClickRoom).x+32
}

}

