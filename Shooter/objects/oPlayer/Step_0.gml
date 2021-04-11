// animation
{
	// death
	if(dying == true){ // if(dying){
		if(sprite_index != sPlayerDeath){
			image_index = 0;
		}
		sprite_index = sPlayerDeath;
		image_speed = 1;
		if(image_index + image_speed > image_number){
			game_restart();	
		}
	// jumping	
	}else if(place_free(x,y+1)){
		sprite_index = sPlayerJump;
		image_index = (dy < 0)? 0 : 1;
		image_speed = 0;
	// idle
	}else if(dx == 0){
		sprite_index = sPlayerIdle;
		image_index = 0;
		image_speed = 0;
	// walking
	}else{
		sprite_index = sPlayerWalk;
		image_speed = 1;
	}
	
	gun_angle = point_direction(x+gun_x, y+gun_y, mouse_x, mouse_y);
	
	if(mouse_x > x){
		image_xscale = 1;	
	}else{
		image_xscale = -1;
	}
}

// horizontal movement
{
	dx = 0;
	
	// right
	if(keyboard_check(ord("D")) and place_free(x+max_dx, y)){
		 dx = max_dx;
	}
	
	// left
	if(keyboard_check(ord("A")) and place_free(x-max_dx, y)){
		dx = -max_dx;
	}
	
	x += dx;
}

// vertical movement
{
	// gravity
	dy += grav;
  
    // jumping
	if(keyboard_check_pressed(ord("W")) and not place_free(x, y+1)){
		dy = -20;
	}
  
	// collisions
	if(not place_free(x, y+dy)){
		if(dy > 0){
			move_contact_solid(270, abs(dy))
		}
		if(dy < 0){
			move_contact_solid(90, abs(dy))
		}
		dy = 0;
	}

	// update position
	y += dy;
}
	
// shooting
{
	if(mouse_check_button_pressed(mb_left) and not dying){
		// 90 = dist from arm to gun tip
		var gun_end_x = lengthdir_x(90, gun_angle);
		var gun_end_y = lengthdir_y(90, gun_angle);
		var bullet = instance_create_layer(
			x+gun_x+gun_end_x,
			y+gun_y+gun_end_y,
			layer,
			oBullet
		);
		with(bullet){
			dx = lengthdir_x(move_speed, other.gun_angle);
			dy = lengthdir_y(move_speed, other.gun_angle);
			image_angle = other.gun_angle
		}
	}
}
	
// death
{
	if(hp < 0){
		dying = true;	
	}
}