/// @description Insert description here
// You can write your code in this editor
if width >= 1 {
y += 6
} else {
y += 4
}

x -=1

if y > room_height +6 instance_destroy();

if distance_to_object(Obj_Water) <= 0 {
instance_destroy();	
}