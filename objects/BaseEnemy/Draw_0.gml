shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
if white
{
	switch floor(timer/9) mod 3
	{
		case 0:
			shader_set_uniform_f(uniformr,global.enemycolor2[0],global.enemycolor2[1],global.enemycolor2[2],1.0);
			shader_set_uniform_f(uniformg,global.enemycolor[0],global.enemycolor[1],global.enemycolor[2],1.0);
			shader_set_uniform_f(uniformb,global.red[0],global.red[1],global.red[2],1.0);
		break;
		case 1:
			shader_set_uniform_f(uniformb,global.enemycolor2[0],global.enemycolor2[1],global.enemycolor2[2],1.0);
			shader_set_uniform_f(uniformr,global.enemycolor[0],global.enemycolor[1],global.enemycolor[2],1.0);
			shader_set_uniform_f(uniformg,global.red[0],global.red[1],global.red[2],1.0);
		break;
		case 2:
			shader_set_uniform_f(uniformg,global.enemycolor2[0],global.enemycolor2[1],global.enemycolor2[2],1.0);
			shader_set_uniform_f(uniformb,global.enemycolor[0],global.enemycolor[1],global.enemycolor[2],1.0);
			shader_set_uniform_f(uniformr,global.red[0],global.red[1],global.red[2],1.0);
		break;
	}
}
else
{
	shader_set_uniform_f(uniformr,global.enemycolor2[0],global.enemycolor2[1],global.enemycolor2[2],1.0);
	shader_set_uniform_f(uniformg,global.enemycolor[0],global.enemycolor[1],global.enemycolor[2],1.0);
	shader_set_uniform_f(uniformb,global.red[0],global.red[1],global.red[2],1.0);
}

var tempspr = sprite_index

if global.desert>0 and global.desert<70 and (floor(global.desert/8)mod 2 = 1)
{
	sprite_index=object_get_sprite(object_index)
}

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

sprite_index=tempspr