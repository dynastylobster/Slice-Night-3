// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitPlayer(){
	if (global.character == "Jester" && irandom_range(1, 6) == 6) {
		audio_play_sound(Snd_CardlyLaugh, 0, 0);
		instance_create_depth(x, y, depth, Obj_DiceDMG, { image_index : 6 });
		return;
		}
	if instance_exists(Obj_Billy) {
	if Obj_Billy.hit  = false and Obj_Billy.i_frames = 0 {
		if !global.motu {
		if !global.fem audio_play_sound(Snd_BillyHurt,0,0);
		if global.fem audio_play_sound(Snd_BillyHurt,0,0,2,0,1.15);
		}
		if global.motu {
			audio_play_sound(Snd_BillyHurt,0,0);
			audio_play_sound(Snd_BillyHurt,0,0,1,0,1.15);
		}
		if global.character = "Jester" {
			audio_play_sound(Snd_CardlyHit,0,0);
			audio_play_sound(Snd_CardlyHit,0,0,1,0,1.15);
		}
		Obj_Billy.yspeed = -3
		Obj_Billy.hp -= 1
		Obj_Billy.i_frames = 90
		if Obj_Billy.hp <= 0 Obj_Billy.dead = true
		Obj_Billy.hit = true
		}
	}
}