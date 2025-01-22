/// @description Insert description here
// You can write your code in this editor
yspeed = -3
grav = 0.125;
if instance_exists(Obj_Billy) {
		if Obj_Billy.x < x then xspeed = -2
		if Obj_Billy.x > x then xspeed = 2
	}
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }