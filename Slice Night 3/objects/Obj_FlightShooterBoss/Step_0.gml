/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



if !global.paused {
	if sprite_index = Spr_FlightShooterBossHit {
	alarm[0] = 70	
	}
	if active age += 0.125
	if age > 32768 then age = 0
	
	if active and hp > 9 {
		x = start_x + sin(start_x+age)*4
		}
	if hp <= 9 and hp > 6 {
	x = start_x + sin(start_x+age/1.5)*8
		}
	if hp <= 6 and hp > 3 and !hit {
		x = start_x + cos(start_x+age)*10
		y = (starty - height) + cos((starty - height) + age)*6
		}
		if hp <= 3 and !hit {
		x = start_x + cos(start_x+age)*14
		y = (starty - height) + cos((starty - height) + age)*8
		}
	}
if hp > 6 {
if y > starty - height {
hit = true	
alarm[1] = 4
y -= 0.5
} 
}

if hit sprite_index = Spr_FlightShooterBossHit 
if !hit sprite_index = Spr_FlightShooterBoss 

if (hit) or (global.paused and !hit) and alarm[0] > 0 then alarm[0]++
if global.paused {if alarm[1] > 0 then alarm[1] ++}

if !hit and alarm[0] > 30 {
if place_meeting(x,y,Obj_CannonBall){ image_index = 1} 
else {image_index = 0}
} else if alarm[0] <= 30 and !hit and hp < 12 {
image_index = 2	
}

if hp = 9 height = 86
if hp = 6 height = 120