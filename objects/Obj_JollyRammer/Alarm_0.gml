/// @description Insert description here
// You can write your code in this editor
ramming = true;
if instance_exists(Obj_Billy) {
		dir = sign(Obj_Billy.x-x);
	}
	var teleported = false
	
if instance_exists(Obj_BasketBallSpikey) {
	if distance_to_object(Obj_BasketBallSpikey) <= 32 
	{
if place_meeting(x+xspeed*2,y,Obj_JollyRammerTP) and !teleported {
		var room_x = 213

	instance_create_layer(32,y,layer,Obj_EnemyHurtEffect)
	instance_create_layer(394,y,layer,Obj_EnemyHurtEffect)
		x = room_x + (room_x - x)

	}
}
}