// Inherit the parent event
if other.done_slicing = false {
	audio_play_sound(Snd_BlockBreak,0,0,global.SFXvolume)
	}
if !immune {
event_inherited()
} else {
		instance_create_depth(x,y,depth,Obj_EnemyHurtEffect)
	}

other.done_slicing = true;

if (instance_exists(Obj_CameraController)) {
var cam = instance_find(Obj_CameraController, 0);
cam.risingSpeed = 1 + ((50 - hp) * 0.5);
}