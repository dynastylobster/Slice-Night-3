/// @description Insert description here
// You can write your code in this editor
onscreen = false;
cannon = noone
if instance_exists(Obj_CannonTracker) {
	cannon = instance_nearest(x,y,Obj_CannonTracker)
}
speed = 3

if cannon != noone direction = cannon.image_angle+90 *-cannon.image_yscale;
if cannon = noone {
		speed = 0
		direction = 0
	}