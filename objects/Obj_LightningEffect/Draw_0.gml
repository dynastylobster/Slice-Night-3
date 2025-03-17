if (irandom_range(0, lightningChance) == 0) {
	lc = irandom_range(6, 18);
}
if (lc > 0) {
	layer_background_alpha(bg, (lc / 18));
	lc--;
}