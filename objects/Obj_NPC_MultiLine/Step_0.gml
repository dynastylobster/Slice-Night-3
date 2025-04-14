age += 0.125
if age >= 256 then age = 0

if bikesin {
		if drawing and !audio_is_playing(Snd_Banan_Plourples) {
		riding = true
		}
		if place_meeting(x,y,Obj_Wall) {
			walled = true
			}
		}
		if riding
		{
				if xspeed = 0 audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume,0,1.1)
		xspeed -= 0.5;
		x+=xspeed
		}
		

if !place_meeting(x,y,Obj_Billy) {
	drawing = false
	line = 0;
	}
	
if (!global.paused) {
	if (isGhost && fadingOut && !drawing) {
		image_alpha -= 0.05;
		y -= 0.5;
		image_xscale -= 0.005;
		image_yscale += 0.005;
		if (image_alpha <= 0) {
			instance_destroy();
		} 
	}
if (hasGravity) {
if !place_meeting(x,y+4,Obj_Wall) {
yaceel += grav;
y += yaceel;
} else {
yaceel = 0;
}
}
}

if (y >= room_height && room_get_name(room) == "L_Tabuli_2") {
if (age2 < 150) {
Blackscreen();
}
if (age2 >= 150) {
room_goto(Void_Boss_Room);
}
age2++;
}

if instance_exists(Obj_TrainBossController) and instance_exists(Obj_Train) and global.spoketobanan{
		x -= 1
	if x < 426 and x > 416 {
			if !audio_is_playing(Snd_Banan_DriveSafe) {
				audio_play_sound(Snd_Banan_DriveSafe,0,0,global.musicvolume*2.5);	
			}
		}
	if x < Obj_Train.x  {
		if !audio_is_playing(Snd_GhostChomp) and x > Obj_Train.x-32 {
			audio_play_sound(Snd_GhostChomp,0,0,global.SFXvolume*3,0,1.1)	
		}
			x-= 4 
		}
	}