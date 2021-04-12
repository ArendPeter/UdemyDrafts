if(is_ai == true){
	target_ball = oBall
	with(oBall){
		if(x > other.target_ball.x){
			other.target_ball = id	
		}
	}
	if( y + 64 > target_ball.y){
		y -= sp
	}else{
		y += sp
	}
}