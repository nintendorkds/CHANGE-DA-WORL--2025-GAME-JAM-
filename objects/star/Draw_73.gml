if deadframes > 60
{
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(BIGFONT)
	draw_set_color(c_red)	
	draw_text((room_width/2)+behinddeath[0],(room_height/2)+behinddeath[1],"YOU DIED I THINK")
	draw_set_color(c_maroon)	
	draw_text((room_width/2)-behinddeath[0],(room_height/2)-behinddeath[1],"YOU DIED I THINK")
	draw_set_color(c_white)
	draw_text((room_width/2)-(behinddeath[1]/4),(room_height/2)+(behinddeath[0]/4),"YOU DIED I THINK")
}