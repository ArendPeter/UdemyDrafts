// camera
{
	// center on player
	var target_x = oPlayer.x-camW()/2;
	var target_y = oPlayer.y-camH()/2;

	// smoother camera
	var cam_x = lerp(camX(), target_x, .1);
	var cam_y = lerp(camY(), target_y, .1);

	// clamp to room
	cam_x = clamp(cam_x, max_shake_dist, room_width-camW()-max_shake_dist);
	cam_y = clamp(cam_y, max_shake_dist, room_height-camH()-max_shake_dist);

	// screen shake
	var shake_dir = random(360);
	var shake_x = lengthdir_x(shake_dist, shake_dir);
	var shake_y = lengthdir_y(shake_dist, shake_dir);
	cam_x += shake_x;
	cam_y += shake_y;
	shake_dist *= .8;

	// apply
	camPos(cam_x, cam_y);
}

// restart
{
	if(keyboard_check_pressed(ord("R"))){
		game_restart();
	}
}

// parallax
{
	layer_x(bkg_mountains, camX());
	layer_x(bkg_trees, camX()*.5);
	layer_x(bkg_lights, camX()*.3);
	layer_x(bkg_lights2, camX()*.2-200);
	layer_x(assets_vines, camX()*-.5);
}