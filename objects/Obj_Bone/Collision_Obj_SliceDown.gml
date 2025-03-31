/// @description Insert description here
// You can write your code in this editor
direction = 270;
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect) {
		Obj_EnemyHurtEffect.sprite_index = Spr_WalljumpEffectSprite;
	}
audio_play_sound(Snd_Dink,0,0,global.SFXvolume)
x = other.x
y = other.y+24
other.done_slicing = true;