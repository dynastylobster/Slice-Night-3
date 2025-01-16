/// @description Insert description here
// You can write your code in this editor
if !global.paused {
if place_meeting(x,y-4,Obj_Billy) {
	if !used {
		alarm[1] = 30
		used = true
		}
	Obj_Billy.x += x-xprevious
	if Obj_Billy.y > y-17 {
	Obj_Billy.y += yspeed
		}
	}
if place_meeting(x,y+4,Obj_Billy) {
	Obj_Billy.y += 2
	}

age += 0.125
if age > 2 age = 0

if moving {
	image_index = ceil(age)
	if age = 2 or age = 1 or age = 0 audio_play_sound(Snd_land,0,0,0.2,0,1.5)
	if age = 0 audio_play_sound(Snd_Slice,0,0,0.05,0,0.5)
	y += yspeed
	if yspeed > -2 then yspeed -= 0.125
	}
} else {
	if alarm[0] != 0 then alarm[0]++
	if alarm[1] != 0 then alarm[1]++
	}
if broken then moving = false


image_alpha = !broken
if image_alpha = 0 then mask_index = Spr_Empty
if image_alpha = 1 then mask_index = sprite_index