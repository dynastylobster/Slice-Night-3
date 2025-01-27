if (!global.paused) {
if (active && image_alpha < 1) {
image_alpha += 0.01;
}
if (image_alpha == 1) {
tangible = true;
}
}