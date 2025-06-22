/// @description Insert description here
// You can write your code in this editor
reduce = 0.75;
draw_x = x
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
	homeguy = noone;
if instance_exists(Obj_SheildShooterGrav) {
		homeguy = instance_nearest(x,y,Obj_SheildShooterGrav)
	}
if homeguy != noone {
		dir = homeguy.dir 
	}
	
xspeed = 2.25*reduce
age = 0;
starty = y
yspeed = -1
grav = 0.125*reduce

if instance_exists(Obj_Billy) {
		if Obj_Billy.y <= y+21 {
			yspeed = -2;
		}
		xspeed = distance_to_object(Obj_Billy)/(48);
	}
/*
if instance_exists(Obj_Billy) {

		if Obj_Billy.y > y then yspeed = 0.5
		if Obj_Billy.y < y then yspeed = -0.5
}
*/