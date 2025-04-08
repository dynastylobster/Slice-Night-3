/// @description Insert description here
// You can write your code in this editor

if !place_meeting(x,y,Obj_Billy) {
touched = false	
}
if alarm[0] > 0 
if instance_exists(Obj_Billy) {
Obj_Billy.image_alpha = 0	
}
if alarm[0] > 0 {
if audio_is_playing(Snd_NormalClear) or audio_is_playing(Snd_SecretClear) or audio_is_playing(Snd_SpecialClear) or audio_is_playing(Snd_NightmareClear){
	audio_pause_sound(global.music);
	}
}
if global.total_question > 0 and instance_number(Obj_QuestionPickup) <= 0
 {
sprite_index = Spr_SecretBox
}