if(point_in_rectangle(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height)){
	if(mouse_check_button(mb_left)){
		sprite_index = sButtonPressed;
  }else{
    sprite_index = sButtonHover;
  }

  if(mouse_check_button_released(mb_left)){
		room_goto(target_room);
  }
}else{
	sprite_index = sButton;
}