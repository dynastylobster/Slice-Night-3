// Inherit the parent event
event_inherited();

if (age % 240 == 0) {
	railguntimer = 60;
	if (instance_exists(Obj_Billy)) {
		targPosX = Obj_Billy.x;
		targPosY = Obj_Billy.y;
	}
}
if (railguntimer == 1) {
	if (collision_line(x, y, lengthdir_x(20000, point_direction(x, y, targPosX, targPosY)), lengthdir_y(20000, point_direction(x, y, targPosX, targPosY)), Obj_Billy, true, true)) {
		audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume,0,1.15);
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume,0,0.9);
		repeat(3) {
		instance_create_depth(Obj_Billy.x,Obj_Billy.y,depth,Obj_EnemyFlameSpark)
		}
		instance_create_layer(Obj_Billy.x,Obj_Billy.y,layer,Obj_EnemyHurtEffect);
		HitPlayer();
	}
}
railguntimer--;
age++;