/// @description Insert description here
// You can write your code in this editor
dangle = -4;
dir = 0;
if instance_exists(Obj_Dangle) {
dangle = instance_nearest(x,y,Obj_Dangle);
}

image_index = irandom_range(0,4);

if x < dangle.x then dir = -1 ;
if x > dangle.x then dir = 1;

if dir = -1 {
sprite_index = Spr_StarDangle;	
}