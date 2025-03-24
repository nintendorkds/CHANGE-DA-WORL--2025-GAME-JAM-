shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(uniformr,global.red[0],global.red[1],global.red[2],1.0);
shader_set_uniform_f(uniformg,global.green[0],global.green[1],global.green[2],1.0);
shader_set_uniform_f(uniformb,global.blue[0],global.blue[1],global.blue[2],1.0);
draw_self()
shader_reset()

if(place_meeting(x,y,Player))
{
	draw_set_font(SMALLFONT)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	var tempstring = string(hiscore)
	if(hiscore=0){tempstring="-"}
	draw_text(x,y-128,"SCORE: "+tempstring)
	tempstring = "D"
	var tempcolor = c_red
	switch grade_get(hiscore)
	{
		case 0:
			tempstring = "D"
			tempcolor = c_red
		break;
		case 1:
			tempstring = "C"
			tempcolor = c_orange
		break;
		case 2:
			tempstring = "B"
			tempcolor = c_yellow
		break;
		case 3:
			tempstring = "A"
			tempcolor = c_green
		break;
		case 4:
			tempstring = "S"
			tempcolor = c_aqua
		break;
	}
	if hiscore = 0 {tempstring="-";tempcolor=c_gray}
	draw_set_color(tempcolor)
	draw_text(x,y-160,"RANK: "+tempstring)
	draw_set_color(c_white)
	draw_text(x,y-192,room_get_name(myroom))
}