alarm[0] = random_range(3*room_speed, 5*room_speed);

var offset_x = lengthdir_x(64, gun_angle);
var offset_y = lengthdir_y(64, gun_angle);
with(instance_create_layer(x+offset_x, y+offset_y, layer, oMissile)){
	angle = other.gun_angle;	
}