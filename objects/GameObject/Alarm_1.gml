/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_blinkBlock) {
	with(Obj_blinkBlock) 
	{
		flashing = true
		alarm[0] =9
		}
	}
global.on *= -1
if fastONOFF {
alarm[1] = 60	
} else {
alarm[1] = 100
}