autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }

mspeed = 60;

targX = x;
targY = y;

phase = 0;
age = 0;