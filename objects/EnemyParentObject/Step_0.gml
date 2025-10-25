/// @description Insert description here
// You can write your code in this editor
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
if (hp <= 0) {
audio_play_sound(Snd_BlockBreak,0,0)
audio_sound_pitch(Snd_EnemyExplode,random_range(0.8,1.3))
if room != Level_BossFinal {
audio_play_sound(Snd_EnemyExplode,0,0,1.4)
} else {
	audio_play_sound(Snd_EnemyExplode,0,0,0.125)
}
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