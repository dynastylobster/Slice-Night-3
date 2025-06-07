/// @description Insert description here
// You can write your code in this editor
angle-= 5
if !global.paused {
startx+= 2;
}

CheckOnscreen();
if !global.paused {
		x+=xspeed
		y+= yspeed
		yspeed += grav 
		
		if x > startx xspeed -= 0.125
		if x < startx xspeed += 0.125
		
		if y >= starty yspeed = -jumpspeed;
		
		if place_meeting(x+xspeed*1.25,y,Obj_LevelMaceBall) {
			if !audio_is_playing(Snd_Dink) and onscreen {
				audio_play_sound(Snd_Dink,0,0,global.SFXvolume);
				}
				xspeed *= -0.95
			}
	}
	
if startx > room_width
{
x = 0
startx = 0;
}