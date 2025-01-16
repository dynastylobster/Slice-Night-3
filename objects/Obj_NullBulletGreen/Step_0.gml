/// @description Insert description here
// You can write your code in this editor
if !global.paused {
if image_speed < 1 image_speed += 0.02
}

speed = image_speed * 3 * !global.paused

if !instance_exists(BossParentObject) {
		instance_destroy();
	}