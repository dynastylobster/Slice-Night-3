/// @description Insert description here
// You can write your code in this editor
yspeed = -2
grav = 0.06
xspeed = 0;

audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*2,0,1.3)
instance_create_depth(x,y,depth,Obj_ScrewParticle);
audio_play_sound(Snd_Dink,0,0,global.SFXvolume*1,0,0.5)

if instance_exists(Obj_SheildShooter) {
	if instance_nearest(x,y,Obj_SheildShooter).x < x then xspeed = -0.25
	if instance_nearest(x,y,Obj_SheildShooter).x > x then xspeed = 0.25
}
colored = false;
alarm[0] = 5;

alarm[1] = 30;