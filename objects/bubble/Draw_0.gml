shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(uniformr,global.red[0]/2,global.red[1]/2,global.red[2]/2,1.0);
shader_set_uniform_f(uniformg,global.green[0]/2,global.green[1]/2,global.green[2]/2,1.0);
shader_set_uniform_f(uniformb,global.blue[0]/2,global.blue[1]/2,global.blue[2]/2,1.0);
draw_self()
shader_reset()