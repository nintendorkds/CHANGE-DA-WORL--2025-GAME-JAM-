if(timer<60)or floor(timer/2) mod 2 = 0
{
	draw_set_font(NORMALFONT)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x,y,value)
}