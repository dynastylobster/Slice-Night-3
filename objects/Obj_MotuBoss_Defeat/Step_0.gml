/// @description Insert description here
// You can write your code in this editor
if place_meeting(x+3,y,[Obj_Wall, autoTileCol]) {
x=-1	
}
if place_meeting(x-3,y,[Obj_Wall, autoTileCol]) {
x++	
}

if !place_meeting(x,y+1,[Obj_Wall, autoTileCol]) {
y++	
}

if room = Level_Boss4 {
		if alpha >= 2 {
			room_goto(Level_Boss4_Reject)	
		}
	}