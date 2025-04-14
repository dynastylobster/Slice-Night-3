/// @description Insert description here
// You can write your code in this editor
sprite_index = Spr_AntiSliceBlockEmpty
age = 0;
turnframe = 0;
angle = 0;
xspeed = random_range(1,2)
yspeed = -5
grav = 0.125
if instance_exists(Obj_TrainBossController) {
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }