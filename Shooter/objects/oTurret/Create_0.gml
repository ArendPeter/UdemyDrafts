gun_angle = 0;

hp = 3

// particles
{
	p_sys = part_system_create();

	p_type = part_type_create();
	part_type_shape(p_type, pt_shape_smoke);
	part_type_color1(p_type, c_gray);
	// second pass
	part_type_alpha2(p_type, 1, 0);
	part_type_life(p_type, room_speed, 2*room_speed);
	part_type_direction(p_type, 0, 360, 0, 10);
	part_type_speed(p_type, 1, 2, -.1, 0);
	part_type_size(p_type, .5, .7, .05, 0);
	
	p_emit = part_emitter_create(p_sys);
	part_emitter_region(p_sys, p_emit, x-10, x+10, y-10, y+10, ps_shape_ellipse, ps_distr_linear);
}