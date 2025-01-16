/// @description Insert description here
// You can write your code in this editor
if !global.paused 
		{
		age += 0.0725
		y = (starty) + (sin(age))*32
		starty += yspeed
		x += xspeed*dir 
	}