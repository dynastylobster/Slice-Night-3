// Inherit the parent event
if !immune {
event_inherited()
} else {
		instance_create_layer(x,y,layer,Obj_EnemyHurtEffect)
	}
other.done_slicing = true;

if (instance_exists(Obj_CameraController)) {
var cam = instance_find(Obj_CameraController, 0);
cam.risingSpeed = 1 + ((50 - hp) * 0.5);
}