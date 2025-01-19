// Inherit the parent event
event_inherited();

if (object_exists(Obj_CameraController)) {
var cam = instance_find(Obj_CameraController, 0);
cam.risingSpeed += 0.5;
}