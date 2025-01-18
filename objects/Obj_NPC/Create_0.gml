/// @description Insert description here
// You can write your code in this editor
age = 0
drawing = false 
grav = 0.125;
yspeed = 0;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }