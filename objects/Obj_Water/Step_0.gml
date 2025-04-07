/// @description Insert description here
// You can write your code in this editor
if global.music = Sng_SlicerOfThe7DreamsMusic and room != Level_Boat3 {
sprite_index = Spr_WaterOrange;
}

if global.music = Sng_SlicerOfThe7DreamsMusic {
x-= 0.8
if x < startx-16 then x = startx
}

if global.music = Sng_NightmareOfTheDisturbedMusic {
sprite_index = Spr_WaterBlack;	
}