

if (array_length(xLock) > 0) {
if (camera_get_view_x(view_camera[0]) < xLock[0]) {
    camera_set_view_pos(view_camera[0], xLock[0], camera_get_view_y(view_camera[0]));
}
if (camera_get_view_x(view_camera[0]) - 426 > xLock[1]) {
    camera_set_view_pos(view_camera[0], xLock[1], camera_get_view_y(view_camera[0]));
}
}

if (array_length(yLock) > 0) {
    if (rising > yLock[0]) { rising = yLock[0]; }
    if (camera_get_view_y(view_camera[0]) > (yLock[0] - rising)) {
        camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), (yLock[0] - rising));
    }
    if (!goUp || rising == yLock[0]) {
        if (camera_get_view_y(view_camera[0]) < yLock[1]) {
            camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), yLock[1]);

        } 
 //   if (goUp)
    {
        if (camera_get_view_y(view_camera[0]) > yLock[0] - rising ) {
            camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), yLock[0] - rising );
    }
}
}
}

if (goUp) and !global.paused {
rising += risingSpeed * 0.05;
}

if shooterfight {
		if instance_exists(Obj_BillyShip) {
			cam_x = clamp(Obj_BillyShip.x-58,0,room_width-426)
			real_cam_y = clamp(lerp(Obj_BillyShip.y-120,real_cam_y,0.5),0,room_height-240)
		}
		camera_set_view_pos(view_camera[0],cam_x,real_cam_y);
	
	}


if boat {
		age += 0.04
		boatcamy = sin(age)*2
		cam_x = clamp(Obj_Billy.x-213,0,room_width-426)
		if instance_exists(Obj_Billy) {
			with(Obj_Billy) {
					if !grounded {
							real_cam_y = clamp(y-130,0,room_height-240)
					} else {
						if cam_y < real_cam_y+3 then cam_y += 1
						if cam_y > real_cam_y-3 then cam_y -= 1
					}
				}
			
			real_cam_y = Obj_Billy.cam_y + Obj_CameraController.boatcamy	
			camera_set_view_pos(view_camera[0],cam_x,real_cam_y+boatcamy)
		}
		if instance_exists(Obj_Water) {
			Obj_Water.y = Obj_Water.starty + boatcamy	
		}
		

		
	}