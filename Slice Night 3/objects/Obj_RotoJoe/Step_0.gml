/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();
angle-= 5*dir
if !global.paused {
if !swinging {
age += 0.25 * _speed
}




if swinging {
age += 0.25 * _speed
	var _dir = x-start_x
age -= (distance_to_point(x+_dir*2,start_y)*0.00225)	*_speed
age += 0.0125
}

if !swinging and !figure8 {
if !global.paused path_speed = (dir*_speed)*2
} else {
path_speed = 0	
}
}

if swinging {
y =start_y + abs(cos(age/5)*1.5 *dir)*32
x =start_x + (sin(age/5)*1.5 *dir)*32
}

if figure8 {
y =start_y + (cos(age/5)*1.5 *dir)*32 * ((x-start_x)/32)
x =start_x + (sin(age/5)*1.5 *dir)*32
}

draw_x = x
draw_y = y

if global.paused path_speed = 0
