locPoints = [[120, 480], [1980, 480], [1980, 100], [120, 100]];
phases = ["Intro", "Attacking 1", "Talking 1", "Attacking 2", "Talking 2", "Attacking 3", "Outro", "End"];
currentPhase = 0;
lastPhase = 0;
nextWord = 0;

counter = 0;
attackTimer = 60;
lookphase = 0;
holdit = 0;
text = "";
lasering = false;
cameraMoving = false;

targX = x;
targY = y;

lightningCounter = 0;
voidtalking = false;
letter = 0;