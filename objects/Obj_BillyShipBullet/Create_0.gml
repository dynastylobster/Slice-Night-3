/// @description Insert description here
// You can write your code in this editor
audio_play_sound(Snd_BillyShipShoot,0,0,1*global.SFXvolume,0,1.1)
damage = true;
damagebase = 1;
done_slicing = false;
if instance_exists(Obj_BillyShip) {
xspeed = Obj_BillyShip.xspeed
} else {
xspeed = 0.5	
}

if instance_exists(Obj_JollyRammer) {
	instance_destroy();	
}