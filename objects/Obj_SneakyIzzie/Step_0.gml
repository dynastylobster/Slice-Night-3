/// @description Insert description here
// You can write your code in this editor
timer += 0.125
x = startx+sin(timer/2)*4

if !place_meeting(x,y,Obj_NPC_MultiLine) {
y += 0.5;
} 

if instance_place(x,y,Obj_NPC_MultiLine) {
	if !grabbed {
	audio_play_sound(Snd_SliceReverse,0,0,global.SFXvolume*1.5,0,0.5);	
	grabbed = true;
	}
	
	
	instance_place(x,y,Obj_NPC_MultiLine).y = y+23
	instance_place(x,y,Obj_NPC_MultiLine).x = (startx+sin(timer/2)*5)-4
	y-= 1;
}