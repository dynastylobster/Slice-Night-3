if (!global.paused) {
if (tangible) {
if (instance_exists(Obj_VoidBoss)) {
Obj_VoidBoss.currentPhase += 1;
layer_background_alpha(layer_background_get_id(layer_get_id("Fg_White")), 1);
instance_destroy();
}
}
}