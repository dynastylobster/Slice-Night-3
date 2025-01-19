if (object_exists(Obj_Billy)) {
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]) + 240;
image_yscale = 1 + ((vertical? (room_height - Obj_Billy.y) : Obj_Billy.x) * (riseSpeed * 0.001));
}