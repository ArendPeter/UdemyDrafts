col_x = x - oPaddle.x;
if(col_x > 96){
	direction = 80;		
}else if(col_x > 64){
	direction = 85;
}else if(col_x > 32){
	direction = 95;
}else{
	direction = 100;
}
speed = 20;
oPaddle.pts = oPaddle.pts + 1;