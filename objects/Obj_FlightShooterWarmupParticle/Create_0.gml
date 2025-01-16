/// @description Insert description here
// You can write your code in this editor
image_index = random_range(0,9)
if instance_exists(Obj_FlightShooterBoss) {
direction = point_direction(x,y,Obj_FlightShooterBoss.x,Obj_FlightShooterBoss.y)	
}
speed = 0.5