shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(uniformr,red[0],red[1],red[2],1.0);
shader_set_uniform_f(uniformg,green[0],green[1],green[2],1.0);
shader_set_uniform_f(uniformb,blue[0],blue[1],blue[2],1.0);
if(jumps!=maxjumps)
{
	
	draw_sprite_ext(JumpsSpr,jumps,x-xvel-(40*image_xscale),y-yvel,-1,1,0,c_white,1)
}

if(room=Title){shader_reset();exit}

i = 0
repeat men
{
	draw_sprite(lifespr,0,32+i,598)
	i+=32
}
shader_reset()




draw_set_font(NORMALFONT)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_white)
if(global.pointhop>0){draw_set_color(make_color_rgb(red[0]*255,red[1]*255,red[2]*255))}
draw_text(32,688-(2*global.pointhop),global.points)

draw_set_halign(fa_right)
draw_set_color(c_white)
if(global.starhop>0){draw_set_color(make_color_rgb(green[0]*255,green[1]*255,green[2]*255))}
draw_text(1280-32,688-(2*global.starhop),string(global.stars)+"/32")

draw_set_font(SMALLFONT)
draw_set_color(c_ltgray)
draw_set_halign(fa_left)
draw_text(32,648,"POINTS:")
draw_set_halign(fa_right)
draw_text(1280-32,648,"STARS:")