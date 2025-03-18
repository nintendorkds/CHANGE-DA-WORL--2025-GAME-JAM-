shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(uniformr,global.enemycolor2[0],global.enemycolor2[1],global.enemycolor2[2],1.0);
shader_set_uniform_f(uniformg,global.enemycolor[0],global.enemycolor[1],global.enemycolor[2],1.0);
shader_set_uniform_f(uniformb,global.red[0],global.red[1],global.red[2],1.0);

draw_self()
var anotherme=1
if(x>room_width/2)
{
	anotherme=-1
}
draw_sprite_ext(sprite_index,image_index,x+(anotherme*room_width),y,image_xscale,image_yscale,image_angle,image_blend,1)
anotherme=1
if(y>room_height/2)
{
	anotherme=-1
}
draw_sprite_ext(sprite_index,image_index,x,y+(anotherme*room_height),image_xscale,image_yscale,image_angle,image_blend,1)
shader_reset()