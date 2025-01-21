/// @description Insert description here
// You can write your code in this editor
event_inherited();
age += 1
if age >= 360 age = 0;

if place_meeting(x+5,y,Obj_EnemyOnlyBlock) {
	x-= 5
	direction = point_direction((instance_nearest(x,y,Obj_EnemyOnlyBlock)).x,(instance_nearest(x,y,Obj_EnemyOnlyBlock)).y,x,y);
}
if place_meeting(x-5,y,Obj_EnemyOnlyBlock) {
	x+= 5
		direction = point_direction((instance_nearest(x,y,Obj_EnemyOnlyBlock)).x,(instance_nearest(x,y,Obj_EnemyOnlyBlock)).y,x,y);
}
if place_meeting(x,y+5,Obj_EnemyOnlyBlock) {
	y-= 5
		direction = point_direction((instance_nearest(x,y,Obj_EnemyOnlyBlock)).x,(instance_nearest(x,y,Obj_EnemyOnlyBlock)).y,x,y);
}
if place_meeting(x,y-5,Obj_EnemyOnlyBlock) {
	y+= 5
		direction = point_direction((instance_nearest(x,y,Obj_EnemyOnlyBlock)).x,(instance_nearest(x,y,Obj_EnemyOnlyBlock)).y,x,y);
}