/// @description Insert description here
// You can write your code in this editor
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
audio_play_sound(Snd_BillyShipShoot,0,0,1*global.SFXvolume,0,1.1)
damage = true;
damagebase = 1;
done_slicing = false;
if instance_exists(Obj_BillyShip) {
xspeed = Obj_BillyShip.xspeed
} else {
xspeed = 0.5	
}

walltimer = 2;

if instance_exists(Obj_JollyRammer) {
	instance_destroy();	
}