/// @description Insert description here
// You can write your code in this editor
	age+= 0.25

if !instance_exists(BossParentObject) {
	image_alpha = sin(age/8) - sin(age/random_range(4,8))/8
}

if instance_exists(BossParentObject) {
		image_alpha = random_range(0.6,1);
	}