/// @description Insert description here
// You can write your code in this editor
if hp < 12 {
			audio_play_sound(Snd_land,0,0,2)
		audio_play_sound(Snd_BlockBreak,0,0,1)
		audio_play_sound(Snd_Slice,0,0,0.5,0,0.8)
instance_create_layer(x+16,y,layer,Obj_CannonBall)
instance_create_layer(x-16,y,layer,Obj_CannonBall)
}

if instance_exists(Obj_FlightShooterWarmupParticle) {
	with(Obj_FlightShooterWarmupParticle) {
		instance_destroy();
		}
	}
alarm[0] = 120