/// @description Insert description here
// You can write your code in this editor
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
deathCounter = 0;