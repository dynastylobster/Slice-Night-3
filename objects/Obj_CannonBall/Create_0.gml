/// @description Insert description here
// You can write your code in this editor

autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }

hit = false
speed = 2
if instance_exists(Obj_BoomTube) {
boomtube = instance_nearest(x,y,Obj_BoomTube)
} else {
boomtube = noone	
}
if instance_exists(Obj_Billy) and instance_exists(boomtube) {
direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y)
if boomtube.only_up then direction = 90;
}
depth -= 25
if instance_exists(Obj_FlightShooterBoss) {
sprite_index = Spr_CannonBallGreen;	
}

if instance_exists(boomtube) {
if boomtube.only_up then sprite_index = Spr_CannonBallGreen;
}

if instance_exists(BossParentObject) {
		if instance_exists(Obj_Billy) {
			direction = point_direction(x,y,Obj_Billy.x,Obj_Billy.y)
		}
	}
if global.costume = "Billy (SMW)" {
		sprite_index = Spr_BoomTubeBallSMW
	}