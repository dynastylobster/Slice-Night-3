/// @description Insert description here
// You can write your code in this editor
if other.done_slicing = false and !iframes {
room_speed = 30;
GameObject.alarm[2] = 2
if state = "jumping" {
		state = choose("running","slicing","drop winding");
	}
audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume*2);
audio_play_sound(Snd_Die,0,0,global.SFXvolume,0,1.4);
instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)
hp -= 1
iframes = true;
other.done_slicing = true
}
