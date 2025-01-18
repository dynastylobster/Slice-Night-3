/// @description Insert description here
// You can write your code in this editor
var _jumptype = choose(0,1)
if _jumptype = 0 {
if place_meeting(x,y+4,[Obj_Wall, autoTileCol]) {
	yspeed = jumpspeed
}
}
if _jumptype = 1 {
if place_meeting(x,y+4,[Obj_Wall, autoTileCol]) {
	yspeed = jumpspeed/2
	audio_play_sound(Snd_FishJump,0,0,global.SFXvolume,0,1);
	if instance_exists(Obj_Billy) {
	if Obj_Billy.x < x xspeed = -4
	if Obj_Billy.x > x xspeed = 4
	}
}
	}
alarm[1] = choose(90,120,180)