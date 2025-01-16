/// @description Insert description here
// You can write your code in this editor
if age <= 4096 {
age+= hover_frequency	
}

y = starty+(sin(age)*hover_amplitude)

if sprite_index = Spr_FlatBoofer_Active {
	if instance_exists(Obj_Billy) {
		if Obj_Billy.grounded = false then global.key_Z = true;
		if abs(Obj_Billy.xspeed) > 6 then Obj_Billy.xspeed*= 0.95
		}
	}