/// @description Follow player

moveCam = keyboard_check(ord("C"));

if (moveCam) {
	var input_left		= keyboard_check(vk_left);
	var input_right		= keyboard_check(vk_right);
	var input_up		= keyboard_check(vk_up);
	var input_down		= keyboard_check(vk_down);
	x += (input_right - input_left)*6;
	y += (input_down - input_up)*6;
} else {
	x = lerp(clamp(x, following.x - h_border, following.x + h_border), x, 0.1);
	y = lerp(clamp(y, following.y - v_border, following.y + v_border), y, 0.1);
}