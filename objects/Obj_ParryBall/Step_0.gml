/// @description Insert description here
// You can write your code in this editor
mask_index = Spr_ParryballBigHitbox;
if place_meeting(x,y,[Obj_SliceSide,Obj_SliceDown]) {
alarm[0] = 30
if alarm[0] > 1 sprite_index = Spr_ParryballBigHitbox	
}
if instance_exists(Obj_Billy) {
image_xscale = sign(Obj_Billy.image_xscale)	
}



if !global.paused {
age+= 0.25
if verticalmovement then y += (sin(age/4)*3) *_speed
if horizontalmovement  then x += (sin(age/4)*3) *_speed
path_speed = 1.5 * _speed
} else {
path_speed = 0	
}

if !global.paused {
if instance_exists(Obj_Train) {
		if global.key_X_pressed {
			if place_meeting(x,y,Obj_Train) {
			with(instance_nearest(x,y,Obj_Train)) {
				audio_play_sound(Snd_TrainLand,0,0,global.SFXvolume*3.5,0,random_range(0.95,1.08))
				audio_play_sound(Snd_Jump,0,0,global.SFXvolume,0,0.75)
				audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*0.75);
					yspeed = -5; y-= 6;
					repeat(5) {
					instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
					}
				}
			}
		}
	}
}


