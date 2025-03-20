if(floor(timer/4)mod 2 = 0)
{
	shader_set(rgb_replacement)
	shader_set_uniform_f(upixelW,texelW);
	shader_set_uniform_f(upixelH,texelH);
	if(white)
	{
		switch floor(timer/10) mod 3
		{
			case 0:
				shader_set_uniform_f(uniformr,global.enemycolor2[0]/2,global.enemycolor2[1]/2,global.enemycolor2[2]/2,1.0);
				shader_set_uniform_f(uniformg,global.enemycolor[0]/2,global.enemycolor[1]/2,global.enemycolor[2]/2,1.0);
				shader_set_uniform_f(uniformb,global.red[0]/2,global.red[1]/2,global.red[2]/2,1.0);
			break;
			case 1:
				shader_set_uniform_f(uniformb,global.enemycolor2[0]/2,global.enemycolor2[1]/2,global.enemycolor2[2]/2,1.0);
				shader_set_uniform_f(uniformr,global.enemycolor[0]/2,global.enemycolor[1]/2,global.enemycolor[2]/2,1.0);
				shader_set_uniform_f(uniformg,global.red[0]/2,global.red[1]/2,global.red[2]/2,1.0);
			break;
			case 2:
				shader_set_uniform_f(uniformg,global.enemycolor2[0]/2,global.enemycolor2[1]/2,global.enemycolor2[2]/2,1.0);
				shader_set_uniform_f(uniformb,global.enemycolor[0]/2,global.enemycolor[1]/2,global.enemycolor[2]/2,1.0);
				shader_set_uniform_f(uniformr,global.red[0]/2,global.red[1]/2,global.red[2]/2,1.0);
			break;
		}
	}
	else
	{
		shader_set_uniform_f(uniformr,global.enemycolor2[0]/2,global.enemycolor2[1]/2,global.enemycolor2[2]/2,1.0);
		shader_set_uniform_f(uniformg,global.enemycolor[0]/2,global.enemycolor[1]/2,global.enemycolor[2]/2,1.0);
		shader_set_uniform_f(uniformb,global.red[0]/2,global.red[1]/2,global.red[2]/2,1.0);
	}
	draw_self()
}