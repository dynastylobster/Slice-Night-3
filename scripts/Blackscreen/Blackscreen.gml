function Blackscreen() {
global.paused = false;
audio_stop_all();
layer_background_alpha(layer_background_get_id(layer_get_id("Fg_Black")), 1);
if (instance_exists(Obj_Billy)) {
Obj_Billy.x = 0;
Obj_Billy.y = 0;
}
}