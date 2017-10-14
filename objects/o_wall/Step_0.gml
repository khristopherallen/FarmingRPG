/// @description Insert description here
// You can write your code in this editor
speed_ = .05;


if (o_player.y+o_player.sprite_height > y+sprite_height){
	depth = 100;	
	image_alpha += speed_;
}
else{
	depth = -100;
	if (rectangle_in_rectangle(x,y,x+sprite_width,y+sprite_height,o_player.x+2,o_player.y+1,o_player.x+o_player.sprite_width-2,o_player.y+o_player.sprite_height)){
		image_alpha -= speed_;
	}else{
		image_alpha += speed_;
	}
}

image_alpha = clamp(image_alpha,.5,1);