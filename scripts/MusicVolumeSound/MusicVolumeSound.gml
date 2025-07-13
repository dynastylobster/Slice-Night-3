// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//order is A C C A C D C
function MusicVolumeSound(){
	switch musicnote {
		case 1:	{
			audio_play_sound(Snd_a,0,0,global.musicvolume);
			break;
			}
		case 2:	{
			audio_play_sound(Snd_c,0,0,global.musicvolume);
			break;
			}
		case 3:	{
			audio_play_sound(Snd_c,0,0,global.musicvolume);
			break;
			}
		case 4:	{
			audio_play_sound(Snd_a,0,0,global.musicvolume);
			break;
			}
		case 5:	{
			audio_play_sound(Snd_c,0,0,global.musicvolume);
			break;
			}
		case 6:	{
			audio_play_sound(Snd_d,0,0,global.musicvolume);
			break;
		}
		case 7:	{
			audio_play_sound(Snd_c,0,0,global.musicvolume);
			break;
			}
		case 8: {
			audio_play_sound(Snd_a,0,0,global.musicvolume);
			musicnote = 1;
			break;
		}
		//break;
	}
}