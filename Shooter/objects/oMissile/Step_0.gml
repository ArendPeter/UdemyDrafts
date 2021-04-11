// angle
{
	var target_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	var diff = angle_difference(angle, target_angle);
	if(abs(diff) < rot_speed){
		angle = target_angle;
	}else{
		angle += -sign(diff)*rot_speed;
	}
	
	image_angle = angle;
}

// movement
{
	var dx = lengthdir_x(mv_speed, angle);
	var dy = lengthdir_y(mv_speed, angle);	
	x += dx;
	y += dy;
}

// death
{
	if(not place_free(x, y)){
		instance_destroy();	
	}
}

// hurt player
{
	if(place_meeting(x, y, oPlayer)){
		with(oPlayer){
			hp -= 10;	
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