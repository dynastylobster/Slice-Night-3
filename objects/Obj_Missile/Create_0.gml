/// @description Insert description here
// You can write your code in this editor
onscreen = false;
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
startx = x
starty = y
facing = image_xscale;
movespeed = 3;
moving = false;
breaktimer = 16
age = 0;

dead = false;

if facing = 1 {
		aimx = lengthdir_x(x+500,0)
		aimy = lengthdir_y(y+500,270)
	}
if facing = -1 {
		aimx = lengthdir_x(x-500,180)
		aimy = lengthdir_y(y+500,270)
}