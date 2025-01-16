/// @description Insert description here
// You can write your code in this editor
dir = choose(-1,1)

var generator = choose(0,1,0)
if generator = 1 then with(Obj_NullBulletGreenGenerator) {
		alarm[0] = 45;
}

alarm[0] = random_range(0,420)
alarm[1] = random_range(120,240)