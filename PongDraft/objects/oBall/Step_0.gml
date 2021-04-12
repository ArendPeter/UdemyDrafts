if(x < 0){
	oScoreBoard.enemy_points = oScoreBoard.enemy_points + 1 
	
	if(instance_number(oBall) > 1){
		instance_create_layer(xstart, ystart, layer, oBall)
	}
	instance_destroy()
	
	audio_play_sound(lose, 0, false)
}

if(x > 1371){
	oScoreBoard.player_points = oScoreBoard.player_points + 1
	
	if(instance_number(oBall) > 1){
		instance_create_layer(xstart, ystart, layer, oBall)
	}
	instance_destroy()
	
	audio_play_sound(win, 0, false)
}