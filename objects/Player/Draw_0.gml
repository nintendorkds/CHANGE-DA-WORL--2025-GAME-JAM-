shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(uniformr,red[0],red[1],red[2],1.0);
shader_set_uniform_f(uniformg,green[0],green[1],green[2],1.0);
shader_set_uniform_f(uniformb,blue[0],blue[1],blue[2],1.0);
if(flash>0)
{
	flash-=1
	shader_set_uniform_f(uniformr,green[0],green[1],green[2],1.0);
	shader_set_uniform_f(uniformb,green[0],green[1],green[2],1.0);
}
else
{
	if(charge>chargethresh)
	{
		switch floor(charge/5) mod 3
		{
			case 0:
				shader_set_uniform_f(uniformr,red[0],red[1],red[2],1.0);
				shader_set_uniform_f(uniformg,green[0],green[1],green[2],1.0);
				shader_set_uniform_f(uniformb,blue[0],blue[1],blue[2],1.0);
			break;
			case 1:
				shader_set_uniform_f(uniformb,red[0],red[1],red[2],1.0);
				shader_set_uniform_f(uniformr,green[0],green[1],green[2],1.0);
				shader_set_uniform_f(uniformg,blue[0],blue[1],blue[2],1.0);
			break;
			case 2:
				shader_set_uniform_f(uniformg,red[0],red[1],red[2],1.0);
				shader_set_uniform_f(uniformb,green[0],green[1],green[2],1.0);
				shader_set_uniform_f(uniformr,blue[0],blue[1],blue[2],1.0);
			break;
		}
	}
}
if(!iframes)or(floor(iframes/4) mod 2 = 0)
{
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
}