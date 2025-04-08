if(timer<60)or floor(timer/2) mod 2 = 0
{
	draw_set_font(SMALLFONT)
	draw_set_color(c_ltgray)
	if(value="1UP")
	{
		draw_set_font(NORMALFONT)
		draw_set_color(make_color_hsv((timer*4) mod 360,255,255))
	}
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x,y,value)
}