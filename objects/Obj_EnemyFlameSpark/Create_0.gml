/// @description Insert description here
// You can write your code in this editor
if layer_exists(layer_get_id("Instances_1")) {
layer = layer_get_id("Instances_1")
}
xspeed = 0
if instance_exists(EnemyParentObject) {
 if instance_nearest(x,y,EnemyParentObject).x > x then xspeed = random_range(1,2)
  if instance_nearest(x,y,EnemyParentObject).x < x then xspeed = random_range(-1,-2)
} 
if !place_meeting(x,y,EnemyParentObject)
{
xspeed = choose (1,2,-1,-2)
}
yspeed = random_range(-3,-6)
grav = 0.125
alarm[1] = 8

if place_meeting(x,y,Obj_LockBlock) {
	sprite_index = Spr_GoalBoxSparkle	
}