// movement
{
	var dx = lengthdir_x(move_speed, angle);
	var dy = lengthdir_y(move_speed, angle);	
	x += dx;
	y += dy;
}

// death
{
	if(not place_free(x, y)){
		instance_destroy();	
	}
}

// particles
{
	part_emitter_region(p_sys, p_emit, x-8, x+8, y-8, y+8, ps_shape_ellipse, ps_distr_linear);	
}

// hurt player
{
	if(place_meeting(x, y, oPlayer)){
		with(oPlayer){
			hp -= 2;	
		}
		instance_destroy();
	}
}

// breakable
{
	var breakable = instance_place(x, y, oBreakable);
	if(breakable != noone){
		breakable.image_index = 1;
	}
}