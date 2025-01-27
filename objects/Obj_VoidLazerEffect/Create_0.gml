/// @description Insert description here
// You can write your code in this editor
if instance_place(x,y,Obj_VoidHand)
voidhand = instance_place(x,y,Obj_VoidHand)
if voidhand.right {
		audio_play_sound(Snd_VoidLazer,0,0,global.SFXvolume);
	}