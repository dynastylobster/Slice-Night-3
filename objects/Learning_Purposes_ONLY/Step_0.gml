var jumpButton = global.key_Z_pressed;
var runButton = global.key_C;
var leftButton = global.key_left;
var rightButton = global.key_right;

// Character Abilities
if (global.character == "Human") {
	baseCoyoteTime = 9;
	canDoubleJump = false;
	jumpSpeed = 6;
	maxRunSpeed = 2.3;
}

if (global.character == "Robot") {
	baseCoyoteTime = 9;
	canDoubleJump = false;
	jumpSpeed = 6.5;
	maxRunSpeed = 2.1;
}

if (global.character == "Coyote") {
	baseCoyoteTime = 45;
	canDoubleJump = true;
	jumpSpeed = 5;
	maxRunSpeed = 3.15;
}

Collision();
// Collision
function Collision() {
if (place_meeting(x, y + 1.2, blocks) && ySpeed >= 0) {
	grounded = true;
} else { grounded = false; }

var feet = place_meeting(x + 1.5 * xSpeed, y, blocks);
var ankles = place_meeting(x + 1.5 * xSpeed, y - 1, blocks);
if (feet && !ankles) {
	y += 1;
	feet = false;
}
if (!feet) {
	x += xSpeed;
}

while (position_meeting(x, y + 15.9, blocks)) {
y -= 0.1;
grounded = true;
}
}

// Jumping
if (place_meeting(x + facing, y, blocks) && !grounded) {
		grounded = true;
		onWall = true;
	}

if (grounded) {
	ySpeed = 0;
	coyoteTime = baseCoyoteTime;
	if (canDoubleJump) { hasDoubleJumped = false; }
	if (jumpButton) {
		ySpeed -= jumpSpeed;
		if (onWall) {
			xSpeed += wallJumpSpeed * facing;
		}
	}
}
if (!grounded) {
	ySpeed = clamp(ySpeed + fallAccel, maxFallSpeed * -1, maxFallSpeed);
	if ((!canDoubleJump) || (canDoubleJump && hasDoubleJumped)) { coyoteTime--; }
	if (jumpButton && coyoteTime > 0) {
		ySpeed -= jumpSpeed;
		coyoteTime = 0;
	} else if (jumpButton && !hasDoubleJumped) {
		ySpeed -= jumpSpeed;
		hasDoubleJumped = true;
	}
}
if (!place_meeting(x, y - 4, blocks)) {
y += ySpeed;
}
if (place_meeting(x, y - 5, blocks)) {
y += 1;
ySpeed = maxFallSpeed / 4;
}

// Walking and Running
if (xSpeed < 0) { xSpeed += deccel; } else if (xSpeed > 0) {xSpeed -= deccel; }
if (rightButton) { facing = 1; }
if (leftButton) { facing = -1; }
if (rightButton || leftButton) {
	walking = true;
	if (!runButton) {
		xSpeed = clamp(xSpeed + (accel * facing), maxRunSpeed * -1, maxRunSpeed);
	} else {
		running = true;
		xSpeed = clamp(xSpeed + (accel * facing), maxRunSpeed * -1, maxRunSpeed);
	}
}


Collision();

// Camera Stuff
var camx = x - 213;
var camy = y - 120;
var oldCamx = camera_get_view_x(view_camera[0]);
var oldCamy = camera_get_view_y(view_camera[0]);
camx += ((camx + (xSpeed * 10)) - oldCamx) / 20;
camy += ((camy + (ySpeed * 10)) - oldCamy) / 20;
camx = clamp(camx, 0, room_width - 426);
camy = clamp(camy, 0, room_height - 240);
camera_set_view_pos(view_camera[0], camx, camy);