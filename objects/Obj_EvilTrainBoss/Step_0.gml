/// @description Insert description here
// You can write your code in this editor
event_inherited();
if x < startx {
		x = lerp(x,startx,0.01)
	}
age += 0.125
if instance_exists(Obj_Train) {
truex = x+sin(age/2)*2 - Obj_Train.xspeed*2.25


if y < starty {
		yspeed += grav 
		y+= yspeed
	} else {
	if yspeed != 0 then audio_play_sound(Snd_TrainLand,0,0,global.SFXvolume*2,0,0.8)
	if yspeed != 0 then audio_play_sound(Snd_TrainLand,0,0,global.SFXvolume*2,0,0.75)
	yspeed = 0;
	y = starty	
	
	if global.key_Z_pressed and y <= starty and !global.paused {
			alarm[0] = choose(60,80,120);
		}
	}


}

wheelframe = sin(age*4)

if global.paused {
if alarm[0] > 0 alarm[0]++
}