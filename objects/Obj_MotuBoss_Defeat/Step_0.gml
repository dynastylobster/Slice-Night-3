/// @description Insert description here
// You can write your code in this editor
if place_meeting(x+3,y,Obj_Wall) {
x=-1	
}
if place_meeting(x-3,y,Obj_Wall) {
x++	
}

if !place_meeting(x,y+1,Obj_Wall) {
y++	
}