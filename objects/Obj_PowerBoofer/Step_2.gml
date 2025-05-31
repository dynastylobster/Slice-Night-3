/// @description Insert description here
// You can write your code in this editor
if place_meeting(x+xspeed*1.5,y,[autoTileCol,Obj_Wall,Obj_EnemyOnlyBlock]) {
		xspeed *= -1
	}
	
if !global.paused {
		x+= xspeed
		
		if instance_exists(Obj_Billy) {
			if distance_to_object(Obj_Billy) < 8 {
				audio_pause_sound(global.music)
				xspeed = -image_xscale/8
				
				if place_meeting(x,y,Obj_Billy) {
				global.key_right = false
				global.key_left = false
				Obj_Billy.xspeed = 0;
				Obj_Billy.yspeed = 0
				Obj_Billy.running = true;
				
				sprite_index = Spr_PowerBoofer_Active
				xspeed = 0;
				}
				
			} else {
			xspeed = sign(xspeed) * 2
		}
		
	}
}