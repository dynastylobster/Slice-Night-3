/// @description Insert description here
// You can write your code in this editor
CheckOnscreen();
angle-= 5
if !global.paused {
age += 0.25 

if !slower {

if !horizontal {
y += sin(age/3)*3 *dir
} else {
x += sin(age/3)*3 *dir
} 

}
if slower {
	if !horizontal {
y += sin(age/5)*1.5 *dir
} else {
x += sin(age/5)*1.5 *dir
} 
	
}



}
if place_meeting(x,y,Obj_Wall) {
draw_x = x+irandom_range(-1,1)
draw_y = y+irandom_range(-1,1) 
if !place_meeting(x,y,Obj_SliceBlockParticle) {
if !global.paused and onscreen	audio_play_sound(Snd_BlockBreak,0,0,0.08,0,random_range(0.9,1.1))
instance_create_layer(x,y,layer,Obj_SliceBlockParticle);
}
} else {
draw_x = x
draw_y = y
}