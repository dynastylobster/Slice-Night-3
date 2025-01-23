/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
alarm[0] = 120
hp = 16;

state = "running"

yspeed = 0;
grav = 0.125;
xspeed = 0;
accel = 0.125;
jumpspeed = 4;
willdrop = 0;
max_fallspeed = 7;
iframes = false;
iframe_timer = 0
alarm[3] = 5;

age = 0;

/*states
"running"
"jumping"
"drop winding"
"slicing"
"dropping"