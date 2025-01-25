// Inherit the parent event
event_inherited();

if (currentPhase >= 2 && currentPhase <= 5) {
if (random_range(0, 500 / currentPhase) <= 2) {
layer_background_blend(layer_background_get_id(layer_get_id("Bg_still")), c_white);
var lightRand = int64(random_range(16, 24));
lightningCounter = lightRand;
audio_play_sound(Snd_BlockBreak, 0, 0, global.SFXvolume * 2, lightRand / 2, 0.8);
}
if (lightningCounter == 12) {
layer_background_blend(layer_background_get_id(layer_get_id("Bg_still")), c_grey);
}
if (lightningCounter == 0) {
layer_background_blend(layer_background_get_id(layer_get_id("Bg_still")), c_black);
} else {
lightningCounter--;
}
} else {
layer_background_blend(layer_background_get_id(layer_get_id("Bg_still")), c_black);
}

if (attackTimer >= holdit + 120) {
if (phases[currentPhase] == "Intro") {
voidtalking = true;
switch (nextWord) {
case 0:
text = "You. " + string(global.character) + ".";
break;
case 1:
text = "What did you expect?";
break;
case 2:
text = "Harming my creation like that.";
break;
case 3:
text = "Your audacity is infuriating.";
break;
case 4:
text = "";
currentPhase++;
nextWord = -1;
break;
}
nextWord++;
}

if (phases[currentPhase] == "Talking 1") {
voidtalking = true;
switch (nextWord) {
case 0:
text = "What are you attempting?";
break;
case 1:
text = "Your death is imminent.";
break;
case 2:
text = "";
currentPhase++;
nextWord = -1;
break;
}
nextWord++;
}

if (phases[currentPhase] == "Talking 2") {
voidtalking = true;
switch (nextWord) {
case 0:
text = "Your persistence is admirable.";
break;
case 1:
text = "Many would give up already.";
break;
case 2:
text = "But you? You're dumb enough to continue.";
break;
case 3:
text = "";
currentPhase++;
nextWord = -1;
break;
}
nextWord++;
}

if (phases[currentPhase] == "Outro") {
switch (nextWord) {
case 0:
voidtalking = true;
text = "Stop it already!";
break;
case 1:
voidtalking = true;
text = "You've already flashed away my darkness...";
break;
case 2:
voidtalking = true;
text = "...What more could you want?";
break;
case 3:
text = "Fauxvoid! Are you trying to fight the player again?";
break;
case 4:
text = "I'm so sorry, player.";
break;
case 5:
text = "She's not that bad when you get to know her.";
break;
case 6:
voidtalking = true;
text = "What? You want me to join your adventure?";
break;
case 7:
voidtalking = true;
text = "Sure, whatever.";
break;
case 8:
text = "Void joined your party!";
break;
case 9:
text = "";
currentPhase++;
nextWord = -1;
break;
}
nextWord++;
}

attackTimer = 0;
holdit = attackTimer;
}

//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), string([x, y]));

if (text != "" && voidtalking) {
	var text_x = camera_get_view_x(view_camera[0]) + 214;
	var text_y = camera_get_view_y(view_camera[0]) + 220;
	var randx = random_range(-1, 1);
	var randy = random_range(-2, 2);
	draw_set_halign(fa_center);
	draw_set_font(UndertaleFont)
	if (currentPhase <= 5) {
	draw_set_color(c_white)
	} else {
	draw_set_color(c_black)
	}
	draw_text(text_x + randx, text_y + randy, text);
	if (currentPhase <= 5) {
	draw_set_color(c_black)
	} else {
	draw_set_color(c_white)
	}
	draw_text(text_x + (randx * -1), text_y + (randy * -1), text);
	draw_set_halign(fa_left);
}
if (text != "" && !voidtalking) {
	var text_x = camera_get_view_x(view_camera[0]) + 214;
	var text_y = camera_get_view_y(view_camera[0]) + 220;
	draw_set_halign(fa_center);
	draw_set_font(UndertaleFont)
	if (currentPhase <= 5) {
	draw_set_color(c_white)
	} else {
	draw_set_color(c_black)
	}
	draw_text(text_x, text_y, text);
	if (currentPhase <= 5) {
	draw_set_color(c_black)
	} else {
	draw_set_color(c_white)
	}
	draw_text(text_x, text_y, text);
	draw_set_halign(fa_left);
}