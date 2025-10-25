/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
if (hp <= 0) {
audio_play_sound(Snd_BlockBreak,0,0)
audio_sound_pitch(Snd_EnemyExplode,random_range(0.8,1.3))
audio_play_sound(Snd_EnemyExplode,0,0,1.4)
instance_create_depth(x+2,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x-2,y,depth,Obj_EnemyFlameSpark)
instance_create_depth(x+2,y-3,depth,Obj_EnemyFlameSpark)
instance_create_depth(x-2,y-3,depth,Obj_EnemyFlameSpark)
deathCounter++;
}
try {
if (deathCounter >= 2) {
	instance_destroy()
}
} catch (err) { deathCounter = 0; }

CheckOnscreen();

if !global.paused {

if sheilding {
		if alarm[1] != -4 then alarm[1] ++
	}

if alarm[0] != -4 {
	
	if alarm[0] < 12 and alarm[0] > 6 {
	image_index = 3
	}
	
	if alarm[0] < 6 {
	image_index = 4
	}
}

if sheilding {
		image_index = 5;
	} else {
		if image_index = 5 image_index = 0
	}

if !sheilding {
		if alarm[1] < 12 image_index = 1;
		if alarm[1] > 12 and alarm[1] < 58 and image_index != 5 and image_index != 4 then image_index = 0
		if alarm[1] > 58 image_index = 2;
	}
	
}

if global.paused {
	if alarm[0] > 0 alarm[0]++
	if alarm[1] > 0 alarm[1]++
	if alarm[2] > 0 alarm[2]++
	if alarm[3] > 0 alarm[3]++
	}
	
image_xscale = dir 

if instance_exists(Obj_Billy) and !dontturn {
		if Obj_Billy.x >= x dir = 1
		if Obj_Billy.x < x dir = -1
	}