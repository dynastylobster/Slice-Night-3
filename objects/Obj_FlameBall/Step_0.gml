/// @description Insert description here
// You can write your code in this editor

if !global.paused {
	age += 0.25;
if age <15	speed = 1.8;
}

if !global.paused {
if age >= 15 {
          speed = 0.9
	}
}

if global.paused speed = 0;
	
if age >= 20 then instance_destroy();