shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
var brighten = -.3
shader_set_uniform_f(uniformr,clamp(global.enemycolor[0]+brighten,0,1),clamp(global.enemycolor[1]+brighten,0,1),clamp(global.enemycolor[2]+brighten,0,1),1.0);
shader_set_uniform_f(uniformg,global.enemycolor[0],global.enemycolor[1],global.enemycolor[2],1.0);
shader_set_uniform_f(uniformb,global.red[0],global.red[1],global.red[2],1.0);

draw_self()
var anotherme=1
if(x>room_width/2)
{
	anotherme=-1
}
draw_sprite_ext(sprite_index,image_index,x+(anotherme*room_width),y,image_xscale,image_yscale,image_angle,image_blend,1)
shader_reset()