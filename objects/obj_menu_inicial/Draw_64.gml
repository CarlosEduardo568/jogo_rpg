var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);



draw_set_font(fon_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var tam_menu = array_length(Menu_iniciar);
for(var i = 0; i < tam_menu; i++)
{
	var _wgui = display_get_gui_width();
	var _hgui = display_get_gui_height();
	
	var _hstr = string_height("I");
	var _wstr = string_width(Menu_iniciar[i]);
	
	var x1 = _wgui / 2 - _wstr / 2;
	var y1 =  _hgui / 2 - _hstr / 2 + _hstr * i
	
	
	var x2 = _wgui / 2 + _wstr / 2;
	var y2 =  _hgui / 2 + _hstr / 2 + _hstr * i
	
	if(point_in_rectangle(_mx,_my,x1,y1,x2,y2))
	{
		esc = 1.4
		
		if(mouse_check_button_pressed(mb_left))
		{
			switch Menu_iniciar[i]
			{
				case Menu_iniciar[0]:
					room_goto(r_jogo)
					break;
			}
		}
		if(mouse_check_button_pressed(mb_left))
		{
			switch Menu_iniciar[i]
			{
				case Menu_iniciar[2]:
					game_end();
					break;
			}
		}
	}
	else
	{
		esc = 1;
	}
	
	draw_text_transformed(_wgui / 2, _hgui / 2 + _hstr * i, Menu_iniciar[i], esc, esc,0);
}

draw_set_font(-1);
draw_set_valign(-1);
draw_set_halign(-1);