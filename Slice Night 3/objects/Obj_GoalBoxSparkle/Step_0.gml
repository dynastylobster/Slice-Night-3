/// @description Insert description here
// You can write your code in this editor
if image_index >= 3.6 {
if image_speed > 0 instance_destroy();	
}

if image_index >= 4 {
image_alpha-= 0.0125
}

y-= yspeed

if image_alpha <= 0 instance_destroy();

if instance_exists(Obj_SpeedDeathBlock) {
if Obj_SpeedDeathBlock.x > x {
x+= 7.01
image_alpha = 0.5
}
}