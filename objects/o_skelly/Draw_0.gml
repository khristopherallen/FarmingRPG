/// @description Character Animation

var anim_length = 9;
var frame_size = 64;
var anim_speed = 10;

if (moveX < 0) {
	y_frame = 9;
} else if (moveX > 0) {
	y_frame = 11;
} else if (moveY < 0) {
	y_frame = 8;
} else if (moveY > 0) {
	y_frame = 10;
} else {
	anim_length = 1;
}

// DRAW CHARACTER BASE
draw_sprite_part(char_type, 0, floor(x_frame) * frame_size, y_frame * frame_size, frame_size, frame_size, x-frame_size/4, y);

// INCREMENT FRAME FOR ANIMATION
x_frame += anim_speed/game_get_speed(gamespeed_fps);
if x_frame > anim_length - 1 {
	x_frame = 0;
}

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_yellow, c_green, c_blue, true);