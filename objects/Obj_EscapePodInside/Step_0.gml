/// @description Insert description here
// You can write your code in this editor
age += 0.125
draw_y = y+sin(age/16) *8

if instance_exists(Obj_GemCollectEffect) {
mask_alpha = 1;	
}
if mask_alpha > 0 mask_alpha -= 0.005

if mask_alpha <= 0 and image_index = 1 then goleft = true

if goleft {
	x = lerp(x,-350,0.0125)
}

if x < -298 {
		room_goto(L_TrueFinalCutScene)
	}