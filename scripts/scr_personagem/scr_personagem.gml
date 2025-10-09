function scr_personagem_andando(){
	var _dir = keyboard_check(ord("D"))
		var _esq = keyboard_check(ord("A"))
		var _baixo = keyboard_check(ord("S"))
		var _cima = keyboard_check(ord("W"))

		velh = (_dir - _esq) * vel
		velv = (_baixo - _cima) * vel
	
	if(place_meeting(x + velh, y, Obj_barreira))
	{
		velh =0;
	}
	if(place_meeting(x , y + velv, Obj_barreira))
	{
		velv =0;
	}
		x += velh;
		y += velv;
	if keyboard_check_pressed(ord("E")){
		alarm[0] = 20;
		dash_dir = point_direction(x, y, mouse_x, mouse_y);
		estado = scr_personagem_dash;
	}
}
function scr_personagem_dash()
{
	velh = lengthdir_x(dash_veloc, dash_dir);
	velv = lengthdir_y(dash_veloc, dash_dir);
	x += velh;
	y += velv;
}