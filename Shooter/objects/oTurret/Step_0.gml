// angle
{
	gun_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
}

// death
{
	if(hp < 0 and visible){
		visible = false;
		alarm[0] = -1;
		part_emitter_region(p_sys, p_emit, x-10, x+10, y-10, y+10, ps_shape_ellipse, ps_distr_linear);
		part_emitter_burst(p_sys, p_emit, p_type, 10);			
		with(oControl){
			shake_dist = max_shake_dist;
		}
		//instance_destroy();
	}
	
	if(not visible and part_particles_count(p_sys) == 0){
		instance_destroy();	
	}
}