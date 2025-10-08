if(place_meeting(x + velh, y, Obj_barreira))//quando o player encostar faz a velocidade horizontal ficar == 0
{
	velh =0;
}
if(place_meeting(x , y + velv, Obj_barreira))//mesma coisa so que com a velocidade vertical
{
	velv =0;
}