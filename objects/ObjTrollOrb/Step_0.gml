/// @description Insert description here
// You can write your code in this editor
event_inherited()
if !global.paused {
	if (goTime) {
	attackCounter++;
	}
	if (goTime && attackCounter >= 60) {
	var randY = random_range(20, 50);
	var randX = random_range(20, 50);
	if (irandom(2) == 1) {randY *= 1;}
	if (irandom(2) == 1) {randX *= 1;}
	y = Obj_Billy.y + randY;
	x = Obj_Billy.x + randX;
	instance_create_layer(x, y, layer, ObjMenaceOrb, {belongsToWhizyard : true} );
	audio_play_sound(Snd_Bounce, 0, false, global.SFXvolume * 1);
	attackCounter = 0;
	}
}