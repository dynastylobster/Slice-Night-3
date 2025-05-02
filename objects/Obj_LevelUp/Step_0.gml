if (!instance_exists(BossParentObject)) {
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]) + age;
if (age < 0) { age++; }

}

image_alpha += 0.125