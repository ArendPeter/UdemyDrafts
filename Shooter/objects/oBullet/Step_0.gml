// movement
{
	x += dx;
	y += dy;
}

// death animation
{
	if(not place_free(x, y)){
		if(image_index == 0){
			alarm[0] = 15;
		}
		dx = 0;
		dy = 0;
		image_index = 1;	
	}
}

// turret collision
{
	if(place_meeting(x, y, oTurret)){
		var turret = instance_place(x, y, oTurret);
		with(turret){
			hp--;
			image_blend = c_red;
			alarm[1] = 10;
		}
		instance_destroy();
	}
}

// breakable
{
	var breakable = instance_place(x, y, oBreakable);
	if(breakable != noone){
		breakable.image_index = 0;
	}
}

// missile collision
{
	var missile = instance_place(x, y, oMissile);
	if(missile != noone){
		with(missile){
			instance_destroy();
		}
		instance_destroy();
	}
}