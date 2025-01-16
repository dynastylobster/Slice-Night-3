/// @description Insert description here
// You can write your code in this editor
if !global.paused {
	y+=yspeed
	yspeed += grav
	x+=xspeed
	xspeed *= 0.985
}