dy += .5;

x += dx;
y += dy;

//// DEATH
colliding_with_pipe = place_meeting(x, y, oPipe);
if(colliding_with_pipe){
	game_restart();
}

//// JUMP
if(keyboard_check_pressed(vk_space)){
    dy = -10;
}

image_angle = point_direction(0, 0, dx+5, dy)

if(x > room_width){
	room_goto_next();
}