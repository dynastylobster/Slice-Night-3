/// @description Insert description here
// You can write your code in this editor
if instance_exists(Obj_Billy) {
		x = clamp(Obj_Billy.x-64,x,800)
		
		if (Obj_Billy.xspeed > 0 and x < Obj_Billy.x){ if x < 799 image_speed = 0.75}
		else {image_speed = 0; image_index = 0}
		
	}

if x > 798 {
		if !instance_exists(Obj_Model1ShooterEnder) {
		with(instance_create_depth(x,y,depth,Obj_Model1ShooterEnder)	) {
		dest_room = CreditsRoom;	
		}
		}
	}

while place_meeting(x,y,Obj_Slope) {
y -= 0.25	
}