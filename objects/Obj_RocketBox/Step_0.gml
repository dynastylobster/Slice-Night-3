/// @description Insert description here
// You can write your code in this editor
if active {
age += 0.125	
x = startx + sin(age*16)*1
yspeed -= 0.05
y+= yspeed

if !place_meeting(x,y,Obj_FlightShooterSpray) {
instance_create_depth(x+random_range(-4,4),y,depth+10,Obj_FlightShooterSpray)	
}

}


