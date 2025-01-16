/// @description Insert description here
// You can write your code in this editor

if other.hit = true {
if !place_meeting(x,y,Obj_EnemySafetyBubble) {
hp =-2;
}
instance_create_layer(x,y,layer,Obj_EnemyHurtEffect)
with(other) {
instance_destroy();	
}
}