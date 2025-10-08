instance_destroy(other) //destroi o obj_inimigo
global.vida --;//subitrai 1 na varialvel vida quando o player encosta

if global.vida == 0//se a vida for == 0 ele destroi o player
{
	instance_destroy(Obj_personagem);
}