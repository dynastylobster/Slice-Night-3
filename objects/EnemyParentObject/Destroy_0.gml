/// @description Insert description here
// You can write your code in this editor
if sprite_index != noone {
var centerX = x - sprite_get_xoffset(sprite_index) + ( (sprite_width*(sign (image_xscale) ) / 2));
var centerY = y - sprite_get_yoffset( sprite_index) + ( (sprite_height*(sign (image_yscale) ) / 2));

instance_create_depth(centerX,centerY,depth+10,Obj_EnemyDieCircle)
instance_nearest(x,y,Obj_EnemyDieCircle).rad = ( sprite_width*(sign (abs(image_xscale)) )/3)

}

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