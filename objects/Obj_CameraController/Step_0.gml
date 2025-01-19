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
    if (goUp)
    {
        if (camera_get_view_y(view_camera[0]) > yLock[0] - rising - 240) {
            camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), yLock[0] - rising - 240);
    }
}
}
}

if (goUp) {
rising += risingSpeed * 0.05;
}