/// @description Insert description here
// You can write your code in this editor
event_inherited();
repeat(4) {
instance_create_depth(x,y,depth,Obj_ScrewParticle)
}
var drop = irandom_range(1,5)
if drop = 1 {
		instance_create_depth(x,y,depth,Obj_SMWHeart);
	}