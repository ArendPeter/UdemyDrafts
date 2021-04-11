move_speed = 10;
dx = 0; 
dy = 0;
angle = 0;

// particles
{
	p_sys = part_system_create();
	part_system_layer(p_sys, layer);

	p_type = part_type_create();
	part_type_shape(p_type, pt_shape_explosion);
	part_type_color_mix(p_type, c_red, c_yellow);
	part_type_life(p_type, 5, 15);
	part_type_alpha3(p_type, 0, 1, 0);
	part_type_size(p_type, .75, 1, -.01, 0);

	p_emit = part_emitter_create(p_sys);
	part_emitter_stream(p_sys, p_emit, p_type, 2);
	part_emitter_region(p_sys, p_emit, x-8, x+8, y-8, y+8, ps_shape_ellipse, ps_distr_linear);
}