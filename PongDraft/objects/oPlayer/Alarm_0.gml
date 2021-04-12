instance_create_layer(
	random(room_width),
	random(room_height),
	layer,
	choose(oBiggerBall, oExtraBall, oPaddleSpeed),
)
alarm[0] = 300