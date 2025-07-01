/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if !crying {

if Obj_Billy.i_frames > 0 {
event_inherited();
} else {	
	var hitthem = choose(true,false)
	if hitthem = true {
		event_inherited()	
	} else {
		Obj_Billy.i_frames = 60;	
	}
}

}
if crying {
	
	if Obj_Billy.i_frames > 0 {
event_inherited();
} else {	
	var hitthem = choose(true,false,false,false)
	if hitthem = true {
		event_inherited()	
	} else {
		Obj_Billy.i_frames = 60;	
	}
}
	
}