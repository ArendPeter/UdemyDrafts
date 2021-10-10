// only check if we go below the bottom, otherwise we can just fallback down into the room
if(y > 768){
	oPaddle.pts = 0;
	x = xstart;
	y = ystart;
	speed = 0;
}