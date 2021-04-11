if(dying){
	draw_self();	
}else{
	// back arm
	draw_sprite_ext(sGun, 1, x+gun_x, y+gun_y, image_xscale, image_yscale, gun_angle+((image_xscale<0)?180:0), image_blend, image_alpha)
	// draw_self()
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
	// front arm / gun
	draw_sprite_ext(sGun, 0, x+gun_x, y+gun_y, image_xscale, image_yscale, gun_angle+((image_xscale<0)?180:0), image_blend, image_alpha)
}