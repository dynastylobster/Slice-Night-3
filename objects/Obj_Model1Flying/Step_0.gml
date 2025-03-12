// Inherit the parent event
event_inherited();

if (age % 240 == 0) {
	railguntimer = 45;
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
		instance_create_depth(Obj_Billy.x,Obj_Billy.y,depth,Obj_EnemyHurtEffect);
		HitPlayer();
	}
}
railguntimer--;
age++;



if distance_to_object(Obj_Billy) < 80 {
	path_speed = 3	
	if distance_to_object(Obj_Billy) < 16 {
	path_speed = 5	
	}
} else if distance_to_object(Obj_Billy) > 100 and distance_to_object(Obj_Billy) < 260 {
	path_speed = 1.6;
}
if distance_to_object(Obj_Billy) > 260 {
	path_speed = 0.75	
}

if distance_to_object(Obj_Billy) < 48 and instance_exists(Obj_BillyShip){
	with(Obj_BillyShip)	{
			xspeed = 0;
	}
}

if global.paused {
railguntimer++
age--
path_speed = 0
if alarm[0] != -4 alarm[0]++
}