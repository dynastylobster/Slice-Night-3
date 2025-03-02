/// @description Insert description here
// You can write your code in this editor
event_inherited();
if global.key_X_pressed {
		if global.character = "Human" {
			global.character = "Robot"
			global.costume = "Motu"
			global.motu = true
		} else {
			global.character = "Human"	
			global.costume = "Billy (Fox)"
			global.motu = false
		}
	//global.motu = !global.motu
	}