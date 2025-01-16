/// @description Insert description here
// You can write your code in this editor
age += 0.125

image_xscale = 1+sin(age*sinspeed)

yspeed += grav
x+= xspeed
y+= yspeed
age++
if age > 10 image_alpha = 1