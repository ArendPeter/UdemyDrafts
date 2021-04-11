var dist_to_player = point_distance(x, y, oPlayer.x, oPlayer.y);

if(dist_to_player < 700){
	with(instance_create_layer(x, y, layer, oFlame)){
		angle = other.gun_angle+random_range(-10, 10);	
	}	
}

alarm[0] = 2;