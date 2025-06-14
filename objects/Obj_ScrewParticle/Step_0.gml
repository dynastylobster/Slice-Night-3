/// @description Insert description here
// You can write your code in this editor
if yspeed < max_yspeed {
yspeed += grav
}
x+= xspeed
y+= yspeed
age++

if instance_exists(Obj_SMWHeart) {
		if distance_to_object(Obj_SMWHeart) < 25 {
		sprite_index = Spr_ScrewParticleGold	
		}
	}