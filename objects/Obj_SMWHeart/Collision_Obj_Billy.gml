/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
other.hp ++
if other.max_hp < 6 other.max_hp++
instance_create_layer(x,y,layer,Obj_HPSparkles)
repeat(8) {
	instance_create_depth(x+random_range(-16,16),y+random_range(-8,14),depth,Obj_GoalBoxSparkle)
}
	audio_play_sound(Snd_SMWHeart,0,0,global.SFXvolume*2);
instance_destroy();