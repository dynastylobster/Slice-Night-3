/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,layer,Obj_SpikeWall)

instance_nearest(x,y,Obj_SpikeWall).image_angle = image_angle
if gold sprite_index = Spr_SpikesGold	
alarm[1] = 2
alarm[2] = 44