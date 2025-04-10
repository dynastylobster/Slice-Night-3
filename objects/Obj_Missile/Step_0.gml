/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();

if !global.paused {
	
age += 0.125
if age > 2 age = 0
	
if image_index = 1 breaktimer--
	
	
if moving and !dead {
	if age = 2 or age = 1 or age = 0 audio_play_sound(Snd_Land,0,0,global.SFXvolume/1.25,0,1.5)
	if age = 0 audio_play_sound(Snd_Slice,0,0,global.SFXvolume/1.5,0,0.5)
	}
	
	
if moving and !dead {

	
		x+= facing * movespeed
		y+= movespeed
	if !place_meeting(x,y,Obj_EnemyFlameTrail) {
			instance_create_depth(x-facing*8,y-8,depth+25,Obj_EnemyFlameTrail)
		}
	if !instance_exists(Obj_EnemyFlameSpark) or distance_to_object(Obj_EnemyFlameSpark) > 16 {
		instance_create_depth(x,y,depth,Obj_EnemyFlameSpark);	
	}
	
	}	
	if collision_line(x,y,aimx,aimy,Obj_Billy,false,true) {
		moving = true;
	}

}

if breaktimer <= 0 and onscreen and !dead {
		repeat(3) {
		instance_create_layer(x+random_range(-2,2),y,layer,Obj_EnemyFlameSpark)
		}
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume);
		movespeed = 0
		dead = true
	}
	
if place_meeting(x,y,[Obj_Wall,autoTileCol,Obj_Slope,Obj_Billy]) and !dead {
		instance_create_layer(x+facing*4,y+4,layer,Obj_BerryBoom)
		audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume*2)
		audio_play_sound(Snd_Lightning,0,0,global.SFXvolume*1.25)
		repeat(3) {
		instance_create_layer(x+random_range(-2,2),y,layer,Obj_EnemyFlameSpark)
		}
		movespeed = 0
		dead = true
	}

if dead and !onscreen
{
	x = startx 
	y = starty 
	image_index = 0
	breaktimer = 16
	movespeed = 3;
	moving = false;
	age = 0;
	dead = false;
}