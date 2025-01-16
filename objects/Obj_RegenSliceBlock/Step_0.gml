/// @description Insert description here
// You can write your code in this editor
if dead = true mask_index = Spr_Empty
if dead = false mask_index = sprite_index

if dead image_alpha = 0
if !dead image_alpha = 1

particleDist = alarm[1]

if image_index >= 1{
image_index -= 0.0125	
}