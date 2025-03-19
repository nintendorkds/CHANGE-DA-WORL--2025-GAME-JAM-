if(jumps!=maxjumps)
{
	shader_set(rgb_replacement)
	shader_set_uniform_f(upixelW,texelW);
	shader_set_uniform_f(upixelH,texelH);
	shader_set_uniform_f(uniformr,red[0],red[1],red[2],1.0);
	shader_set_uniform_f(uniformg,green[0],green[1],green[2],1.0);
	shader_set_uniform_f(uniformb,blue[0],blue[1],blue[2],1.0);
	draw_sprite_ext(JumpsSpr,jumps,x-xvel,y-yvel,image_xscale,1,0,c_white,1)
	shader_reset()
}
draw_set_font(NORMALFONT)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_text(32,688,points)

draw_set_halign(fa_right)
draw_text(1280-32,688,string(global.stars)+"/32")

draw_set_font(SMALLFONT)
draw_set_color(c_ltgray)
draw_set_halign(fa_left)
var tempstr = ""
if(lavacombo>1){tempstr=string(lavacombo)+"X"}
draw_text(32,648,"POINTS:"+tempstr)
draw_set_halign(fa_right)
draw_text(1280-32,648,"STARS:")
