if(floor(timer/4)mod 2 = 0)
{
	shader_set(rgb_replacement)
	shader_set_uniform_f(upixelW,texelW);
	shader_set_uniform_f(upixelH,texelH);
	shader_set_uniform_f(uniformr,global.enemycolor2[0]/2,global.enemycolor2[1]/2,global.enemycolor2[2]/2,1.0);
	shader_set_uniform_f(uniformg,global.enemycolor[0]/2,global.enemycolor[1]/2,global.enemycolor[2]/2,1.0);
	shader_set_uniform_f(uniformb,global.red[0]/2,global.red[1]/2,global.red[2]/2,1.0);
	draw_self()
}