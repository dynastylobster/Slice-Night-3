/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

//no shiny menaceorbs
sprite_index = Spr_PainSaw
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
yspeed = 0
grav = 0.125
jumpspeed = 3
activated = false;
age = 0;
xspeed = 0;
yspeed = 0
hp = 3;
starthp = hp
shiny = false;
epic = false;