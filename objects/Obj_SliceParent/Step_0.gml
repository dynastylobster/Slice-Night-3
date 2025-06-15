/// @description Insert description here
// You can write your code in this editor
		if place_meeting(x,y,[EnemyParentObject,BossParentObject]) {
			if !audio_is_playing(Snd_EnemyHit) {
				audio_play_sound(Snd_EnemyHit,0,0,global.SFXvolume);	
			}
		}
		if audio_is_playing(Snd_Dink) or audio_is_playing(Snd_EnemyExplode) {
		audio_stop_sound(Snd_EnemyHit)	
		}

if image_index > 1 and !done_slicing damage = false {
	damage = true
}

if done_slicing damage = false
if (done_slicing) { alreadyHit = true; }

if damage = false mask_index = Spr_Empty
if damage mask_index = sprite_index

if image_index > 4 instance_destroy()

if instance_exists(Obj_Billy) {
if Obj_Billy.dashing then instance_destroy();	
}


