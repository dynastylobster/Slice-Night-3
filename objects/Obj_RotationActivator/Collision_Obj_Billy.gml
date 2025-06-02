/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_RotationDevice) {
		Obj_RotationDevice.y = lerp(Obj_RotationDevice.y,camera_get_view_y(view_camera[0])+120,0.0125)
	}
	
Obj_Billy.xspeed = 0
Obj_Billy.running = true

if used = false {

		Obj_RotationDevice.alarm[0] = 230
		
		with(Obj_TectonicFall) {
			alarm[0] = irandom_range(1,30)
		}
	}

used = true

with(Obj_RainGenerator) {
instance_destroy();	
}
with(Obj_RainDrop) {
instance_destroy();	
}