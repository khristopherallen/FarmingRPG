/// @description Movement

// UPDATE INPUT
input_left		= keyboard_check(ord("A"));
input_right		= keyboard_check(ord("D"));
input_up		= keyboard_check(ord("W"));
input_down		= keyboard_check(ord("S"));
input_walk		= keyboard_check(vk_shift);
input_run		= keyboard_check(vk_control);

// ALTER SPEED
if (input_walk or input_run) {
	spd = abs((input_walk * w_spd) - (input_run * r_spd));
} else {
	spd = n_spd;
}

// RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

//	INTENDED MOVEMENT
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;


// COLLISION CHECKS - SOLIDS
// Horizontal
if (moveX != 0) {
	if (place_meeting(x+moveX, y, o_solid)) {
		repeat (abs(moveX)) {
			if (!place_meeting(x+sign(moveX), y, o_solid)) { x += sign(moveX);}
			else { break; }
		}
		moveX = 0;
	}
}

// Vertical
if (moveY != 0) {
	if (place_meeting(x, y+moveY, o_solid)) {
		repeat (abs(moveY)) {
			if (!place_meeting(x, y+sign(moveY), o_solid)) { y += sign(moveY);}
			else { break; }
		}
		moveY = 0;
	}
}

// APPLY MOVEMENT
x += moveX;
y += moveY;

