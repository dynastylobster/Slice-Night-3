/// @description Insert description here
// You can write your code in this editor
x+= xspeed 
y+= yspeed 
if yspeed <4 {
yspeed += grav
}

if y > room_height + 32 instance_destroy()