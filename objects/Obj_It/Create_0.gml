tts = "";
speakage = 0;
age = 0;
doneSpeakin = false;

if (!global.voidunlocked) {
	instance_create_depth(192, 448, 100, Obj_NPC_MultiLine, { textToSay : ["You aren't ready yet."] });
	instance_destroy();
}
