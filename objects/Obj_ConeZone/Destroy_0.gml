/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
with(Obj_PainSaw) {
instance_destroy();	
}
with(instance_create_depth(x,y,depth,Obj_Model1ShooterEnder)) {
		dest_room = Obj_ConeZone.dest_room;
	}