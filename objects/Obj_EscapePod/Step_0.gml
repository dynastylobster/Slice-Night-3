/// @description Insert description here
// You can write your code in this editor
age += 0.125

offset_x = random_range(-1,1)

x = offset_x+startx+sin(age/4)*32
y = starty+sin(age/8)*10

if glow_alpha > 0 glow_alpha -= 0.01

if zooming {
		image_xscale *= 1.05
		image_yscale *= 1.05
	}
	
var fadeoutopacity = image_xscale/100

if fadeoutopacity > 1.25 {
billyime = true;	
}