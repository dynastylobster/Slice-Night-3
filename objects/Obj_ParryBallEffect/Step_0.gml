/// @description Insert description here
// You can write your code in this editor

age += 0.125
rotspeed +=	0.85 * facing
dir += rotspeed
dist -= 0.125 
if age > 6 instance_destroy();