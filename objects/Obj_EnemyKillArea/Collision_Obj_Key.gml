/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,EnemyParentObject) {
with(other) {
	if active = false {
			instance_create_layer(x,y,layer,Obj_EnemyHurtEffect);
			active = true;	
		}
	}
	
}