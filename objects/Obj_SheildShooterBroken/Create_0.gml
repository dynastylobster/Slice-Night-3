/// @description Insert description here
// You can write your code in this editor
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
deathCounter = 0;
onscreen = false;
sheilding = false;
alarm[0] = 120
alarm[1] = 65
dir = image_xscale

