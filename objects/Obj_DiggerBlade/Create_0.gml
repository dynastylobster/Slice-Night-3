/// @description Insert description here
// You can write your code in this editor
image_speed = 0
angle = 0
alarm[0] = 8
draw_x = x
draw_y = y
age = 0
onscreen = false
dir = 0
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
if reverse = false then dir = 1
if reverse = true then dir = -1