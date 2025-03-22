riding = false;
walled = false;
if image_index = 6 {
		var shinybilly = irandom_range(1,1000)
		if shinybilly = 1 then sprite_index = Spr_ShinyBillySoul
	}

if image_index = 15 sprite_index = Spr_NPCStrawby;

age = 0;
startx = x
drawing = false 
line = 0;
xspeed = 0
if instance_exists(Obj_Billy) {
		depth+= 25
	}
yaceel = 0;
grav = 0.45;
age2 = 0;
fadingOut = false;