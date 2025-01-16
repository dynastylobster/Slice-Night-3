/// @description Insert description here
// You can write your code in this editor
if alarm[0] < 50 and alarm[0] != 0
{
instance_create_layer(x+random_range(-64,64),y+random_range(-64,64),layer,Obj_FlightShooterWarmupParticle);
}
alarm[3] = 4