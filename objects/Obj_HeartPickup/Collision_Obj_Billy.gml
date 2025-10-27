/// @description Insert description here
// You can write your code in this editor
if other.hp < other.max_hp {
audio_play_sound(Snd_SMWHeart,0,0,global.SFXvolume,0,1);
other.hp ++
instance_create_depth(x,y,depth,Obj_HPSparkles)
instance_destroy();
}