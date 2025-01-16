/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if other.done_slicing = false and !instance_exists(Obj_BasketBallSpikey)
	{
		if instance_exists(Obj_JollyRammer) {
			with(Obj_JollyRammer) {
				instance_create_layer(instance_furthest(x,y,Obj_JollyRammerBallSpawner).x,instance_furthest(x,y,Obj_JollyRammerBallSpawner).y,layer,Obj_BasketBallSpikey);	
			}
	}
}
event_inherited();

