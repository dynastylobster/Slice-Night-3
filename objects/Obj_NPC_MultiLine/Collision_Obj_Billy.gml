
if global.key_up_pressed and image_index = 21 {
	if billy_x = 0 billy_x = Obj_Billy.x
		if image_index = 21 then global.spoketobanan = true;
		ini_open("save.ini")
		ini_write_real("Prefrence","spoketobanan",true)
		ini_close()
		global.spoketobanan = true
		
	}
		if audio_is_playing(Snd_Banan_Plourples) {
		other.x = billy_x;	
		}

if global.key_up_pressed and image_index = 24 {
		if !audio_is_playing(Snd_Bitching) {
			audio_play_sound(Snd_Bitching,0,0,global.SFXvolume*3.25);
			}
}

if !instance_exists(Obj_TrainBossController) {


if (!global.paused) {
if (global.key_up_pressed && drawing == true) {
line++;
}
if (global.key_up_pressed && drawing == false) {
if bikesin audio_play_sound(Snd_Banan_Plourples,0,0,global.SFXvolume)
if image_index = 13 audio_play_sound(Snd_Arwarwarwa_Plourples,0,0,global.SFXvolume);
if image_index = 15 audio_play_sound(Snd_Arowr_Plourples,0,0,global.SFXvolume);
	
drawing = true	
}
}

}

if drawing and image_index = 25{
explodetimer++	
}
if drawing {
if explodetimer >= 40 {
	var player = Obj_Billy
		player.xspeed = -9
		player.yspeed = -7
		instance_create_depth(player.x,player.y,depth-10,Obj_EnemyHurtEffect)
		HitPlayer();
		player.hp++
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2,0,1)
		audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2,0,1)
		audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume*2,0,1)
		repeat(10) {
		instance_create_depth(player.x,player.y,depth-10,Obj_Confetti)
		global.confetti_id++
		}
		explodetimer = 0
		drawing = false
	}
}