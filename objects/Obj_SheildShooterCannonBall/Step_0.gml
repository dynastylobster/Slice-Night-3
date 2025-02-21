/// @description Insert description here
// You can write your code in this editor
if !global.paused 
		{
		age += agespeed
		y = (starty) + (sin(age))*agedistance
		starty += yspeed
		x += xspeed*dir 
	}