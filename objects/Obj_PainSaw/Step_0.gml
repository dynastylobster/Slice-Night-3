/// @description Insert description here
// You can write your code in this editor
autoTileCol = -4;
try { autoTileCol = layer_tilemap_get_id("TileCollision"); } catch (err) { autoTileCol = -4; }
if (hp <= 0) {
audio_play_sound(Snd_BlockBreak,0,0)
audio_sound_pitch(Snd_EnemyExplode,random_range(0.8,1.3))
audio_play_sound(Snd_EnemyExplode,0,0,1.4)
instance_create_layer(x+2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y,layer,Obj_EnemyFlameSpark)
instance_create_layer(x+2,y-3,layer,Obj_EnemyFlameSpark)
instance_create_layer(x-2,y-3,layer,Obj_EnemyFlameSpark)
deathCounter++;
}
try {
if (deathCounter >= 2) {
	instance_destroy()
}
} catch (err) { deathCounter = 0; }

age += 1;

if activated {
		if instance_exists(Obj_Billy) {
			if Obj_Billy.x < x image_xscale = -1
			if Obj_Billy.x > x image_xscale = 1
		}
	}

if !global.paused {
	if (belongsToWhizyard) {
		if (whizyardDeathTimer >= 120) {
			hp = -2;
		}
	whizyardDeathTimer++;
	}
if !place_meeting(x,y+1,[Obj_Wall,Obj_EnemyOnlyBlock,autoTileCol,Obj_Slope]) {
	yspeed += grav
}

if place_meeting(x,y+1*sign(grav), [Obj_Wall, Obj_EnemyOnlyBlock, autoTileCol]) and !activated {
yspeed = -jumpspeed *sign(grav)
}
 if !activated {
y += yspeed
 }
 if activated {
	if !place_meeting(x,y+2,[Obj_Wall,Obj_EnemyOnlyBlock,autoTileCol,Obj_Slope]) {
		y+=yspeed*1.5;
	} else {
		if alarm[1] != -4 {
			x+= xspeed
			
			
			if abs(xspeed) <= 5	xspeed += 0.125*image_xscale;	
			if image_xscale = 1 xspeed = clamp(xspeed,xspeed,5)
			if image_xscale = -1 xspeed = clamp(xspeed,-5,xspeed)
			yspeed = 0;
		}
	}
	
	while place_meeting(x,y+1,[Obj_Slope,Obj_Wall,autoTileCol,Obj_Slope]) {
		y-= 0.125
	}
	
 }
 
 if place_meeting(x+xspeed,y,[Obj_Wall,autoTileCol,Obj_EnemyOnlyBlock]) {
		 xspeed = 0
	}
 
}