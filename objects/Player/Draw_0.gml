shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(uniformr,red[0],red[1],red[2],1.0);
shader_set_uniform_f(uniformg,green[0],green[1],green[2],1.0);
shader_set_uniform_f(uniformb,blue[0],blue[1],blue[2],1.0);
draw_self()
var anotherme=1
if(x>room_width/2)
{
	anotherme=-1
}
draw_sprite_ext(sprite_index,image_index,x+(anotherme*room_width),y,image_xscale,image_yscale,image_angle,image_blend,1)
shader_reset()