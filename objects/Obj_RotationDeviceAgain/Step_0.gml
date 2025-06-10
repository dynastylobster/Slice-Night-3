/// @description Insert description here
// You can write your code in this editor
if rotspeed > 0 {
rotspeed -= 0.025
image_angle+= rotspeed
}

if image_xscale > 0.125
{
image_xscale -= 0.004
image_yscale -= 0.004
} else {
	red_alpha += 0.0125
	alpha -= 0.0125	
}

if rotspeed <= 2 {
	startx+= 0.125
	starty -= 0.05
	red_alpha -= 0.015
	}