if (song == Snd_BalladOfDisparCredits) {
 switch(floor(audio_sound_get_track_position(s))) {
	case 1:
		w = "I talk about my life and I preach about my pain";
	break;
	case 6:
		w = "And then I look at you, who has it so much worse"
	break;
	case 11:
		w = "I'm horrified that you endured so much more"
	break;
	case 16:
		w = "I guess I couldn't handle... something a lot smaller"
	break;
	case 20:
		w = "You..."
	break;
	case 22:
		w = "Were pierced through your soul and I'm"
	break;
	case 25:
		w = "So petty and bold"
	break;
	case 27:
		w = "But if I'm so sorry, why am I caught up in my"
	break;
	case 35:
		w = "Anthill of Despair?"
	break;
	case 39:
		w = "You tell about your life and you talk about your pain"
	break;
	case 43:
		w = "And yet you say \"sorry\"? Tell me what is wrong with that"
	break;
	case 48:
		w = "I'm horrified that you've endured anything at all"
	break;
	case 53:
		w = "So what if you couldn't handle something a bit small"
	break;
	case 58:
		w = "You... were pierced through your soul and you're..."
	break;
	case 61:
		w = "Not petty at all"
	break;
	case 65:
		w = "Please don't be sorry, everybody has their own"
	break;
	case 70:
		w = "Anthill of Despair"
	break;
	}
}
if (w != "") {
	draw_set_color(#00132F)
	draw_set_alpha(0.75)
	draw_rectangle(0,227,426,250,false)
	draw_set_alpha(1);
	var text_x = camera_get_view_x(view_camera[0]) + 214;
	var text_y = camera_get_view_y(view_camera[0]) + 220;
	draw_set_halign(fa_center);
	draw_set_font(UndertaleFont)
	draw_set_color(c_black);
	draw_text(text_x - 1, text_y + 1, w);
	draw_set_color(c_white);
	draw_text(text_x, text_y, w);
	draw_set_halign(fa_left);
}