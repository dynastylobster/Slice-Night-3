/// @description Insert description here
// You can write your code in this editor
event_inherited();
CheckOnscreen();

if image_yscale = 1 then aimy = 0
if image_yscale = -1 then aimy = room_height

if image_alpha < 1 image_alpha += 0.0125

if !cantgo{
if collision_line(x,y,x,aimy,Obj_Billy,1,false) {
	if going = false {
		audio_play_sound(Snd_EnemyExplode,0,0,global.SFXvolume*2);
		repeat(3) {
		instance_create_depth(x,y,depth,Obj_EnemyFlameSpark)	
		}
	}
going = true;}
}

if image_yscale = 1 {

if going and !global.paused {
	y -= 4
}

if y < starty-300 {
		instance_destroy();
	}
	
if y < starty and y > starty-24 {
		bonusdraw = 0
	}
	
}

if image_yscale = -1 {

if going and !global.paused {
	y += 4
}

if y > starty+300 {
		instance_destroy();
	}
	
if y > starty and y < starty+24 {
		bonusdraw = 0
	}
	
}