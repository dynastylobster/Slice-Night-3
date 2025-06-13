/// @description Insert description here
// You can write your code in this editor
if variable_instance_exists((id),starthp) {
repeat(starthp) {
	instance_create_depth(x,y,depth,Obj_ScrewParticle)	
}
} else {
	starthp = 3;
 var screwnum = irandom_range(1,3) 
	repeat(screwnum) {
	instance_create_depth(x,y,depth,Obj_ScrewParticle)	
	}
}