if(floor(timer/4)mod 2 = 0)
{
	shader_set(rgb_replacement)
	shader_set_uniform_f(upixelW,texelW);
	shader_set_uniform_f(upixelH,texelH);
	var brighten = -.3
	shader_set_uniform_f(uniformr,clamp(global.enemycolor[0]+brighten,0,1)/2,clamp(global.enemycolor[1]+brighten,0,1)/2,clamp(global.enemycolor[2]+brighten,0,1)/2,1.0);
	shader_set_uniform_f(uniformg,global.enemycolor[0]/2,global.enemycolor[1]/2,global.enemycolor[2]/2,1.0);
	shader_set_uniform_f(uniformb,global.red[0]/2,global.red[1]/2,global.red[2]/2,1.0);
	draw_self()
}