/// @description Insert description here
// You can write your code in this editor
active = false
yspeed = 0
xspeed = 0
max_speed = 3;
image_speed = 0;
alarm[0] = 20
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }