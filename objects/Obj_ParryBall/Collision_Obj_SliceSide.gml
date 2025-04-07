/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Billy) {


if (other == Obj_FlameSliceCollide) { return; }

if other.done_slicing = false {
	
		if instance_exists(Obj_Train) {
			if instance_nearest(x,y,Obj_Train).active{
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
	
	instance_create_layer(x,y,layer,Obj_ParryBallEffect)
	other.done_slicing = true
}

if other.done_slicing = true {
	
	if abs(Obj_Billy.xspeed) < 3 {
	if abs(Obj_Billy.xspeed) < 1 {
	Obj_Billy.xspeed = Obj_Billy.facing	
	}
	
	Obj_Billy.xspeed *= 1.3
		}
	if Obj_Billy.yspeed > -1 Obj_Billy.yspeed = -3
	Obj_Billy.yspeed -= 2
	}
	other.floating = true
}

