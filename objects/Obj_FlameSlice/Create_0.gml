/// @description Insert description here
// You can write your code in this editor
if global.costume = "Billy (SMW)" {instance_destroy();}
dir = 0;
angle = 0;
if instance_exists(Obj_Billy) {
		if Obj_Billy.image_xscale < 0 then dir = -1;
		if Obj_Billy.image_xscale > 0 then dir = 1;
	}
	xspeed = 4
	yspeed = 0;

grav = 0.125

image_xscale = dir

damage = true
done_slicing = false

alarm[1] = 120;
image_alpha = 0.5
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }

if global.character = "Robot" {
		xspeed = 4;
		alarm[1] = 30;
	}
	
if global.character = "Coyote" {
		if global.key_up {
		yspeed = -4;	
		}
		if global.key_down {
		yspeed = 4;	
		}
		sprite_index = Spr_FlameSlice_Void
		xspeed = 4.5;
		alarm[1] = 120;
		alarm[3] = 6
		image_alpha = 1
	}
if global.character = "Jester" {
	if global.key_up {
		yspeed = -4;
		xspeed = 3;
		}
	sprite_index = Spr_FlameDice
	alarm[1] = 240;
	
}