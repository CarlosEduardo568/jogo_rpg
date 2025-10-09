function scr_inimigo_escolher_estado(){
	prox_estado = choose(scr_inimigo_andando, scr_inimigo_parado);
	
	if prox_estado == scr_inimigo_andando{
		estado = scr_inimigo_andando;
		dest_x = irandom_range(0, room_width);
		dest_y = irandom_range(0, room_height);
	}else if prox_estado == scr_inimigo_parado{
		estado = scr_inimigo_parado;
	}
}

function scr_inimigo_andando(){
	var _dir = point_direction(x, y, dest_x, dest_y);
	hveloc = lengthdir_x(veloc, _dir);
	vveloc = lengthdir_y(veloc, _dir);
	
	x += hveloc;
	y += vveloc;
}

function scr_inimigo_parado(){
	
}