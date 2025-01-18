/// @description Insert description here
// You can write your code in this editor
dribbling = false;
xspeed = 0;
yspeed = 0;
grav = 0.05;
jumpspeed = 3;
startx = x
starty = y
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }