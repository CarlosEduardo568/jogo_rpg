// movimentação
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
	
//dash 
var bot_e =  keyboard_check(ord("E"))

if (pode_dash)
{
	if (_dir and bot_e)
	{
		x += 10
	}

	if (_esq and bot_e)
	{
		x -= 10
	}

	if (_cima and  bot_e)
	{
		y -= 10
	}

	if (_baixo and bot_e)
	{
		y += 10
	}

}