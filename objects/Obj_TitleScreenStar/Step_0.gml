/// @description Insert description here
// You can write your code in this editor
y -= yspeed
if y < -4 then instance_destroy();
if room != creation_room then image_alpha -= 0.0125
if image_alpha <= 0 instance_destroy();

if room = TitleScreenRoom {
image_alpha -= 0.0125
}