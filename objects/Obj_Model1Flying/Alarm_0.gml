/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x-1+random_range(5,-5),y+44,layer,Obj_FlightShooterSpray);
instance_create_layer(x+34+random_range(5,-5),y+44,layer,Obj_FlightShooterSpray);
instance_create_layer(x+64+random_range(5,-5),y+44,layer,Obj_FlightShooterSpray);
with(Obj_FlightShooterSpray) {
	image_alpha = 0.5	
}
alarm[0] = 12