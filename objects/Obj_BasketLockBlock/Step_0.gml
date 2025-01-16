/// @description Insert description here
// You can write your code in this editor
if image_index >= 2.5 {
	instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
	instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
	instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
	instance_create_layer(x,y,layer,Obj_EnemyFlameSpark)
	instance_destroy();
}

	if instance_exists(Obj_BasketNet) {
		if instance_nearest(basket_x,basket_y,Obj_BasketNet).active = true {
			image_speed = 1;	
		}
	}