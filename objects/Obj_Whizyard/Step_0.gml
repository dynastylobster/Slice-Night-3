/// @description Insert description here
// You can write your code in this editor
event_inherited()
if !global.paused {
	if (goTime) {
		if (image_alpha < 1) {image_alpha += 0.1;}
	attackCounter++;
	}
	if (goTime && attackCounter >= 60) {
	var randY = random_range(20, 75);
	var randX = random_range(20, 75);
	if (irandom(1) == 1) {randY *= -1;}
	if (irandom(1) == 1) {randX *= -1;}
	if (instance_exists(Obj_Billy)) {
	y = Obj_Billy.y + randY;
	x = Obj_Billy.x + randX;
	}
	instance_create_layer(x, y, layer, ObjMenaceOrb, {belongsToWhizyard : true} );
	audio_play_sound(Snd_Wizard_TP, 0, false, global.SFXvolume * 1);
	attackCounter = 0;
	}
}