/// @description Insert description here
// You can write your code in this editor
mask_index = Spr_ParryballBigHitbox;
age = 0
if circlemovement {
	x+= 45
	path_start(CirclePath,_speed,path_action_restart,0);
	}
if verticalmovement {
y-= 48	
}

if verticalmovement {
x-= 48	
}
