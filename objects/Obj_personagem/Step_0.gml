// movimentação
	var _dir = keyboard_check(ord("D"))
	var _esq = keyboard_check(ord("A"))
	var _baixo = keyboard_check(ord("S"))
	var _cima = keyboard_check(ord("W"))

	velh = (_dir - _esq) * vel
	velv = (_baixo - _cima) * vel
	
	x += velh;
	y += velv;
	
//dash 
var bot_e =  keyboard_check(ord("E"))
alarm[1] = 60
if alarm[1] == 0
{
	alarm[0] = 60
		pode_dash = false
}

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