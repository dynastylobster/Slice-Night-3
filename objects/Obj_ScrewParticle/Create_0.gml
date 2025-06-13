/// @description Insert description here
// You can write your code in this editor
grav = 0.1
yspeed = random_range(-2,-2.5)
max_yspeed = 3
xspeed = random_range(-0.75,0.75)
alarm[0] = 10
image_angle = 45
age = 0
if global.music != Sng_TectonicFury {
grav = 0.2
yspeed = random_range(-2,-4)
xspeed = random_range(-1.1,1.1)
sprite_index = Spr_ScrewParticleNormal	
max_yspeed = 4;
}