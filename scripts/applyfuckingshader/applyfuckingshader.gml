// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function applyfuckingshader(){
	var shader = rgb_replacement
	//sets up uniforms
	var tempupixelH = shader_get_uniform(shader, "pixelH");
	var tempupixelW = shader_get_uniform(shader, "pixelW");
	var tempuniformr = shader_get_uniform(shader, "redcolor")
	var tempuniformg = shader_get_uniform(shader, "greencolor")
	var tempuniformb = shader_get_uniform(shader, "bluecolor")
	//passes uniforms
	shader_set(rgb_replacement)
	shader_set_uniform_f(tempupixelW,1024);
	shader_set_uniform_f(tempupixelH,576);
	shader_set_uniform_f(tempuniformr,global.red[0],global.red[1],global.red[2],1.0);
	shader_set_uniform_f(tempuniformg,global.green[0],global.green[1],global.green[2],1.0);
	shader_set_uniform_f(tempuniformb,global.blue[0],global.blue[1],global.blue[2],1.0);
}

function applyfuckingshaderend()
{
	shader_reset()
}