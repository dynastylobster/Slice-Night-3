/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
xspeed = -2;
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }