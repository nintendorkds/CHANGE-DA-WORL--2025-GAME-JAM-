shader_set(rgb_replacement)
shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(uniformr,red[0],red[1],red[2],1.0);
shader_set_uniform_f(uniformg,green[0],green[1],green[2],1.0);
shader_set_uniform_f(uniformb,blue[0],blue[1],blue[2],1.0);
draw_self()
shader_reset()