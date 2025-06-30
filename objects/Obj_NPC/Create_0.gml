/// @description Insert description here
// You can write your code in this editor
if image_index = 6 {
		var shinybilly = irandom_range(1,100)
		if shinybilly = 1 then sprite_index = Spr_ShinyBillySoul
	}
age = 0
drawing = false 
grav = 0.125;
yspeed = 0;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }